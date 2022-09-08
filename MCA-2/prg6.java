class Q{
    int n;
    boolean ValueSet=false;
    synchronized int get()
    {
        while(!ValueSet)
         try{
                wait();
            }catch(InterruptedException e){
                System.out.println("InteruptedException caught");
            }
            System.out.println("Got: "+n);
            ValueSet=false;
            notify();
            return n;
        }
        synchronized void put(int n)
        {
            while(ValueSet)
             try{
                    wait();
                }catch(InterruptedException e)
                {
                    System.out.println("InteruptedException caught");
                }
                this.n=n;
                ValueSet=true;
                System.out.println("put: "+n);
                notify();
            }

        }
        class Producer implements Runnable{
            Q q;
            Producer(Q q){
                this.q=q;
                new Thread(this,"producer").start();
            }
            public void run(){
                int i=0;
                while(true){
                    q.put(i++);
                }
            }
        }
        class Consumer implements Runnable{
            Q q;
            Consumer(Q q){
                this.q=q;
                new Thread(this,"Consumer").start();
            }
            public void run(){
                while(true){
                    q.get();
                }
            }
        }

    



public class prg6 {
    public static void main(String[] args) {
        Q q=new Q();
        new Producer(q);
        new Consumer(q);
        System.out.println("Press Control-C to stop");
    }
    
}
