#include "headerbyte.hh"
//I've been warned that this is impossible to do accurately, so... we shall see. 
//Wanted to do C arrays, but breaks aftter 2^22
const int BUFFER_POWER_MIN = 10; //1024;
const int BUFFER_POWER_MAX = 26; //67108864;
const int TESTING_SIZE =  1000; //Should take around 4k bytes from cache, which should be fine?

void init_buffer(int bufferSize, default_random_engine& generator, vector<char>& buffer){
    //init with random characters
    generator();
    uniform_int_distribution<> distribution(33, 126);
    for (int i = 0; i < bufferSize; i++)
    {
        char value = distribution(generator); //should give character of ascii value fron generator
        buffer.push_back(value); //Should keep things contiguous?
    }
    //The buffer is being changed here
}

int main(){
    //Code should iterate through all the sizes

    //Init an array of chars as a char is a perfect byte in this context

    //default_random_engine generator; //Assuming we don't seed this thing
    cout <<"# Bytes:" <<  "      " << "Time of one byte: \n";
    //For first 100 times at a given buffer size, pull a random index so its forced to use a random size. not timed.
    //THEN we start timing, try accessing another random point (determined before start), time it, print that. 
    vector<char> buffer;
    default_random_engine generator; //Assuming we don't seed this thing
    for (int i = BUFFER_POWER_MIN; i <= BUFFER_POWER_MAX; i++)
    {   
        const int bufferSize = pow(2.0, double(i));
       
        init_buffer(bufferSize, generator, buffer);
        uniform_int_distribution<> byteDistribution(0, bufferSize-1);
        //then, access random iterations for enough time that the computer puts the buffer in L1 category
        int sumint = 0;
        int randomByte = 0;
        volatile char uselessvariable = 'a';
        //Trying to put things into L1 here.
        for (int32_t j = 0; j < TESTING_SIZE; j++) //Caches work in sections of 64 bytes, so should access at least 1 out of every 64 bytes in fector
        {
            randomByte = byteDistribution(generator);
            //Read a byte
            uselessvariable = buffer[randomByte]; //Time how long it takes to get buffer access here?
            sumint += static_cast<int>(uselessvariable); 
            //volatile doesn't nessicarilly keep the thing
            //How to read a byte and assure it's not in L1? This is an L2 issue needed to be figured out. 
            // try to infer size of cache. 
            //-O3 compilier would get rid of variable we don't use, so we need to use it in a way that doesn't affect timing
            //Try using volatile for a variable so compiler wont get rid of it... but it can't be put in registers.
        }
        double meantime = 0.0; 

        generator();        
        int *randomBytes = new int[TESTING_SIZE];
        //make a loop to make randomBytes have [TESTING_SIZE values] of TESTING_SIZE random ints to access
        for (int w = 0; w < TESTING_SIZE; w++) //This loop may be enough for the prefetcher to preload from the timing section.
        {
            randomBytes[w] = byteDistribution(generator);
        }
        
        chrono::time_point start = chrono::high_resolution_clock::now(); //start timing 
        
        for (int32_t k = 0; k < TESTING_SIZE; k++)
        {
            
            //volatile char uselessvariable2 = buffer.at(randomBytes[k]);
            uselessvariable  = buffer[randomBytes[k]]; //if we generate the index randomly right before/in the timing, then the prefetcher can't get it... but it takes absurdly long.
            //sumint += static_cast<int>(uselessvariable); //Slight worry this is timing not just accessing the memory from buffer, but also static_casting it...
        }
        
        chrono::time_point finish = chrono::high_resolution_clock::now(); //end timing
        meantime = chrono::duration_cast<chrono::nanoseconds>(finish - start).count(); 
        meantime /= TESTING_SIZE;
        cout << bufferSize << "      " << meantime << '\n';
        //cout << bufferSize << "      " << meantime << "      " << sumint  <<'\n';//printing out the specific sums of each so the sum
        buffer.clear();
        delete[] randomBytes; //gotta free up data
    }
    //Add a control for outliers by taking the mean when graphing by running 10 times. 
    //May need to explain myself for the random buffer (not big enough, is constant enough over the testings)
    return(0);
} 