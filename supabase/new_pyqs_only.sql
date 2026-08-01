INSERT INTO questions (id, subject_id, gate_year, marks, question_type, question_stem, options_json, correct_key, detailed_solution) VALUES
  ('6d6ef57a-58bc-41b4-a182-1df6d33a5534', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2009, 1, 'MCQ', 'In the following process state transition diagram for a uni -processor system,
assume that there are always some processes in the ready state: Now consider
the following statements:
I. If a process makes a transition D, it would result in another process making
transition Aimmediately.
II. A process P2 in blocked state can make transition E while another process
P1 is in runningstate.
III. The OS uses preemptive scheduling.
IV. The OS uses non-preemptive scheduling.
Which of the above statements are TRUE?', '{"A": "I and II", "B": "I and III", "C": "II and III", "D": "II and IV"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('530b2576-d400-45ff-8315-7fcf189e4802', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2010, 1, 'MCQ', 'Which of the following statements are true?
I. Shortest remaining time first scheduling may cause starvation
II. Pre-emptive scheduling may cause starvation
III. Round robin in better than FCFS in terms of response time', '{"A": "I only         (b) I and III only", "C": "II and III only        (d) I, II and III"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('57692d95-b3c9-4e6c-ba8f-07e0a2d0a1b8', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2011, 1, 'MCQ', 'A thread is usually defined  as a “light weight process” because an operating
system (OS) maintains smaller data structures for a thread than for a process.
In relation to this, which of the following is TRUE?
information', '{"A": "On per-thread basis, the OS maintains only CPU register state", "B": "The OS does not maintain a separate stack for each thread", "C": "On per-thread basis, the OS does not maintain virtual memory state", "D": "On per -thread basis, the OS maintains only scheduling and accounting"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('e9cf7fa9-d72a-4240-8ea0-d352f7511673', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2011, 2, 'MCQ', 'The time taken to switch betwee n user and kernel modes of execution be t1
while the time taken to switch between two processes be t2.Which of the
following is TRUE?', '{"A": "t1> t2", "B": "t1 = t2", "C": "t1< t2", "D": "nothing can be said about the relation between t1 and t2"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('dc4b8979-f2ae-4fd7-a520-15797a20590b', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2011, 2, 'MCQ', 'Consider the following table of arrival time and burst time for three processes
P0, P1 and P2.
Process    Arrival time    Burst Time
P0             0 ms            9 ms
P1             1 ms            4 ms
P2             2 ms            9 ms
The pre-emptive shortest job first scheduling algorithm is used. Scheduling is
carried out only at arrival or completion of processes. What is the average
waiting time for the three processes?', '{"A": "5.0 ms   (b) 4.33 ms   (c) 6.33  (d) 7.33"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('a37dfb1a-846f-4215-af8b-1036c5e9d2d9', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2012, 1, 'MCQ', 'A process executes the code
fork();
fork();
fork();
The total number of child processes created is', '{"A": "3    (b) 4    (c) 7   (d)8"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('d1eebe8a-a19b-4f76-bfc2-bb30b7332a35', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'Consider the 3 processes, P1, P2 and P3 shown in the table.
The completion order of the 3 processes under  the policies FCFS and RR2
(round robin scheduling with CPU quantum of 2 time units) are', '{"A": "FCFS: P1, P2, P3 RR2: P1, P2, P3", "B": "FCFS: P1, P3, P2 RR2: P1, P3, P2", "C": "FCFS: P1, P2, P3 RR2: P1, P3, P2", "D": "FCFS: P1, P3, P2 RR2: P1, P2, P3   [Marks:2][GATE:  2012]"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('181111e5-63ea-4753-a300-54c2f151ec70', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2013, 1, 'MCQ', 'A scheduling algorithm assigns priority proportional to the waiting time of a
process. Every process starts with priority zero (the lowest priority). The
scheduler re-evaluates the process priorities every T time units and decides the
next process to schedule. Which one of the following is TRUE if the processes
have no I/O operations and all arrive at time zero?', '{"A": "This algorithm is equivalent to the first-come-first-serve algorithm", "B": "This algorithm is equivalent to the round-robin algorithm.", "C": "This algorithm is equivalent to the shortest-job-first algorithm..", "D": "This algorithm is equivalent to the shortest-remaining-time-first algorithm"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('5c4f66fe-a8ad-4b17-9766-9614d56f3f7a', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2014, 1, 'MCQ', 'Which one of the following is FALSE?
blocked.
switching between kernel level threads.
[SET-1]', '{"A": "User level threads are not scheduled by the kernel.", "B": "When a user level thread is blocked, all other threads of its process are", "C": "Context switching between user level threads is faster than context", "D": "Kernel level threads cannot share the code segment."}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('a63258b8-82ac-427a-9891-ae641fe37ccb', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2014, 2, 'MCQ', 'Consider the following set of processes that need to be scheduled on a single
CPU. All the times are given in milliseconds.
Using the shortest remaining time first  scheduling algorithm, the average
process turnaround time (in msec) is _______________.
[SET-1]', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('7b266820-59d0-4c6b-9c45-e353ba975acd', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2014, 2, 'MCQ', 'Three processes A, B and C each execute a loop of 100 iterations. In each
iteration of the loop, a process performs a single computation that requires
tc CPU milliseconds and then initiates a single I/O operation that lasts for t io
milliseconds. It is assumed that the computer where the processes execute
has sufficient number of I/O devices and the OS o f the computer assigns
different I/O devices to each process. Also, the scheduling overhead of the
OS is negligible. The processes have the following characteristics:
Process id tc tio
A 100 ms 500 ms
B 350 ms 500 ms
C 200 ms 500 ms
The processes A, B,  and C are started at times 0, 5 and 10 milliseconds
respectively, in a pure time sharing system (round robin scheduling) that
uses a time slice of 50 milliseconds. The time in milliseconds at which process
C would complete its first I/O operation is _____ ______.
[SET-2]', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('908c97c5-20b5-467e-bd77-e6461d74de70', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2014, 2, 'MCQ', 'An operating system uses shortest remaining time first scheduling algorithm
for pre -emptive scheduling of processes. Consider the following set of
processes with their arrival times and CPU burst times (in milliseconds):
The
average waiting time (in milliseconds) of the processes is _________.
[SET-3]', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('8bc205bc-ec72-4121-8418-8d83ee41bbe4', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2015, 2, 'MCQ', 'Consider a uniprocessor system executing three tasks T1, T2 and T3, each
of which is composed of an infinite sequence of jobs (or instances) which
arrive periodically at intervals of 3, 7 and 20 milliseconds, respectively. The
priority of each task is the inverse of its period and the available tasks are
scheduled in order  of priority, with the highest priority task scheduled first.
Each instance of T1, T2 and T3 requires an execution time of 1, 2 and 4
milliseconds, respectively. Given that all tasks initially arrive at the beginning
of the 1st milliseconds and task preemp tions are allowed, the first instance
of T3 completes its execution at the end of ______________ milliseconds.
[SET-1]', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('5208e107-9ef4-473f-af5d-e82ad0ebcf30', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'For the processes listed in the following table, which of the following
scheduling schemes will give the lowest average turnaround time?
3]', '{"A": "First Come First Serve", "B": "Non-preemptive Shortest Job First", "C": "Shortest Remaining Time", "D": "Round Robin with Quantum value two     [Marks: 2][GATE:  2015][SET-"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('3f50566d-8beb-425e-9f40-59b9af699249', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2015, 1, 'MCQ', 'The maximum number of processes that can be in Ready state for a computer
system with n CPUs is
[SET-3].', '{"A": "n    (b) n2    (c) 2n         (d) Independent of n"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('2332a48d-0208-4ca6-af89-0c6a695ef5cb', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2016, 1, 'MCQ', 'Consider an arbitrary set of CPU -bound processes with unequal CPU burst
lengths submitted at the same time to a computer system. Which one of the
following process scheduling algorithms would minimize the average waiting
time in the ready queue?
[SET-1]', '{"A": "Shortest remaining time first", "B": "Round-robin with time quantum less than the shortest CPU burst", "C": "Uniform random", "D": "Highest priority first with priority proportional to CPU burst length"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('97acca61-61ac-45b8-8861-8b4907ecdd72', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2016, 2, 'MCQ', 'Consider the following processes, with the arrival time and the length of the
CPU burst given in milliseconds. The scheduling algorithm used is
preemptive shortest rema ining-time first.
The average turnaround time of these processes is ________________________
milliseconds.
[SET-2]', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('3b5e1e52-2dab-447d-bb24-331a1acbb3af', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2017, 1, 'MCQ', 'Threads of a process share
[SET-1]', '{"A": "Global variables but not heap.", "B": "Heap but not global variables.", "C": "Neither global variables nor heap.", "D": "Both heap and global variables."}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('57e5e41f-2a3d-48d1-9a0e-45fb18cac225', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2017, 1, 'MCQ', 'Consider the following CPU processes with arrival times (in milliseconds) and
length of CPU bursts (in milliseconds) as given below:
If the pre-emptive shortest remaining time first scheduling algorithm is used
to schedule the processes, then the average waiting time across all processes
is __________ milliseconds.
[SET-1]', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('4dea3f13-3634-4262-adb0-200b4ffc35b2', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2017, 1, 'MCQ', 'Which of the following is/are shared by all th e threads in a process?
I. Program Counter   II.  Stack
III. Address space   IV. Registers
[SET-2]', '{"A": "I and II only   (b) III only", "C": "IV only   (d) III and IV only"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('03e53f54-db48-4916-b845-a26ef315ee20', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2017, 2, 'MCQ', 'Consider the set of processes with arrival time (in milliseconds), CPU burst
time (in milliseconds), and priority (0 is the highest priority) shown below.
None of the processes have I/O burst time.
The average waiting time (in milliseconds) of all the processes using preemptive
priority scheduling algorithm is __________.
[SET-2]', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('53ea0c6f-d2f8-4c9e-9f72-510d9dda7b2a', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2019, 1, 'MCQ', 'The following C program is executed on a Unix/Linux system
#include <unistd.h>
int main ()
{
int i;
for(i = 0; i < 10; i++)
if (i%2 == 0) fork ();
return 0;
}
The total number of child processes created is _________.', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('6757d383-3dfd-4eca-9694-46195f82f5be', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2019, 1, 'MCQ', 'The following C program is executed on a Unix/Linux system
#include <unistd.h>
int main ()
{
int i;
for(i = 0; i < 10; i++)
if (i%2 == 0) fork ();
return 0;
}
The total number of child processes created is _________.', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('492c399c-e30e-4a46-b05f-e351cbc5cb49', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'Consider the following statements about process state transitions for a system
using preemptive scheduling.
I. A running process can move to ready state.
II. A ready process can move to running state.
III. A blocked process can move to running state.
IV. A blocked process can move to ready state.
Which of the above statements are TRUE?', '{"A": "II and III only     (b) I, II and III only", "C": "I, II, III and IV     (d) I, II and IV only"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('d7d22903-f2f7-49b3-89a4-019d4f69eb26', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'RR, assume that the processes are scheduled in the order P1, P2, P3, P4.
If the time quantum for RR is 4 ms, then the absolute value of the difference
between the average turnaround times (in ms) of SJF and RR (round off to 2
decimal places) is _________.', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('2781b502-2f5a-4798-92bc-d1d9389b0523', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'Consider a system with 4 types of resources R1 (3 units), R2 (2 units), R3 (3
units), R4 (2 units). A non-preemptive resource allocation policy is used. At any
given instance, a request is not entertained if it cannot be completely satisfied.
Three processes P1, P2, P3 request the sources as follows if executed
independently.
Process P1:
t=0: requests 2 units of R2
t=1: requests 1 unit of R3
t=3: requests 2 units of R1
t=5: releases 1 unit of R2
and 1 unit of R1.
t=7: releases 1 unit of R3
t=8: requests 2 units of R4
t=10: Finishes
Process P2:
t=0: requests 2 units of R3
t=2: requests 1 unit of R4
t=4: requests 1 unit of R1
t=6: releases 1 unit of R3
t=8: Finishes
Process P3:
t=0: requests 1 unit of R4
t=2: requests 2 units of R1
t=5: releases 2 units of R1
t=7: requests 1 unit of R2
t=8: requests 1 unit of R3
t=9: Finishes', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('264d3321-148b-4162-a350-d0d7cfcb6a8e', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2009, 1, 'MCQ', 'The enter_CS () and leave_CS () functions to implement critical section of a
process are realized using test-and-set instruction as follows:
void enter_CS(X)
{
while (test-and-set(X));
}
void leave_CS(X)
{
X=0;
}
In the above solution, X is a memory location associated with the CS and is
initialized to 0. Now consider the following statements:
I. The above solution to CS problem is deadlock-free
II. The solution is starvation free.
III. The processes enter CS in FIFO
IV. More than one process can enter CS at the same time.
Which of the above statements is TRUE?', '{"A": "I only", "B": "I and II", "C": "II and III", "D": "IV only"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('c2fb8317-4223-4464-be82-96f600c2ff39', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2010, 1, 'MCQ', 'Consider the methods used by processes P1 and P2 for accessing their critical
sections whenever needed, as given below. The initial values of shared Boolean
variables S1 and S2 are randomly assigned.
Method used by P1 Method used by P2
While (S1 == S2);
Critical Section
S1= S2;
While (S1 != S2);
Critical Section
S2 = not (S1)
While one of the following statements describes properties achieved?', '{"A": "Mutual exclusion but not progress", "B": "Progress but not mutual exclusion", "C": "Neither mutual exclusion nor progress", "D": "Both mutual exclusion and progress"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('b78d7038-a517-46b2-8ed6-bfbbc02be4c3', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 2, 'MCQ', 'Each of a set of n processes executes the following code using two semaphores
a and b initialized to 1 and 0, respectively. Assume that count is a shared
variable initialized to 0 and not used in CODE SECTION P.
What does the code achieve?
has finished CODE SECTION P
.', '{"A": "It ensures that all processes execute CODE SECTION P mutually exclusively", "B": "It ensures that at most two processes are in CODE SECTION Q at any time.", "C": "It ensures that no process executes CODE SECTION Q before every process", "D": "It ensures that at most n-1 processes are in CODE SECTION P at any time."}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('d289c4dc-7cc4-40f0-89cb-100a4fdd3f99', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2010, 2, 'MCQ', 'The following program consists of 3 concurrent processes and 3 binary
semaphores. The semaphores are initialized as S0 = 1, S1 = 0, S2 = 0:
Process P0  Process P1 Process P2
While (true) {
wait (S0);
print ‘0’
release (S1);
release (S2);
}
wait (S1);
release (S0);
wait (S2);
release (S0);
How many times will process P0 print ‘0’?', '{"A": "At least twice", "B": "Exactly twice", "C": "Exactly thrice", "D": "Exactly once"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('8f4bf41e-4291-42c0-9b49-f909ae7a65cb', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2012, 2, 'MCQ', 'Fetch_And_Add(X,i) is an atomic Read -Modify-Write instruction that reads the
value of memory location X, increments it by the value i, and returns the old
value of X. It is used in the pseudocode shown below to implement a busy -wait
lock. L is an unsigned integer shared variable initialized to 0. The value of 0
corresponds to lock being available, while any non-zero value corresponds to the
lock being not available.
AcquireLock(L){
while (Fetch_And_Add(L,1)){
L = 1;
}
}
ReleaseLock(L){
L = 0;
}
This implementation', '{"A": "fails as L can overflow", "B": "fails as L can take on a non-zero value when the lock is actually available", "C": "works correctly but may starve some processes", "D": "works correctly without starvation"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('0661a671-2766-4e06-94fc-6ee58b9fdb23', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'Three concurrent processes X, Y, and Z execute three different code segments
that access and update certain shared variables. Process X executes the P
operation (i.e., wait) on semaphores a, b and c; process Y executes the P operation
on semaphores b, c and d; process Z executes the P operation on semaphores c,
d, and a before entering the respective code segments. After completing the
execution of its code segment, each process invokes the V operation (i.e., signal)
on its three semaphores. All sem aphores are binary semaphores initialized to
one. Which one of the following represents a deadlock -free order of invoking the
P operations by the processes?', '{"A": "X: P(a)P(b)P(c) Y: P(b)P(c)P(d) Z: P(c)P(d)P(a)", "B": "X: P(b)P(a)P(c) Y: P(b)P(c)P(d) Z: P(a)P(c)P(d)", "C": "X: P(b)P(a)P(c) Y: P(c)P(b)P(d) Z: P(a)P(c)P(d)", "D": "X: P(a)P(b)P(c) Y: P(c)P(b)P(d) Z: P(c)P(d)P(a)  [Marks: 1][GATE: 2013]"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('79d8464c-0d81-40e0-9b7e-1ed564a7ad92', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2013, 2, 'MCQ', 'A certain computation generates two arrays a and b such that a[i]=f(i) for 0 ≤ i <
n and b[i]=g(a[i]) for 0 ≤ i < n. Suppose this computation is decomposed into two
concurrent processes X and Y such that X computes the array a and Y computes
the array b. The processes employ two binary semaphores R and S, both
initialized to zero. The array a is shared by the two processes. The structures of
the processes are shown below.
Process X: Process Y:
private i;
for (i=0; i< n; i++) {
a[i] = f(i);
ExitX(R, S);
}
private i;
for (i=0; i< n; i++) {
EntryY(R, S);
b[i] = g(a[i]);
}
Which one of the following represents the  CORRECT implementations of ExitX
and EntryY?
ExitX(R,S) {
P(R);
V(S);
}
EntryY(R,S) {
P(S);
V(R);
}
ExitX(R,S) {
V(R);
V(S);
}
EntryY(R,S) {
P(R);
P(S);
}
ExitX(R,S) {
P(S);
V(R);
}
EntryY(R,S) {
V(S);
P(R);
}
ExitX(R,S) {
V(R);
P(S);
}
EntryY(R,S) {
V(S);
P(R);
}', '{"A": "", "B": "", "C": "", "D": ""}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('89f391ed-fd6e-4970-bc18-dc6deb25fce2', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'A shared variable x, initialized to zero, is operated on by four concurrent
processes W, X, Y, Z as follows. Each of the processes W and X reads x from
memory, increments by one, stores it to memory, and then terminates. Each of
the processes Y and Z reads x from memory, decrements by two, stores it to
memory, and then terminates. Each process before reading x invokes the P
operation (i.e., wait) on a counting semaphore S and invokes the V operation (i.e.,
signal) on the semaphore S after storing x to memory. Semaphore S is initialized
to two. What is the maximum possible value of x after all processes complete
execution?', '{"A": "-2", "B": "-1", "C": "1", "D": "2         [Marks: 2][GATE:  2013]"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('5b134da0-f98f-432b-a4f8-c93b2b6d65a6', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2014, 2, 'MCQ', 'Consider the procedure below for the Producer -Consumer problem which uses
semaphores:
semaphore n = 0;
semaphore s = 1;
void producer()
{
while(true)
{
produce();
semWait(s);
addToBuffer();
semSignal(s);
semSignal(n);
}
}
void consumer()
{
while(true)
{
semWait(s);
semWait(n);
removeFromBuffer();
semSignal(s);
consume();
}
}
Which one of the following is TRUE?
never consume it.
buffer is empty.
operation.
[SET-2]
Which one of the following statements is TRUE if all three processes run
concurrently starting at time t=0?', '{"A": "All processes will finish without any deadlock", "B": "The consumer will remove no more than one item from the buffer.", "C": "Deadlock occurs if the consumer succeeds in acquiring semaphore s when the", "D": "The starting value for the semaphore n must be 1 and not 0 for deadlock-free"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('3f0122f0-3691-4602-85fd-5b185dd7f91e', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2015, 1, 'MCQ', 'The following two functions P1 and P2 that share a variable B with an initial
value of 2 execute concurrently.
The number of distinct values that B can possibly take after the execution is
[SET-1]', '{"A": "3", "B": "2", "C": "5", "D": "4"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('223e584c-b6b7-4f83-9ee8-f93bdf54350a', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2015, 1, 'MCQ', 'Two processes X and Y need to access a critical section. Consider the following
synchronization construct used by both the processes.
Here, varP and varQ are shared variables and both are initialized to false. Which
one of the following statements is true?
exclusion
deadlock
exclusion
[SET-3]', '{"A": "The proposed solution prevents deadlock but fails to guarantee mutual", "B": "The proposed solution guarantees mutual exclusion but fails to prevent", "C": "The proposed solution guara ntees mutual exclusion and prevents deadlock", "D": "The proposed solution fails to prevent deadlock and fails to guarantee mutual"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('05b88b05-0490-443d-bfcf-0a991ed192b1', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2016, 2, 'MCQ', 'Consider the following proposed solution for the critical section problem. There
are n processes: P 0…Pn−1. In the code, function pmax returns an integer not
smaller than any of its arguments. For all i, t[i] is initialized to zero.
Code for Pi:
do {
c[i] = 1; t[i] = pmax(t[0],...,t[n-1])+1; c[i]=0;
for every j ≠ i in {0,...,n-1} {
while (c[j]);
while (t[j] != 0 && t[j] <= t[i]);
}
Critical Section;
t[i] = 0;
Remainder Section;
} while (true);
Which one of the following is TRUE about the above solut ion?
[SET-1]', '{"A": "At most one process can be in the critical section at any time", "B": "The bounded wait condition is satisfied", "C": "The progress condition is satisfied", "D": "It cannot cause a deadlock"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('3263eecf-a285-4899-9ca9-44fa147a2bc6', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2016, 2, 'MCQ', 'Consider the following two -process synchronization solution.
Process 0 Process 1
Entry: loop while (turn == 1);
(critical section)
Exit: turn = 1;
Entry: loop while (turn == 0);
(critical section)
Exit: turn = 0;
The shared variable turn is initialized to zero. Which one of the following is
TRUE?
[SET-2]', '{"A": "This is a correct two -process synchronization solution.", "B": "This solution violates mutual exclusion requirement.", "C": "This solution violates progress requirement.", "D": "This solution violates bounded wait requirement."}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('53910ab9-2a03-46b2-bbb4-548db65c89fb', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2016, 2, 'MCQ', 'Consider a non-negative counting semaphore S. The operation P(S) decrements
S, and V(S) increments S. During an execution, 20 P(S) operations and 12 V(S)
operations are issued in some order. The largest initial value of S for which at
least one P(S) operation will remain Blocked is ___________
[SET-2]', '{"B": "Only P1 and P2 will be in deadlock."}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('7dac86fb-f991-477a-b500-48ad01f76a75', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2018, 2, 'MCQ', 'Consider the following solution to the producer -consumer synchronization
problem. The shared buffer size is N. Three semaphores  empty,
full and mutex are defined with respective initial  values of 0, N and 1.
Semaphore empty denotes the number of available slots in the buffer, for the
consumer to read from. Semaphore  full denotes the number of available slots
in the buffer, for the producer to write to. The place holder variables, denoted
by P, Q, R and S, in the code below can be assigned either  empty or full. The
valid semaphore operations are: wait () and signal ().
Which one of the following assignments to P, Q, R and S will yield the correct
solution?', '{"A": "P: full, Q: full, R: empty, S: empty", "B": "P: empty, Q: empty, R: full, S: full", "C": "P: full, Q: empty, R: empty, S: full", "D": "P: empty, Q: full, R: full, S: empty"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('ff65ee24-579e-41d3-afbd-d9ad2dcd6bab', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2019, 1, 'MCQ', 'Consider three concurrent processes P1, P2 and P3 as shown below, which
access a shared variable D that has been initialized to 100.
The processes are executed on a uniprocessor system running a time -shared
operating system. If the minimum and maximum possible values of D after the
three processes have completed execution are X and Y respectively, t hen the
value of Y–X is______________', '{"C": "Only P1 and P3 will be in a deadlock.", "D": "All three processes will be in deadlock   [Marks: 2][GATE:  2009]"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('5490a47b-7036-4ad5-b78a-851d0759713e', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2010, 2, 'MCQ', 'A system has n resources R 0,…,Rn-1,and k processes P 0,…, Pk-1.The
implementation of the resource request logic of each process Pi is as follows:
if (i % 2 == 0) {
if (i < n) request R i
if (i+2 < n) request R i+2
}
else {
if (i < n) request R n-i
if (i+2 < n) request R n-i-2
}
In which one of the following situations is a deadlock possible?', '{"A": "n=40, k=26     (b) n=21, k=12", "C": "n=20, k=10     (d) n=41, k=19"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('53e8c141-a346-42ed-8f95-5a9ab2175ada', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2014, 2, 'MCQ', 'An operating system uses the Banker’s algorithm for deadlock avoidance when
managing the allocation of three resource  types X, Y, and Z to three processes
P0, P1, and P2. The table given below presents the current system state. Here,
the Allocation matrix shows the current number of resources of each type
allocated to each process and the Max matrix shows the maximum num ber of
resources of each type required by each process during its execution.
Allocation Max
P0 0 0 1 8 4 3
P1 3 2 0 6 2 0
P2 2 1 1 3 3 3
There are 3 units of type X, 2 units of type Y and 2 units of type Z still available.
The system is currently in a safe state. Consider the following independent
requests for additional resources in the current state:
REQ1: P0 requests 0 units of X, 0 units of Y and 2 units of Z
REQ2: P1 requests 2 units of X, 0 units of Y and 0 units of Z
Which one of the following is TRUE?
[SET-1]', '{"A": "Only REQ1 can be permitted.", "B": "Only REQ2 can be permitted.", "C": "Both REQ1 and REQ2 can be permitted.", "D": "Neither REQ1 nor REQ2 can be permitted"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('47377482-60d6-4a6a-852a-edbdc66439cf', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2014, 2, 'MCQ', 'A system contains three programs and each requires th ree tape units for its
operation. The minimum number of tape units which the system must have
such that deadlocks never arise is_____________
[SET-3]', '{"A": "6    (b) 7    (c) 8    (d) 9"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('a2cab1fb-9063-4197-ab99-15eb176352b7', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2015, 1, 'MCQ', 'A system has 6 identical resources and N processes competing for them. Each
process can request at most 2 resources. Which one of the following values of
N could lead to a deadlock?
[SET-2]', '{"A": "1    (b) 2    (c) 3   (d) 6"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('c7cb4d59-ccdf-43a4-aa8a-8a4c421da47d', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2015, 2, 'MCQ', 'Consider the following policies for preventing deadlock in a system with
mutually exclusive resources.
I. Processes should acquire all their resources at the beginning of execution.
If any resource is not available, all resources acquired so far are released.
II. The resources are numbered uniquely, and processes are allowed to request
for resources only in increasing resource numbers.
III. The resources are numbered uniquely, and processes are allowed to request
for resources only in decreasing resource numbers.
IV. The resources are numbered uniquely. A process is allowed to request only
for a resource with resource number larger than it’s currently held
resources.
Which of the above policies can be used for preventing deadlock?
[SET-3]', '{"A": "Any one of I and III but not II or IV", "B": "Any one of I, III, and IV but not II", "C": "Any one of II and III but not I or IV", "D": "Any one of I, II, III, and IV"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('2016e1b4-a248-4843-a90e-f42e2e35a4d8', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2017, 2, 'MCQ', 'A multithreaded program P executes with x number of threads and uses y
number of locks for ensuring mutual exclusion while operating on shared
memory locations. All locks in the program are  non-reentrant, i.e., if a thread
holds a lock l, then it cannot re -acquire lock l without releasing it. If a thread
is unable to acquire a lock, it blocks until the lock becomes available. The
minimum value of x and the minimum value of y together for which execution
of P can result in a deadlock are:
[SET-1]', '{"A": "x=1,y=2", "B": "x=2,y=1", "C": "x=2,y=2", "D": "x=1,y=1"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('b984f150-d0d7-458e-ae34-e8867d01ba76', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2017, 2, 'MCQ', 'A system shares 9 tape drives. The current allocation and maximum
requirement of tape drives for 3 processes are shown below:
Which of the following best describes the current state of the system?
[SET-2]', '{"A": "Safe, Deadlocked", "B": "Safe, Not Deadlocked", "C": "Not Safe, Deadlocked", "D": "Not Safe, Not Deadlocked"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('f6bd37cd-b846-4e52-9e15-5b31899c0238', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2018, 2, 'MCQ', 'In a system, there are three types of resources: E, F and G. Four processes P0,
P1, P2 and P3 execute concurrently. At the outset, the processes have declared
their maximum resource requirements using a matrix named Max as given
below. For example, Max [P2, F] is the maximum number of instances of F that
P2 would require. The number of instances of the resources allocated to the
various processes at any given state is given by a matrix named
Allocation.Consider a state of the system with the  Allocation matrix as shown
below, and in which 3 instances of E and 3 instances of F are the only resources
available.
From the perspective of deadlock avoidance, which one of the following is true?
E were available
F were available
G were available', '{"A": "The system is in safe state", "B": "The system is not in  safe state, but would be safe if one more instance of", "C": "The system is not in  safe state, but would be safe if one more instance of", "D": "The system is not in  safe state, but would be safe if one more instance of"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('28262b53-b88c-4841-bc98-bc51a5b5c1a8', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2018, 1, 'MCQ', 'Consider a system with 3 processes that share 4 instances of the same resource
type. Each process can request a maximum of K instances. Resource instances
can be requested and released only one at a time. The largest value of K th at
will always avoid deadlock is _______.', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('ae06fbaf-032b-4aa8-a774-820bb1033733', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2019, 2, 'MCQ', 'Consider the following snapshot of a system running n concurrent processes.
Process i is holding Xi instances of a resource R, 1 ≤ i ≤ n. Assume that all
instances of R are currently in use. Further, for all i, process i can place a
request for at most Yi additional instances of R while holding the Xt instances
it already has. Of the n processes, there are exactly two processes p and q
such that Yp = Yq = 0. Which one of the following con ditions guarantees that
no other process apart from p and q can complete execution?', '{"A": "Min (Xp, Xq) \u2265 Min {Yk | 1 \u2264 k \u2264 n, k \u2260 p, k \u2260 q}", "B": "Xp + Xq< Max {Yk | 1 \u2264 k \u2264 n, k \u2260 p, k \u2260 q}", "C": "Min (Xp, Xq) \u2264 Max {Yk | 1 \u2264 k \u2264 n, k \u2260 p, k \u2260 q}", "D": "Xp + Xq< Min {Yk | 1 \u2264 k \u2264 n, k \u2260 p, k \u2260 q}"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('ef880b4e-b979-47ec-a86d-7a0bb4ec3fd2', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2009, 1, 'MCQ', 'In which one of the following page replacement policies, Belady’s anomaly may
occur?
MRU', '{"A": "FIFO    (b) Optimal   (c) LRU    (d)"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('0b7e449f-7b05-4f4d-b7fa-2f10520fbf80', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'The essential content(s) in each entry of a page table is / are.', '{"A": "Virtual page number", "B": "Page frame number", "C": "Both virtual page number and page frame number", "D": "Access right information     [Marks: 1][GATE: 2009]"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('1bc19a97-cc8f-460c-93d3-dea1c6c5a9d1', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2009, 1, 'MCQ', 'A multilevel page table is preferred in comparison to a single level page table
for translating virtual address to physical address because
address space of a process.
algorithms', '{"A": "It reduces the memory access time to read or write a memory location.", "B": "It helps to reduce the size of page table needed to implement the virtual", "C": "It is required by the translation look aside buffer.", "D": "It helps to reduce the number of page faults in page replacement"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('235a425d-9945-48e2-a700-1c6acfbf37af', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'A system uses FIFO policy for page replacement. It has 4 page frames with no
pages loaded to begin with. The system first accesses 100 distinct pages in
some order and then access the same 100 pages but now in the reverse order.
How many page faults will occur?________', '{"A": "196", "B": "192", "C": "197", "D": "195        [Marks: 1][GATE:2010]"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('ba8858e5-819b-42e1-ac1b-d0c18d808524', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'Let the page fault service ti me be 10ms in a computer with average memory
access time being 20ns. If one page fault is generated for every 10^6 memory
accesses, what is the effective access time for the memory?', '{"A": "21ns", "B": "30ns", "C": "23ns", "D": "35ns        [Marks: 1][GATE: 2011]"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('79c8662e-3268-469e-b55c-44bed74ef813', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2012, 2, 'MCQ', 'Consider the virtual page reference string
1, 2, 3, 2, 4, 1, 3, 2, 4, 1
On a demand paged virtual memory system running on a computer system that
main memory size of 3 pages frames which are initially empty. Let LRU, FIFO
and OPTIMAL denote the number of page faults under the corresponding page
replacements policy. Then', '{"A": "OPTIMAL < LRU < FIFO    (b) OPTIMAL < FIFO < LRU", "C": "OPTIMAL = LRU     (d) OPTIMAL = FIFO"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('44e81efb-1850-4546-9edb-07c3bb150d0d', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2013, 2, 'MCQ', 'A computer uses 46-bit virtual address, 32-bit physical address, and a three-
level paged page table organization. The page table base register stores the base
address of the first-level table (T1), which occupies exactly one page. Each entry
of T1 stores the base address of a page of the second-level table (T2). Each entry
of T2 stores the base address of a page of the third-level table (T3). Each entry
of T3 stores a page table entry (PTE). The PTE is 32 bits in size. The processor
used in the computer has a 1 MB 16 -way set associative virtually indexed
physically tagged cache. The cache block size is 64 bytes.  What is the size of a
page in KB in this computer?', '{"A": "2    (b) 4    (c) 8    (d) 16"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('7177ad43-40df-4967-ab54-5734eb274687', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2013, 2, 'MCQ', 'A computer uses 46-bit virtual address, 32-bit physical address, and a three -
level paged page table organization. The page table base register stores the base
address of the first-level table (T1), which occupies exactly one page. Each entry
of T1 stores the base address of a page of the second-level table (T2). Each entry
of T2 stores the base address of a page of the third-level table (T3). Each entry
of T3 stores a page table entry (PTE). The PTE is 32 bits in size. The processor
used in the computer has a 1 MB 16 -way set associative virtually indexed
physically tagged cache. The cache block size is 64  bytes.  Consider the same
data as above question. What is the minimum number of page colors needed to
guarantee that no two synonyms map to different sets in the processor cache
of this computer?', '{"A": "2    (b) 4    (c) 8    (d) 16"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('81aedd13-97ba-4896-8e5e-c51bc1f25e12', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2014, 2, 'MCQ', 'Assume that there are 3 page frames which are initially empty. If the page
reference string is 1, 2, 3, 4, 2, 1, 5, 3, 2, 4, 6, the number of page faults using
the optimal replacement policy is__________.
[SET-1]', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('fa7f8e96-8d4e-4bd9-9bef-ff37e1e47006', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2014, 2, 'MCQ', 'A computer has twe nty physical page frames which contain pages numbered
101 through 120. Now a program accesses the pages numbered 1, 2, …, 100
in that order, and repeats the access sequence THRICE. Which one of the
following page replacement policies experiences the same number of page faults
as the optimal page replacement policy for this program?
[SET-2]', '{"A": "Least-recently-used", "B": "First-in-first-out", "C": "Last-in-first-out", "D": "Most-recently-used"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('277e8440-f5cf-4350-841d-72d078cd4db0', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2014, 2, 'MCQ', 'A system uses 3 page frames for storing process pages in main memory. It uses
the Least Recently Used (LRU) page replacement policy. Assume that all the
page frames are initially empty. What is the total number of page faults that
will occur while processing the page reference string given below?
4, 7, 6, 1, 7, 6, 1, 2, 7, 2
[SET-2]', '{"A": "4    (b) 5    (c) 6    (d) 7"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('4ee7865b-ec87-49df-92c2-c086a40410fe', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2014, 2, 'MCQ', 'Consider a paging hardware with a TLB. Assume that the entire page table and
all the pages are in the physical memory. It takes 10 milliseconds to search the
TLB and 80 milliseconds to access the physical memory. If the TLB hit ratio is
0.6, the effective memory access time (in milliseconds) is _________.
[SET-3]', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('717fcfb5-d037-4f45-88fb-83279839be8b', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2015, 1, 'MCQ', 'Consider a system with byte -addressable memory, 32 bit logical addresses, 4
kilobyte page size and page table entries of 4 bytes each. The size of the page
table in the system in megabytes is_____________
[SET-1]', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('6d54fa67-e159-48a5-8478-7f80ff38134a', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'Consider a main memory with five page frames and the following sequence of
page references: 3,  8, 2, 3, 9, 1, 6, 3, 8, 9, 3, 6, 2, 1, 3. Which one of the
following is true with respect to page replacement policies First -In-First Out
(FIFO) and Least Recently Used (LRU)?', '{"A": "Both incur the same number of page faults", "B": "FIFO incurs 2 more page faults than LRU", "C": "LRU incurs 2 more page faults than FIFO", "D": "FIFO incurs 1 more page faults than LRU[Marks: 2][GATE:  2015][SET-1]"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('e72a8473-d29a-4dff-8d3e-ff093ea1bfa4', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2015, 1, 'MCQ', 'A computer system implements a 40 bit virtual address, page size of 8 kilobytes,
and a 128-entry translation look-aside buffer (TLB) organized into 32 sets each
having four ways. Assume that the TLB tag does not store any process id. The
minimum length of the TLB tag in bits is _________
[SET-2]', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('0a0db9a8-d163-40c3-897f-5040f66efb55', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2015, 2, 'MCQ', 'Consider six memory partitions of size 200 KB, 400 KB,  600 KB, 500 KB, 300
KB, and 250 KB, where KB refers to kilobyte. These partitions need to be
allotted to four processes of sizes 357 KB, 210 KB, 468 KB and 491 KB in that
order. If the best fit algorithm is used, which partitions are NOT allotted to any
process?
[SET-2]', '{"A": "200 KB and 300 KB", "B": "200 KB and 250 KB", "C": "250 KB and 300 KB", "D": "300 KB and 400 KB"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('76845b83-7c33-4822-b420-39b5ac213298', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2015, 2, 'MCQ', 'A Computer system implements 8 kilobyte pages and a 32-bit physical address
space. Each page table entry contains a valid bit, a  dirty bit three permission
bits, and the translation. If the maximum size of the page table of a process is
24 megabytes, the length of the virtual address supported by the system is
_______________bits
[SET-
2]', '{"A": "36    (b) 32    (c) 28    (d) 40"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('98b29c8b-19cd-42cb-955f-c64821a1a1c2', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2016, 2, 'MCQ', 'Consider a computer system with 40 -bit virtual addressing and page size of
sixteen kilobytes. If the computer system has a one-level page table per process
and each page table entry requires 48 bits, then the size of the per-process page
table is __________________megabytes.
[SET-1]', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('af182bd7-53a2-4d44-8dda-640356b3195b', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2016, 2, 'MCQ', 'Consider a computer system with ten physical page frames. The system is
provided with an access sequence (a1, a2, ..., a20, a1, a2, ..., a20), where each
ai is a distinct virtual page number. The difference in the number of page faults
between the last -in-first-out page replacement policy and the optimal page
replacement policy is______________[SET-1]', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('a1e7d05b-ec43-44a9-9598-f55d1cbd3958', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2016, 1, 'MCQ', 'In which one of the following page replacement algorithms it is possible for the
page fault rate to increase even when the number of allocated frames increases?
[SET-2]', '{"A": "LRU (Least Recently Used)", "B": "OPT (Optimal Page Replacement)", "C": "MRU (Most Recently Used)", "D": "FIFO (First In First Out)"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('ce3ad590-a7db-416f-b1c2-04a6ab2e1011', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2017, 2, 'MCQ', 'Recall that Belady''s anomaly is that the page -fault rate may  increase as the
number of allocated frames increases. Now, consider the following statements:
S1: Random page replacement algorithm (where a page chosen at random is
replaced) suffers from Belady’s anomaly.
S2: LRU page replacement algorithm suffers from Belady’s anomaly.
[SET-1]', '{"A": "S1 is true, S2 is true", "B": "S1 is true, S2 is false", "C": "S1 is false, S2 is true", "D": "S1 is false, S2 is false"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('ca4f4613-71a6-4965-8de4-2b79df5e5d7e', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2018, 1, 'MCQ', 'Consider a process executing on an operating system that uses demand paging.
The average time for a memory access in the system is  M units if the
corresponding memory page is available in memory, and D units if the memory
access causes a page fault. It has been experimentally measured that the
average time taken for a memory access in the process is  X units. Which one
of the following is the correct expression for the page fault rate experienced by
the process?', '{"A": "(D \u2013 M) / (X \u2013 M)    (b) (X \u2013 M) / (D \u2013 M)", "C": "(D \u2013 X) / (D \u2013 M)    (d) (X \u2013 M) / (D \u2013 X)"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('47c57589-4da0-422a-9930-6096265e4c5b', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2019, 2, 'MCQ', 'Assume that in a certain computer, the virtual addresses are 64 bits long and
the physical addresses are 48 bits long. The memory is word addressable. The
page size is 8KB and the word size is 4 bytes. The Translation Look -aside
Buffer (TLB) in the address translation path has 128 valid entries. At most
how many distinct virtual addresses can be translated without any TLB miss?', '{"A": "16 x 210  (b) 256 x 210  (c) 4 x 220   (d) 8 x 220"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('de889881-339b-4b36-92dc-5ec3bfdea348', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'Consider allocation of memory to a new process. Assume that none of the
existing holes in the memory will exactly fit the process’s memory requirement.
Hence, a new hole of smaller size will be created if allocation is made in any of
the existing holes. Which one of the following statements is TRUE?
fit.', '{"A": "The hole created by worst fit is always larger than the hole created by first", "B": "The hole created by best fit is never larger than the hole created by first fit.", "C": "The hole created by first fit is always larger than the hole created by next fit.", "D": "The hole created by next fit is never larger than the hole created by best fit."}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('fa066553-33ba-4758-8a5a-941882950e97', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 2, 'MCQ', 'Consider a paging system that uses a 1 -level page table residing in main
memory and a TLB for a ddress translation. Each main memory access takes
100 ns and TLB lookup takes 20 ns. Each page transfer to/from the disk takes
5000 ns. Assume that the TLB hit ratio is 95%, page fault rate is 10%. Assume
that for 20% of the total page faults, a dirty page has to be written back to disk
before the required page is read in from disk. TLB update time is negligible. The
average memory access time in ns (round off to 1 decimal places) is _________.

File System And Disk Scheduling', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('5b4d4d56-2e80-47e7-97c8-a39df3ebd03d', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2009, 2, 'MCQ', 'Consider a disk system with 100 cylinders. The requests to access the cylinders
occur in following sequence: 4, 34, 10, 7, 19, 73, 2, 15, 6, 20 Assuming that
the head is currently at cylinder 50, what is the time taken to satisfy all
requests if it takes 1ms to move from one cylinder to adjacent one and shortest
seek time first policy is used?', '{"A": "95 ms   (b)119 ms    (c)233 ms   (d) 276 ms"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('1be82411-3731-44ea-a95c-9d6b52522fae', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2012, 2, 'MCQ', 'A file system with 300 Gbytes disk uses a file descriptor with 8 direct block
addresses, 1 indirect block address and 1 doubly indirect block address. The
size of each disk block is 128 Bytes and the size of each disk block address is
8 Bytes. The maximum possible file size in this file system is', '{"A": "3 Kbytes      (b) 35 Kbytes", "C": "280 Bytes     (d) Dependent on the size of the disk"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('588cb638-aace-4d14-8562-961fb4559196', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2014, 1, 'MCQ', 'Suppose a disk has 201 cylinders, numbered from 0 to 200. At some time the
disk arm is at cylinder 100, and there is a queue of disk access requests for
cylinders 30, 85, 90, 100, 105, 110, 135 and 145. If Shortest -Seek Time First
(SSTF) is being used for scheduling the disk access, the request for cylinder 90
is serviced after servicing ____________ number of requests.
[SET-1]', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('ad32c6ea-3012-45e6-ba6e-3fa5cc7de2ca', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2014, 1, 'MCQ', 'A FAT (file allocation table) based fi le system is being used and the total
overhead of each entry in the FAT is 4 bytes in size. Given a 100×106 bytes disk
on which the file system is stored and data block size is  103 bytes, the
maximum size of a file that can be stored on this disk in units of 106 bytes is
_________.
[SET-2]', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('d11a3cde-d546-427e-b778-d3e68477c55e', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2015, 2, 'MCQ', 'Suppose the following disk request sequence (track numbers) for a disk with
100 tracks is given: 45, 20, 90, 10, 50, 60, 80, 25, 70. Assume that the initial
position of the R/W head is on track 50. The additional distance that will be
traversed by the R/W head when the Shortest Seek Time First (SSTF) algorithm
is used compared to the SCAN (Elevator) algorithm (assuming that SCAN
algorithm moves towards 100 when it starts execution) is _________ tracks
[SET-1]', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('0889dea9-1c7b-43e5-a31c-6d1ac9c97a88', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2016, 2, 'MCQ', 'Consider a disk queue with requests for I/O to blocks on cylinders 47, 38, 121,
191, 87, 11, 92, 10. The C -LOOK scheduling algorithm is used. The head is
initially at cylinder number 63, moving towards larger cylinder numbers on its
servicing pass. The cylinders are numbered from 0 to 199. The total head
movement (in number of cylinders) incurred while servicing these requests
is:____________
[SET-1]', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('4bff1e7f-a3a4-4e6b-8bb8-c58ea3ec03c4', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'In a file allocation system, which of the following allocation scheme(s) can be
used if no external fragmentation is allowed?
I. Contiguous    II. Linked       III. Indexed
2]', '{"A": "I and III only", "B": "II only", "C": "III only", "D": "II and III only      [Marks: 1][GATE: 2017][SET-"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('ff7d433c-b020-4050-8a0a-8125973ea52a', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2018, 2, 'MCQ', 'Consider a storage disk with 4 platters (numbered as 0, 1, 2 and 3), 200
cylinders (numbered as 0, 1, … , 199), and 256 sectors per track (numbered as
0, 1, … 255). The following 6 disk requests of the form [sector number, cylinder
number, platter number] are received by the disk controller at the same time:
[120, 72, 2], [180, 134, 1], [60, 20, 0], [212, 86, 3], [56, 116, 2], [118, 16, 1]
Currently head is positioned at sector number 100 of cylinder 80, and is moving
towards higher cylinder numbers. The average power dissipation in moving the
head over 100 cylinders is 20 milliwatts and for reversing the direction of the
head movement once is 15 milliwatts. Power dissipation associated with
rotational latency and switching of head between different platters is negligible.
The total power consumpt ion in milliwatts to satisfy all of the above disk
requests using the Shortest Seek Time First disk scheduling algorithm is ______', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('b327d78c-44d9-4f7d-a3f1-4c8bb4b05f7f', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2019, 2, 'MCQ', 'The index node (Inode) of a Unix -like file system has 12 direct, one single -
indirect and one double -indirect pointer. The disk block size is 4 kB and the
disk block addresses 32-bits long. The maximum possible file size is (rounded
off to 1 decimal place) __________ GB.', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('ff9b1516-af39-4a0b-a8e2-0e029b7ae925', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 2, 'MCQ', 'Consider the following five disk access requests of the form (request id, cylinder
number) that are present in the disk scheduler queue at a given time.
(P, 155), (Q, 85), (R, 110), (S, 30), (T, 115)
Assume the head is positioned at cylinder 100. The scheduler follows Shortest
Seek Time First scheduling to service the requests. Which one of the following
statements is FALSE?

Operating System
1. C 2. D 3. C 4. C 5. A
6. C 7. C 8. B 9. D 10. 7.2
11. B 12. C 13. 12 14. C 15. D
16. A 17. 8.25 18. D 19. 3 20. B
21. 29 22. 31 23. 2 24. D 25. 5.25
1. A 2. A 3. A 4. B 5. B
6. C 7. D 8. C 9. A 10. A
11. A 12. C 13. 7 14. C 15. 80
16. C
1. A 2. B 3. B 4. B 5. D
6. D 7. D 8. B 9. A 10. 2
11. D
1. A 2. B 3. B 4. A 5. B
6. B 7. C 8. C 9. 7 10. D
11. C 12. 122 13. 4 14. A 15. 22
16. A 17. A 18. 384 19. 1 20. D
21. B 22. B 23. B 24. B 25. 154.5
File System And Disk Scheduling
1. B 2. B 3. 3 4. 99.6 5. 10
6. 346 7. D 8. 85 9. 4 10. A,B
Video Solution Play list Link of Computer Network: Click Here
GATE Computer Science & IT
Computer Network
(Topic-wise)
(https://www.youtube.com/playlist?list=PLqHw2_FIWUzZhqukc-k5cUlO0uMw-
3SWC)
ISO-OSI AND TCP/IP PROTOCOL STACKS', '{"A": "The head reverses its direction of movement between servicing of Q and P.", "B": "T is serviced before P.", "C": "R is serviced before P.", "D": "Q is serviced after S, but before T."}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('7e7d6eab-5062-467b-9a68-4658ae12ee80', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2014, 1, 'MCQ', 'In the following pairs of OSI protocol layer/sub -layer and its functionality, the
INCORRECT pair is
[SET-3]
Answer: (b)', '{"A": "Network layer and Routing", "B": "Data Link Layer and Bit synchronization", "C": "Transport layer and End-to-end process communication", "D": "Medium Access Control sub-layer and Channel sharing"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('c3ac26a5-39a2-432c-909d-404879c878c1', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2009, 2, 'MCQ', 'Let G(x) be the generator polynomial used for CRC checking. What is the condition
that should be satisfied by G(x) to detect odd number of bits in error?', '{"A": "G(x) contains more than two terms", "B": "G(x) does not divide 1+xk, for any k not exceeding the frame length", "C": "1+x is a factor of G(x)", "D": "G(x) has an odd number of terms"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('b0f84d24-4570-4614-bc0c-07e6fd798b8a', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2014, 2, 'MCQ', 'A bit-stuffing based framing protocol uses an 8-bit delimiter pattern of 01111110.
If the output bit-string after stuffing is 01111100101, then the input bit-string is
[SET-3]', '{"A": "0111110100                               (b) 0111110101", "C": "0111111101    (d) 0111111111"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('3207a619-cd91-4bf6-aca3-b1d04b425949', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2017, 1, 'MCQ', 'A computer network uses polynomials over GF (2) for error checking with 8 bits as
information bits and uses x 3 + x + 1 as the generator polynomial to generate the
check bits. In this network, the message 01011011 is transmitted as
[SET-1]', '{"A": "01011011010", "B": "01011011011", "C": "01011011101", "D": "01011011100"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('e4e7216e-d7ca-400c-962e-9e2ec907619a', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2017, 2, 'MCQ', 'Consider a binary code that consist only four valid code words as given below.
00000, 01011, 10101, 11110
Let minimum Hamming distance of code be p and maximum number of erroneous
bits that can be corrected by the code be q. The value of p and q are:
[SET-2]', '{"A": "p = 3 and q = 1", "B": "p = 3 and q = 2", "C": "p = 4 and q = 1", "D": "p = 4 and q = 2"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('cd6d1364-d464-44a7-afb9-29d299f0d8fa', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2010, 2, 'MCQ', 'Frames of 1000 bits are sent over a 10 6 bps duplex link between two hosts. The
propagation time is 25ms. Frames are to be transmitted into this link to maximally
pack them in transit (within the link). What is the minimum number of bits (l) that
will be required to represent the sequence number s distinctly? Assume that no
time gap needs to be given between transmission of two frames', '{"A": "I = 2    (b) I = 3    (c) I = 4   (d) I = 5"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('2a5a9bfc-0c46-4937-b06f-9f177855a14d', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2010, 2, 'MCQ', 'Frames of 1000 bits are sent over a 10 6 bps duplex link between two hosts. The
propagation time is 25ms. Frames are to be transmitted into this link to maximally
pack them in transit (within the link). Suppose that the sliding window protocol is
used with the sender window size of 2 l, where l is the number of bits identified in
the earlier part and acknowledgements are always piggy backed. After sending 2 l
frames, what is the minimum time the sender will have to wait before starting
transmission of the next frame? (Identify the closest choice ig noring the frame
processing time.)', '{"A": "16ms    (b) 18ms    (c) 20ms    (d) 22ms"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('f7ac63c6-8dfa-418d-9ab8-20b2a0d0ef74', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2014, 2, 'MCQ', 'Consider a selective repeat sliding window protocol that uses a frame size of 1 KB
to send data on a 1.5 Mbps link with a one -way latency of 50 msec. To achieve a
link utilization of 60%, the minimum number of bits required to represent the
sequence number field is ________.
[SET-1]', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('0a4756b7-7ea0-4190-adb7-b198ec4c9c57', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2015, 2, 'MCQ', 'Suppose that the stop -and-wait protocol is used on a link with a bit rate of 64
kilobits per second and 20 milliseconds propagation delay. Assume that the
transmission time for the acknowledgment and the processing time at nodes are
negligible. Then the minimum frame size in bytes to achieve a link utilization of at
least 50% is _________.    [SET-1]', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('e4c260f7-cc1c-42df-aaa2-47cf147c3be6', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2015, 1, 'MCQ', 'A link has a transmission speed of 106 bits/sec. It uses data packets of size 1000
bytes each. Assume that the acknowledgment has negligible transmission delay,
and that its propagation delay is the same as the data propagation  delay. Also
assume that the processing delays at nodes are negligible. The efficiency of the
stop-and-wait protocol in this setup is exactly 25%. The value of the one -way
propagation delay (in milliseconds) is ___________.[SET-2]', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('13c30a70-2796-46c3-8158-0db8a74d62d6', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2015, 2, 'MCQ', 'Consider a network connecting two systems located 8000 kilometers apart. The
bandwidth of the network is 500 × 10^6 bits per second. The propagation speed of
the media is 4 × 10^6 meters per second. It is needed to design a Go-Back-N sliding
window protocol  for this network. The average packet size is 10^7 bits. The
network is to be used to its full capacity. Assume that processing delays at nodes
are negligible. Then, the minimum size in bits of the sequence number field has to
be ___________.
[]SET-3]', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('72e91408-ba48-4edd-9ec6-45fd104b09af', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2016, 2, 'MCQ', 'A sender uses the Stop-and-Wait ARQ protocol for reliable transmission of frames.
Frames are of size 1000 bytes and the transmission rate at the sender is 80 Kbps
(1Kbps = 1000 bits/second). Size of an acknowledgement is 100 bytes and the
transmission rate at the receiver is 8 Kbps. The one-way propagation delay is 100
milliseconds. Assuming no frame is lost, the sender throughput is __________
bytes/second.
[SET-1]', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('898abba6-e157-4284-bc40-d41fe5d41bcb', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2016, 2, 'MCQ', 'Consider a 128×10 3 bits/second satellite comm unication link with one -way
propagation delay of 150 milliseconds. Selective retransmission (repeat) protocol
is used on this link to send data with a frame size of 1 kilobyte. Neglect the
transmission time of acknowledgment. The minimum number of bits req uired for
the sequence number field to achieve 100% utilization is ___________
[SET-2]', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('08fbfc0e-c102-490d-bd5a-54ecbe7badc5', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2017, 2, 'MCQ', 'The values of parameters for the Stop-and-Wait ARQ protocol are as given below.
Bit rate of the transmission channel = 1 Mbps
Propagation delay from sender to receiver = 0.75 ms
Time to process a frame = 0.25 ms
Number of bytes in the information frame = 1980
Number of bytes in the acknowledge frame = 20
Number of overhead bytes in the information frame = 20
Assume that there are no transmission errors. Then the transmission efficiency
(expressed in percentage) of the Stop -and – Wait ARQ protocol for the above
parameters is _________ (correct to 2 decimal place).
[SET-1]', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('3fa8009f-3671-473c-bfe7-1199c08c8ccd', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2017, 2, 'MCQ', 'Consider two hosts X and Y, connected by a single direct link of rate 10^6 bits/sec.
The distance between the two hosts is 10,000 km and the propagation speed along
the link is 2 x 10^8 m/s. Hosts X send a file of 50,000 bytes as one large message
to hosts Y continuously. Let the transmission and propagat ion delays be p
milliseconds and q milliseconds, respectively. Then the vales of p and q are:
[SET-2]', '{"A": "p = 50 and q = 100    (b) p = 50 and q = 400", "C": "p = 100 and q = 50    (d) p = 400 and q = 50"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('29c486bf-dcb7-49e4-ada5-f83da510d929', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2013, 2, 'MCQ', 'Determine the maximum length of the cable (in km) for transmitting data at a rate
of 500 Mbps in an Ethernet LAN with frames of size 10,000 bits. Assume the signal
speed in the cable to be 2,00,000 Km/s.', '{"A": "1    (b) 2   (c) 2.5   (d) 5"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('b7ac3339-dfbf-4c8a-9c1a-f1979fdb26b0', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2015, 2, 'MCQ', 'Consider a LAN with four nodes S1, S2, S3 and S4. Time is divided into fixed-size
slots, and a node can begin its transmission only at the beginning of a slot. A
collision is said to have occurred if more than one node transmit in the same slot.
The probabilities of generation of a frame in a time slot by S1, S2, S3 and S4 are
0.1, 0.2, 0.3 and 0.4, respectively. The probability of sending a frame in the first
slot without any collision by any of these four stations is _________.
[SET-1]', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('722666d7-1287-4dc2-928f-5351e9de1776', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2015, 1, 'MCQ', 'Consider a CSMA/CD network that transmits data at a rate of 100 Mbps (10^8
bits per second) over a 1 km (kilometer) cable with no repeaters. If the minimum
frame size required for this network is 1250 bytes, what is the signal s peed
(km/sec) in the cable?
[SET-3]', '{"A": "8000   (b) 10000   (c) 16000   (d) 20000"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('cdfb9abf-7677-4f18-ae55-ba13c44bcdaf', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2015, 2, 'MCQ', 'Two hosts are connected via a packet switch with 10^7 bits per second links. Each
link has a propagation delay of 20 microseconds. The switch begins fo rwarding a
packet 35 microseconds after it receives the same. If 10000 bits of data are to be
transmitted between the two hosts using a packet size of 5000 bits, the time
elapsed between the transmission of the first bit of data and the reception of the
last bit of the data in microseconds is _________.
[SET-3]', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('fbc7f510-b485-48a2-a47c-fff042fb4d17', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2016, 1, 'MCQ', 'In an Ethernet local area network, which one of the following statements is TRUE?
the minimum frame size.
retransmissions.      [SET-2]', '{"A": "A station stops to sense the channel once it starts transmitting a frame.", "B": "The purpose of the jamming signal is to pad the frames that are smaller than", "C": "A station continues to transmit the packet even after the collision is detected.", "D": "The exponential backoff mechanism reduces the probability of collision  on"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('dba94e81-3da1-461b-846e-0cdfb240a0fa', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2016, 2, 'MCQ', 'A network has a data transmission bandwidth of 20 × 10^6 bits per second. It uses
CSMA/CD in the MAC layer. The maximum signal propagation time from one Node
to another node is 40 microseconds. The minimum size of a frame in the Network
is _________ bytes.   [SET-2]', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('8debd126-4093-4838-bacd-64558ff3274c', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2018, 2, 'MCQ', 'Consider a simple communication system where multiple nodes are connected by
a shared broadcast medium (like Ethernet or wireless). The nodes in the system
use the following carrier -sense the medium access protocol. A n ode that receives
a packet to transmit will carrier-sense the medium for 5 units of time. If the node
does not detect any other transmission in this duration, it starts transmitting its
packet in the next time unit. If the node detects another transmission , it waits
until this other transmission finishes, and then begins to carrier -sense for 5 time
units again. Once they start to transmit, nodes do not perform any collision
detection and continue transmission even if a collision occurs. All transmissions
last for 20 units of time. Assume that the transmission signal travels at the speed
of 10 meters per unit time in the medium. Assume that the system has two nodes
P and Q, located at a distance d meters from each other. P starts transmitting a
packet at time t = 0 after successfully completing its carrier -sense phase. Node Q
has a packet to transmit at time t = 0 and begins to carrier-sense the medium. The
maximum distance d (in meters, rounded to the closest integer) that allows Q to
successfully avoid a col lision between its proposed transmission and P’s ongoing
transmission is _______.', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('c4b67a95-42e6-4501-9294-80643be28c7a', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2019, 2, 'MCQ', 'Consider that 15 machines need to be connected in a LAN using 8 -port Ethernet
switches. Assume that these switches do not have any separate up link ports. The
minimum number of switches needed is ___________.', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('c2f1e3b4-41bf-4ffa-870b-a1f9aea83839', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'One of the header fields in an IP datagram is the Time-to-Live (TTL) field. Which of
the following statements best explains the need for this field?', '{"A": "It can be used to prioritize packets", "B": "It can be used to reduce delays", "C": "It can be used to optimize throughput", "D": "It can be used to prevent packet looping  [Marks: 1 ][GATE:  2010]"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('4e79da23-5732-48ae-afc1-3d30bc035e66', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'Mark:2            GATE: 2010
Suppose computers A and B have IP addresses 10.105.1.113 and 10.105.1.91
respectively and they both use the same netmask N. Which of the values of N given
below should not be used if A and B should belong to the same network?', '{"A": "225.255.255.0    (b) 255.255.255.128", "C": "255.255.255.192    (d) 255.255.255.224"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('6dabda53-431d-4400-bea4-f37513cf7e1b', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'Mark: 2           GATE: 2010
Consider a network with 6 routers R1 and R6 connected with links having weights
as shown in the following diagram
All the routers use the distance vector based routing algorithm to update their
routing tables. Each starts with its routing table initialized to contain an entry for
each neighbour with the weight of the respective connecting link. After all the
routing tables stabilize, how many links in the network will never be used for
carrying any?
Data?', '{"A": "4        (b) 3", "C": "2        (d) 1"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('a8369295-fe20-43a6-aa87-43f3df55043a', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'Mark: 2           GATE: 2010
Consider a network with 6 routers R1 and R6 connected with links Having weights
as shown in the following diagram
Suppose the weights of all unused links in the previous question are changed to 2
and the distance vector algorithm is used again until all routing tables stabilize.
How many links will now remain unused?', '{"A": "0", "B": "1", "C": "2", "D": "3"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('855cb79c-dcee-4104-a440-68317d872f0e', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'Mark:2           GATE: 2011
Consider a network with five nodes, N1 to N5, as shown below.
The network uses a Distance Vector Routing protocol. Once the routes have
stabilized, the distance vectors at different nodes are as following.
N1: (0, 1, 7, 8, 4)
N2: (1, 0, 6, 7, 3)
N3: (7, 6, 0, 2, 6)
N4: (8, 7, 2, 0, 4)
N5: (4, 3, 6, 4, 0)
Each distance vector is the distance of the best known path at the instance to
nodes, N1 to N5, where the distance to itself is 0. Also, all links are symmetric and
the cost is identical in both directions. In each round, all nodes exc hange their
distance vectors with their respective neighbors. Then all nodes update their
distance vectors. In between two rounds, any change in cost of a link will cause
the two incident nodes to change only that entry in their distance vectors. The cost
of link N2 -N3 reduces to 2 (in both directions). After the next round of updates,
what will be the new distance vector at node, N3?', '{"A": "(3, 2, 0, 2, 5)      (b) (3, 2, 0, 2, 6)", "C": "(7, 2, 0, 2, 5)      (d) (7, 2, 0, 2, 6)"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('2ff4b5e5-d77e-4727-a16b-a5acd9203dae', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'Mark:2           GATE: 2011
Consider a network with five nodes, N1 to N5, as shown below.
The network uses a Distance Vector Routing protocol. Once the routes have
stabilized, the distance vectors at different nodes are as following.
N1: (0, 1, 7, 8, 4)
N2: (1, 0, 6, 7, 3)
N3: (7, 6, 0, 2, 6)
N4: (8, 7, 2, 0, 4)
N5: (4, 3, 6, 4, 0)
Each distance vector is the distance of the best known path at the instance to
nodes, N1 to N5, where the distance to itself is 0. Also, all links are symmetric and
the cost is identical in both dire ctions. In each round, all nodes exchange their
distance vectors with their respective neighbors. Then all nodes update their
distance vectors. In between two rounds, any change in cost of a link will cause
the two incident nodes to change only that entry in their distance vectors. After the
update in the previous question, the link N1 -N2 goes down. N2 will reflect this
change immediately in its distance vector as cost, infinite. After the NEXT ROUND
of update, what will be cost to N1 in the distance vector of N3?', '{"A": "3", "B": "9", "C": "10", "D": "Infinite"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('8ca45740-b58b-413e-8be6-be8cf37c5790', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'Mark:1          GATE: 2012
In the IPv4 addressing format, the number of networks allowed under Class C
addresses is', '{"A": "2 14   (b) 2 7   (c) 2 21   (d) 2 24"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('1b85e5aa-9504-42b7-a712-8e4eb2daca80', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'Mark:2           GATE: 2012
Consider a source computer(S) transmitting a file of size 106 bits to a destination
L3). L1connects S to R1; L2 connects R1 to R2; and L3 connects R2 to D. Let each
link be of length 100  km. Assume signals travel over each link at a speed of 108
meters per second. Assume that the link bandwidth on each link is 1Mbps. Let the
file be broken down into 1000 packets each of size 1000 bits. Find the total sum
of transmission and propagation delays in transmitting the file from S to D?', '{"D": "3003 ms", "A": "1005 ms", "B": "1010 ms", "C": "3000 ms"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('873ca7f0-a486-41d1-8d07-939eea52cc31', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'Mark:2          GATE: 2012
An Internet Service Provider (ISP) has the following chunk of CIDR -based IP
addresses available with it: 245.248.128.0/20. The  ISP wants to give half of this
chunk of addresses to Organization A, and a quarter to Organization B, while
retaining the remaining with itself. Which of the following is a valid allocation of
addresses to A and B?', '{"A": "245.248.136.0/21 and 245.248.128.0/22", "B": "245.248.128.0/21 and 245.248.128.0/22", "C": "245.248.132.0/22 and 245.248.132.0/21", "D": "245.248.136.0/24 and 245.248.132.0/21"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('1ed659f9-c7a0-472f-886e-f839c13e75e9', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'Mark:1            GATE: 2013
Assume that source S and destination D are connected through two intermediate
routers labeled R. Determine how many times each packet has to visit the network
layer and the data link layer during a transmission from S to D', '{"A": "Network layer \u2013 4 times and Data link layer \u2013 4 times", "B": "Network layer \u2013 4 times and Data link layer \u2013 3 times", "C": "Network layer \u2013 4 times and Data link layer \u2013 6 times", "D": "Network layer \u2013 2 times and Data link layer \u2013 6 times"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('d8d4abca-9aaf-4590-a140-84c54211e78a', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'Mark:2           GATE: 2013
In an IPv4 datagram, the M bit is 0, the value of HLEN is 10, the value of total
length is 400 and the fragment offset value is 300. The position of the datagram,
the sequence numbers of the first and the last bytes of the payload, respectively
are', '{"A": "Last fragment, 2400 and 2789", "B": "First fragment, 2400 and 2759", "C": "Last fragment, 2400 and 2759", "D": "Middle fragment, 300 and 689"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('98777e6d-b1cf-4442-ba88-c4fdeefc94cb', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'Mark:1            GATE: 2014 Set -1
Consider the following three statements about link state and distance vector
routing protocols, for a large network with 500 network nodes and 4000 links.
[S1] The computational overhead in link state protocols is higher than in distance
vector protocols.
[S2] A distance vector protocol (with split horizon) avoids persistent routing loops,
but not a link state protocol.
[S3] After a topology change, a link state protocol will converge faster than a
distance vector protocol.
Which one of the following is correct about S1, S2, and S3?', '{"A": "S1, S2, and S3 are all true.", "B": "S1, S2, and S3 are all false.", "C": "S1 and S2 are true, but S3 is false.", "D": "S1 and S3 are true, but S2 is false."}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('ad6cefd4-c1ae-4f1b-9605-82958439581c', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'Mark:1          GATE: 2014 Set -2
Which one of the following is TRUE about interior Gateway routing protocols –
Routing Information Protocol (RIP) and Open Shortest Path First (OSPF)', '{"A": "RIP uses distance vector routing and OSPF uses link state routing", "B": "OSPF uses distance vector routing and RIP uses link state routing", "C": "Both RIP and OSPF use link state routing", "D": "Both RIP and OSPF use distance vector routing"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('48790f73-e61e-49af-8e3c-eca345d31fa4', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'Mark:1         GATE: 2014 Set -2
In the diagram shown below L1 is an Ethernet LAN and L2 is a Token -Ring LAN.
An IP pa cket originates from sender S and traverses to R, as shown. The links
within each ISP, and across two ISPs, are all point to point optical links. The initial
value of TTL is 32. The maximum possible value of TTL field when R receives the
datagram is', '{"A": "25    (b) 24    (c) 26    (d) 28"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('75c73b7d-7726-4389-8803-a4b8c5f9b88b', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'Mark:2         GATE: 2014 Set -2
Consider the store and forward packet switched network given below. Assume that
the bandwidth of each link is 106 bytes / sec. A user on host a sends a file of size
103 bytes to host B through routers R1 and R2 in three different ways. In the first
case a single packet containing the complete file is transmitted from A to B. In the
second case, the file is split into 10 equal parts, and these packets are transmitted
from A to B. In the third case, the file is split into 20 equal parts and these packets
are sent from A to B. Each packet contains 100 bytes of header information along
with the user data. Consider only transmission time and ignore processing,
queuing and prop agation delays. Also assume that there are no errors during
transmission. Let T1, T2 and T3 be the times taken to transmit the file in the first,
second and third case respectively. Which one of the following is CORRECT?', '{"A": "T1 < T2 < T3    (b) T1 > T2 > T3", "C": "T2 = T3, T3 < T1   (d) T1 = T3, T3 > T2"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('8e787ce9-8b3b-4786-a240-a3a74a55cea0', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'Mark:1         GATE: 2014 Set -3
Host A (on TCP/IP v4 network A) sends an IP datagram D to host B (also on
TCP/IPv4 network B). Assume that no error occurred during the transmission of
D. When D reaches B,  which of the following IP header field(s) may be different
from that of the original datagram D?
I. TTL
II. Checksum
III. Fragment Offset', '{"A": "(i) only     (b) (i) and (ii) only", "C": "(ii) and (iii) only   (d) (i), (ii) and (iii)"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('0a49d097-02a6-40c6-ad79-2c6ce5339d7f', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'Mark:2         GATE: 2014 Set -3
Classless Inter -domain Routing (CIDR) receives a packet with address
131.23.151.76. The router’s routing table has the following entries:
Prefix   Output Interface Identifier
131.16.0.0/12          3
131.28.0.0/14           5
131.19.0.0/16              2
131.22.0.0/15   1
The identifier of the output interface on which this packet will be forwarded is___.', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('e1cf930e-f665-4886-a385-e601ef5cf559', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'Mark:2         GATE: 2014 Set -3
Every host in an IPv4 network has a 1 -second resolution real -time clock with
battery backup. Each host needs to generate up to 1000 unique identifiers per
second. Assume that each host has a globally unique IPv4 address. Design a 50 -
bit globally unique ID for this purpose. After what period (in seconds) will the
identifiers generated by a host wrap around?________________', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('ac61f1a4-0a74-4ac8-b592-350ef353f8b1', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'Mark:2         GATE: 2014 Set -3
An IP router with a Maximum Transmission Unit (MTU) of 1500 bytes has received
an IP packet of size 4404 bytes with an IP header of length 20 bytes. The values of
the relevant fields in the header of the third IP fragment generated by  the router
for this packet are', '{"A": "MF bit: 0, Datagram Length: 1444; offset: 370", "B": "MF bit: 1, Datagram Length: 1424; offset: 185", "C": "MF bit: 1, Datagram Length: 1500; offset: 37", "D": "MF bit: 0, Datagram Length: 1424; offset: 2960"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('01874c68-43f9-4d00-9a40-b7a620ec04ae', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'Mark:1         GATE: 2015 Set -1
Which one of the following fields of an IP header is NOT modified by a typical IP
router?', '{"A": "Checksum", "B": "Source address", "C": "Time to Live (TTL)", "D": "Length"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('37293d0d-6e19-4ef4-9601-c6d609b360bb', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'Mark:2         GATE: 2015 Set -2
Host A sends a UDP datagram containing 8880 bytes of user data to host B over
an Ethernet LAN. Ethernet frames may carry data up to 1500 bytes (i.e. MTU =
1500 bytes). Size of UDP header is 8 bytes and size of IP header is 20 bytes. There
is no opti on field in IP header. How may total number of IP fragments will be
transmitted and what will be the contents of offset field in the last fragment?', '{"A": "6 and 925", "B": "6 and 7400", "C": "7 and 1110", "D": "7 and 8880"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('773d5efa-8a74-47fd-a9d5-97b930591c03', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'Mark:2         GATE: 2015 Set -2
Consider the following routing table at an IP router
For each IP address in Group -I identify the correct choice of the next hop from
Group-II Using the entries from the routing table above.', '{"A": "i-a, ii-c, iii-e, iv-d", "B": "i-a, ii-d, iii-b, iv-e", "C": "i-b, ii-c, iii-d, iv-e", "D": "i-b, ii-c, iii-e, iv-d"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('81b4c60f-1a4b-4ae6-b0b7-a1a7a61e69ee', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'Mark:2         GATE: 2015 Set -3
In the network 200.10.11.144/27, the fourth octet (in decimal) of the last IP
address of the network which can be assigned to a host is ________', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('c84f09c2-e8e2-4a3a-9319-2e6fba9cfeba', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'Mark:2         GATE: 2016 Set -1
An IP datagram of size 1000 bytes arrives at a router. The router has to forward
this packet on a link whose MTU (maximum transmission unit) is 100 bytes.
Assume that the size of the IP header is 20 bytes. The number of fragments that
the IP datagram will be divided into for transmission is :_____________________', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('eaf44626-f0ac-4355-ae55-ca5fd58cab13', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'Mark:2         GATE: 2016 Set -1
For a host machine that uses the token bucket algorithm for congestion control,
the token bucket has a capacity of 1 megabyte and the maximum output r ate is
20 megabytes per second. Tokens arrive at a rate to sustain output at a rate of 10
megabytes per second. The token bucket is currently full and the machine needs
to send 12 megabytes of data. The minimum time required to transmit the data is
_________________ seconds.', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('0430fffc-805b-4cb6-985c-1c1696e69438', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'Mark:1         GATE: 2017 Set -2
Consider the following statements about the routing protocols, Routing
Information Protocol (RIP) and Open Shortest Path First (OSPF) in an IPv4 network.
I. RIP uses distance vector routing
II. RIP packets are sent using UDP
III. OSPF packets are sent using TCP
IV. OSPF operation is based on link-state routing
Which of the following above are CORRECT?', '{"A": "I and IV only", "B": "I, II and III only", "C": "I, II and IV only", "D": "II, III and IV only"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('ab227190-4576-4725-bdd0-bd8b3734effb', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'Mark: 1         GATE: 2017 Set -2
The maximum number of IPv4 router address addresses that can be listed in the
record route (RR) option field of an IPv4 header is ____.', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('97c03f54-4c41-4c03-a02e-c078b56c0966', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'Mark: 2          GATE: 2018
Consider an IP packet with a length of 4,500 bytes that includ es a 20 -byte IPv4
header and 40 -byte TCP header. The packet is forwarded to an IPv4 router that
supports a Maximum Transmission Unit (MTU) of 600 bytes. Assume that the
length of the IP header in all the outgoing fragments of this packet is 20 bytes.
Assume that the fragmentation offset value stored in the first fragment is 0. The
fragmentation offset value stored in the third fragment is ______ .', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('89e0fa18-64a6-4320-97b3-a2f045f8887b', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'Mark: 2          GATE: 2019
Suppose that in an IP-over-Ethernet network, a machine X wishes to find the MAC
address of another machine Y in its subnet. Which one of the following techniques
can be used for this?
finds the MAC address of Y and sends to X
finds the MAC address of Y and sends to X', '{"A": "X sends an ARP request packet with broadcast IP address in its local subnet", "B": "X sends an ARP request packet to the local gateway\u2019s MAC address which then", "C": "X sends an ARP request packet with broadcast MAC address in its local subnet", "D": "X sends an ARP request packet to the local gateway\u2019s IP address which then"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('fb6a56ff-e9bf-4cbf-9ad9-090d3c46439f', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'Mark: 2          GATE: 2019
Consider three machines M, N and P with IP addresses 100.10.5.2, 100.10.5.5 and
100.10.5.6 respectively. The subnet mask is set to 255.255.255.252 for all the
three machines. Which one of the following is true?', '{"A": "M, N and P all belong to the same subnet", "B": "Only N and P belong to the same subnet", "C": "M, N, and P belong to three different subnets", "D": "Only M and N belong to the same subnet"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('358a2f0e-1368-47c8-bc73-558bfaee6281', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'Mark:1          GATE: 2020
Consider the following statements about the functionality of an IP based router.
I. A router does not modify the IP packets during forwarding.
II. It is not necessary for a router to implement any routing protocol.
III. A router should reassemble IP fragments if the MTU of the outgoing link is
larger than the size of the incoming IP packet.
Which of the above statements is/are TRUE?', '{"A": "I and II only", "B": "I  only", "C": "II and III only", "D": "II only"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('b369c2a2-2b7b-4358-b956-ae55a09c3600', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'Mark: 2          GATE: 2020
An organization requires a range of IP address to assign one to each of its 1500
computers. The organization has approached an Internet Service Provider (ISP) for
this task. The ISP uses CIDR and serves the requests from the available IP address
space 202.61.0.0/17. The ISP wants to assign an address space to the organization
which will minimize the number of routing entries in the ISP’s router using route
aggregation. Which of the following address spaces are potential candidates from
which the ISP can allot any one of the organization?
I. 202.61.84.0/ 21
II. 202.61.104.0/ 21
III. 202.61.64.0/ 21
IV. 202.61.144.0/ 21', '{"A": "I and II only", "B": "II and III only", "C": "III and IV only", "D": "I and IV only"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('06d5ac19-a3cb-433a-86ea-bcde2210775b', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2009, 2, 'MCQ', 'While opening a TCP connection, the initial sequence number is to be derived using
a time-of-day (ToD) clock that keeps running even when the host is down. The low
order 32 bits of the counter of the ToD clock is to be used for the initial sequence
numbers. The clock counters increments once per millisecond. The maximum
packet lifetime is given to be 64s. Which one of  the choices given below is closest
to the minimum permissible rate at which sequence numbers used for packets of
a connection can increase?', '{"A": "0.015/s      (b) 0.064/s", "C": "0.135/s      (d) 0.327/s"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('d7251e96-71ad-4afd-8528-c982a0ffdf27', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'Mark:2           GATE: 2012
Consider an instance of TCP’s Additive Increase Multiplicative Decrease (AIMD)
algorithm where the window size at the start of the slow start phase is 2 MSS and
the threshold at the start of the first transmission is 8 MSS. Assume that a timeout
occurs during the fifth transmission. Find the congestion window size at the end
of the tenth transmission.', '{"A": "8 MSS", "B": "14 MSS", "C": "7 MSS", "D": "12 MSS"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('c1442a19-efce-4280-88f2-43506a177093', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'Mark:2  GATE: 2014 Set -1
Let the size of congestion window of a TCP connection be 32 KB when a timeout
occurs. The round trip time of the connection is 100 msec and the maximum
segment size used is 2 KB. The time taken (in msec) by the TCP connection to get
back to 32 KB congestion window is _________.', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('78974e88-bade-447e-ad47-81d4d2a97fe2', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'Mark:1         GATE: 2014 Set -2
Which one of the following socket API functions converts an unconnected active
TCP socket into a passive socket.', '{"A": "Connect", "B": "bind", "C": "listen", "D": "accept"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('08da8900-054a-4b6a-8236-89aeda391187', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'Mark: 1         GATE: 2015 Set -1
Suppose two hosts use a TCP connection to transfer a large file. Which of the
following statements is/are False with respect to the TCP connection?
1. If the sequence number of a segment is m, then the sequence number of the
Subsequent segment is always m+1.
2. If the estimated round trip time at any given point of time is t sec, the value of
the retransmission timeout is always set to greater than or equal to t sec.
3. The size of the advertised window never changes during the course of the TCP
connection.
4. The number of unacknowledged bytes at the sender is always less than or equal
to the advertised window', '{"A": "3 only", "B": "1 and 3 only", "C": "1 and 4 only", "D": "2 and 4 only"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('46fff2cf-b971-4529-9534-e04c28f559f6', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'Mark: 1         GATE: 2015 Set -2
Identify the correct order in which a server process must invoke the function calls
accept, bind, listen, and recv according to UNIX socket API.', '{"A": "Listen, accept, bind recv", "B": "Bind, listen, accept, recv", "C": "Bind, accept, listen, recv", "D": "Accept, listen, bind, recv"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('8577e2bc-7085-4e26-8266-f1b5981dc136', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'Mark: 2         GATE: 2015 Set -2
Assume that the bandwidth for a TCP connection is 1048560 bits/sec. Let α be
the value of RTT in milliseconds (rounded off to the nearest integer) after which
the TCP window scale option is needed. Let β be the maximum possible window
size with window scale option. Then the values of α and β are.', '{"A": "63 milliseconds 65535 \u00d7 214", "B": "63 milliseconds 65535 \u00d7 216", "C": "500 milliseconds 65535 \u00d7 214", "D": "500 milliseconds 65535 \u00d7 216"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('d151da51-a1e1-452b-95b0-cbbcd2fdd333', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'Mark: 1            GATE: 2015 Set -3
Consider the following statements.
I. TCP connections are full duplex.
II. TCP has no option for selective acknowledgment
III. TCP connections are message streams.', '{"A": "Only I is correct", "B": "Only I and II are correct", "C": "Only II and III are correct", "D": "All of I, II and III are correct"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('62c92041-d7f8-44ed-b811-cfb6b1a96dfa', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'Mark: 1         GATE: 2017 Set -1
Consider a TCP client and a TCP server running on two different machines. After
completing data transfer, the TCP client calls close to terminate the connection
and a FIN segment is sent to the TCP server. Server-side TCP responds by sending
an ACK which is received by the client-side TCP. As per the TCP connection state
diagram (RFC 793), in which state does the client side TCP connection wait for the
FIN from the server-side TCP?', '{"A": "LAST-ACK    (b) TIME-WAIT", "C": "FIN-WAIT-1    (d) FIN-WAIT-2"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('d39ebfde-869c-4581-8fe3-478009ec29ac', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'GATE: 2017 Set -2
Consider a socket API on Linux machine that supports UDP socket. A connected
UDP socket is a UDP socket on which connect function has already been called.
Which of the following statements is/are correct?
1. A connected UDP socket can  be used to communicate with multiple peers
simultaneously.
2. A process can successfully call connect function again for an already connected
UDP socket.', '{"A": "I only     (b) II only", "C": "Both I and II only   (d) Neither I nor II"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('0dfbf0f0-ff71-4190-8d81-271002b71f1a', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'Mark: 1          GATE: 2018
Consider a long -lived TCP session with an end -to-end bandwidth of 1 Gbps
(= 109 bits-per-second). The session starts with a sequence number of 1234. The
minimum time (in seconds, rounded to the closest integer) before thi s sequence
number can be used again is _______.', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('b5ed0b44-b8ae-4d6b-aa2e-4b98540cb393', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'Mark: 1          GATE: 2018
Match the following:
Field       Length in bits
P. UDP Header’s Port Number  I. 48
Q. Ethernet MAC Address    II. 8
R. IPv6 Next Header     III. 32
S. TCP Header’s Sequence Number  IV. 16', '{"A": "P-III, Q-IV, R-II, S-I    (b) P-II, Q-I, R-IV, S-III", "C": "P-IV, Q-I, R-II, S-III    (d) P-IV, Q-I, R-III, S-II"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('6d1e5394-9059-4895-98b9-9942f282ace0', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'Mark:2         GATE: 2020
Consider a TCP connection between a client and a server with the following
specifications; the round trip time is 6 ms, the size of the receiver advertised
window is 50 KB, slow -start threshold at the client is 32 KB, and the maximum
segment size is 2 KB. The connection is established at time t = 0. Assume that
there ar e no timeouts and errors during transmission. Then the size of the
congestion window (in KB) at time t + 60 ms after all acknowledgem ents are
processed is _________', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('e6f954ad-1f85-4520-96ea-a41c28f78d35', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'Mark:1           GATE: 2010
Which one of the following is not a client-server application?', '{"A": "Internet chat   (b) Web browsing", "C": "E-mail     (d) Ping"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('3f74af7c-55ad-4cc4-a20a-1bbb49a769b6', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'Mark:1          GATE: 2011
Consider different activities related to email:
m1: Send an email from a mail client to a mail server
m2: Download an email from mailbox server to a mail client
m3: Checking email in a web browser
Which is the application level protocol used in each activity?', '{"A": "m1: HTTP m2: SMTP m3: POP", "B": "m1: SMTP m2: FTP m3: HTTP", "C": "m1: SMTP m2: POP m3: HTTP", "D": "m1: POP m2: SMTP m3: IMAP"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('9e03acc7-7c81-4dc7-a41a-33d1fb663ae4', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'Mark:1           GATE: 2011
A layer-4 firewall (a device that can look at all protocol headers up to the
transport layer) CANNOT
the same IP address
and 5:00AM', '{"A": "Block entire HTTP traffic during 9:00PM and 5:00AM", "B": "Block all ICMP traffic", "C": "Stop incoming traffic from a specific IP address but allow outgoing traffic to", "D": "Block TCP traffic from a specific user on a multi-user system during 9:00PM"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('2665f6f6-fc79-42a8-a91e-9dc904be2c93', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'Mark:1           GATE: 2012
Which of the following transport layer protocols is used to support electronic mail?', '{"A": "SMTP  (b) IP   (c) TCP  (d) UDP"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('1d6469ed-1975-42ee-9c1b-fa93e968647f', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'Mark:1           GATE: 2012
The protocol data unit (PDU) for the application layer in the Internet stack is', '{"A": "Segment  (b) Datagram (c) Message  (d) Frame"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('fa20aec5-a451-45c4-9215-ffe0f025dd4f', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'Mark:1           GATE: 2013
The transport layer protocols used for real time multimedia, file transfer, DNS and
email, respectively are:', '{"A": "TCP, UDP, UDP and TCP", "B": "UDP, TCP, TCP and UDP", "C": "UDP, TCP, UDP and TCP", "D": "TCP, UDP, TCP and UDP"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('65f83b40-021e-49ef-9685-9e8c5b16a359', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'Mark:1            GATE: 2014 Set -1
Identify the correct order in which the following actions take place in an interaction
Between a web browser and a web server.
1. The web browser requests a webpage using HTTP.
2. The web browser establishes a TCP connection with the web server.
3. The web server sends the requested webpage using HTTP.
4. The web browser resolves the domain name using DNS.', '{"A": "4, 2, 1, 3", "B": "1, 2, 3, 4", "C": "4, 1, 2, 3", "D": "2, 4, 1, 3"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('97e33430-b648-443b-8848-9cc57b8b7181', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'Mark:2         GATE: 2014 Set -2
An IP machine Q has a path to another IP machine H via three IP routers R1, R2,
and R3.
Q—R1—R2—R3—H
H acts as an HTTP server, and Q connects to H via HTTP and downloads a file.
Session layer encryption is used, with DES as the shared key encryption protocol.
Consider the following four pieces of information:
[I1] The URL of the file downloaded by Q
[I2] The TCP port numbers at Q and H
[I3] The IP addresses of Q and H
[I4] The link layer addresses of Q and H
Which of I1, I2, I3, and I4 can an intruder learn through sniffing at R2 alone?', '{"A": "Only I1 and I2", "B": "Only I1", "C": "Only I2 and I3", "D": "Only I3 and I4"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('a17c59cb-4697-44d2-bb43-620a541da1f4', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'Mark:1          GATE: 2015 Set -2
Which one of the following statements is NOT correct about HTTP cookies?
an Internet user', '{"A": "A cookies is a piece of code that has the potential to compromise the security of", "B": "A cookie gains entry to the user\u2019s work area through an HTTP header", "C": "A cookie has an expiry date and time", "D": "Cookies can be used to track the browsing pattern of a user at a particular site"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('d59fac0e-21c6-424a-a099-4d049515579d', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'Mark: 1         GATE: 2016 Set -1
Which one of the following protocols is NOT used to resolve one form of address to
another one?', '{"A": "DNS", "B": "ARP", "C": "DHCP", "D": "RARP"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('a03ba18a-addf-4297-958b-fc2db303fb3a', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'Mark: 1         GATE: 2016 Set -1
Which of the following is/are example(s) of stateful application layer protocols?
(i)  HTTP     (ii) FTP
(iii) TCP     (iv) POP3', '{"A": "(i) and (ii) only", "B": "(ii) and (iii) only", "C": "(ii) and (iv) only", "D": "(iv) only"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('966a9715-1a15-4224-8178-ead9e42f752c', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'Mark: 1         GATE: 2016 Set -2
Identify the correct sequence in which the following packets are transmitted on the
network by a host when a browser requests a webpage from a remote server,
assuming that the host has just been restarted.', '{"A": "HTTP GET request, DNS query, TCP SYN", "B": "DNS query, HTTP GET request, TCP SYN", "C": "DNS query, TCP SYN, HTTP GET request", "D": "TCP SYN, DNS query, HTTP GET request"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('6477078c-9d6b-433b-9f47-72181fa31607', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'Mark:1            GATE: 2019
Which of the following protocol pairs can be used to send and retrieve e -mails (in
that order)?', '{"A": "IMAP, POP3", "B": "SMTP, POP3", "C": "SMTP, MIME", "D": "IMAP, SMTP"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('85145984-a9a6-48ba-8fb2-49b3c7812ed7', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'Mark: 1          GATE: 2020
Assume that you have made a request for a web page through your web browser
to a web server. Initially the browser cache is empty. Further, the browser is
configured to send HTTP requests in non-persistent mode. The web page contains
text and five very small images. The minimum number of TCP connections required
to display the web page completely in your browser is ________
Computer Network
1. C 2. B 3. C 4. A
1. D 2. C 3. 5 4. 320 5. 12
6. 8 7. 2500 8. 4 9. 87.11 10. D
1.  2.  3.  4.  5.
6.  7.  8.  9.  10.
1. D 2. D 3. C 4. B 5. A
6. C 7. C 8. A 9. A 10. C
11. C 12. D 13. A 14. C 15. D
16. D 17. 1 18. 256 19. A 20. B
21. C 22. A 23. 38 24. 158 25. 13
26. 1.1 27. 9 28. 144 29. C 30. B
31. D 32. B
1. A 2. C 3. 1100 4. C 5. B
6. B 7. c 8. a 9. d 10. b
11. 35 12. 13 13. 44
1. D 2. c 3. d 4. c 5. c
6. c 7. c 8. c 9. a 10. c
11. c 12. c 13. b 14. 6
Video Solution Play list Link of Operating System: Click Here
(https://www.youtube.com/playlist?list=PLqHw2_FIWUzaIFXymuruZI4CuVpc73
5es)
GATE Computer Science & IT
Computer Organization
And Architecture
(Topic-wise)
Cache Organization', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('565527ae-bedb-43fe-8e8f-e9f281442cb0', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2009, 1, 'MCQ', 'Consider a 4 -way set associative cache (initially empty) with total 16 cache
blocks. The main memory consists of 256 blocks and the request for memory
blocks is in the following order: 0, 255, 1, 4, 3, 8, 133, 159, 216, 129, 63, 8,
48, 32, 73, 92, and 155. Which one of the following memory block will NOT be
in cache if LRU replacement policy is used?
216', '{"A": "3    (b) 8    (c) 129   (d)"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('578ec88a-0e09-4498-91c0-83217b0f4ddd', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2010, 2, 'MCQ', 'A computer system has an L1 cache, an L2 cache, and a main memory unit
connected as shown below. The block size in L1 cache is 4 words. The block
size in L2 cache is 16 words. The memory access times are 2 nanoseconds, 20
nanoseconds and 200 nanoseconds for L1 cache, L2 cache and main memory
unit respectively.
When there is a miss in L1 cache and a hit in L2 cache, a block is transferred
from L2 cache to L1 cache. What is the time taken for this transfer?', '{"A": "2 nanoseconds    (b) 20 nanoseconds", "C": "22 nanoseconds    (d) 88 nanoseconds"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('db3aeeae-6008-43ef-b6ef-80e0525b47a0', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2010, 2, 'MCQ', 'A computer system has an L1 cache, an L2  cache, and a main memory unit
connected as shown below. The block size in L1 cache is 4 words. The block
size in L2 cache is 16 words. The memory access times are 2 nanoseconds. 20
nanoseconds and 200 nanoseconds for L1 cache, L2 cache and main memory
unit respectively.
When there is a miss in both L1 cache and L2 cache, first a block is transferred
from main memory to L2 cache, and then a block is transferred from L2 cache
to L1 cache. What is the total time taken for these transfers?', '{"A": "222 nanoseconds", "B": "888 nanoseconds", "C": "902 nanoseconds", "D": "968 nanoseconds"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('ae5616f9-b2a7-4bfe-86b1-7cad1cea17b4', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2011, 2, 'MCQ', 'An 8KB direct-mapped write-back cache is organized as multiple blocks, each
of size 32 -bytes. The processor generates 32 -bit addresses. The cache
controller maintains the tag information for each cache block comprising of
the following.
1 Valid bit
1 Modified bit
As many bits as the minimum needed to identify the memory block mapped
in the cache. What is the total size of memory needed at the cache controller
to store meta-data (tags) for the cache?', '{"A": "4864 bits  (b) 6144 bits (c) 6656 bits (d) 5376 bits"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('6d3f1f90-a00e-4c34-9aba-c130f72d551d', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2012, 2, 'MCQ', 'A computer has a 256 Kbyte, 4-way set associative, write back data cache with
block size of 32 Bytes. The processor send s 32 bit addresses to the cache
controller. Each cache tag directory entry contains, in addition to address tag,
2 valid bits, 1 modified bit and 1 replacement bit. The number of bits in the
tag field of an address is', '{"A": "11    (b) 14    (c) 16    (d) 27"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('304a1221-4a1c-4d1a-b1a2-1e9369790249', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2012, 2, 'MCQ', 'A computer has a 256 Kbyte, 4-way set associative, write back data cache with
block size of 32 Bytes. The processor sends 32 bit addresses to the cache
controller. Each cache tag directory entry contains, in addition to address tag,
2 valid bits, 1 modified bit and 1 replacement bit. The size of the cache tag
directory is
bits', '{"A": "160 Kbits  (b) 136 bits   (c) 40 Kbits   (d) 32"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('190d628c-4afd-442e-82a9-356c1446db2e', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2013, 1, 'MCQ', 'In a k-way set associative cache, the cache is divided into v sets, each of which
consists of k lines. The lines of a set are placed in sequence one after another.
The lines in set s are sequenced before the lines in set (s+1). The main memory
blocks are numbered 0 onwards. The main memory block numbered j must
be mapped to any one of the cache lines from.', '{"A": "(j mod v) * k to (j mod v) * k + (k-1)", "B": "(j mod v) to (j mod v) + (k-1)", "C": "(j mod k) to (j mod k) + (v-1)", "D": "(j mod k) * v to (j mod k) * v + (v-1)"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('af5f1f82-7256-4e24-a425-494d1bb5e784', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2014, 2, 'MCQ', 'An access sequence of cache block addresses is of length N and contains n
unique block addresses. The number of unique block addresses between two
consecutive accesses to the same block address is bounded above by k. What
is the miss ratio if the access sequence is passed through a cache of
associativity A ≥ k exercising least-recently-used replacement policy?
 [ SET-1]', '{"A": "n/N   (b)1/N   (c)1/A   (d)k/n"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('36e81bee-3332-4bc8-8443-e5f9804e0d7b', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2014, 1, 'MCQ', 'A 4-way set-associative cache memory unit with a capacity of 16 KB is built
using a block size of 8 words. The word length is 32 bits. The size of the
physical address space is 4 GB. The number of bits for the TAG field is _____
 [SET-2]', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('8f4266a1-516f-4ed9-aee9-cb317fa1ab28', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2014, 2, 'MCQ', 'In designing a computer’s cache system, the cache block (or cache line) size is
an important Parameter. Which one of the following statements is correct in
this context?
overhead
time
 [ SET -
2', '{"A": "A smaller block size implies better spatial locality", "B": "A smaller block size implies a smaller cache tag and hence lower cache tag", "C": "A smaller block size implies a larger cache tag and hence lower cache hit", "D": "A smaller block size incurs a lower cache miss penalty"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('2a715370-96c5-468d-b43b-67bfdf0e6639', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2014, 2, 'MCQ', 'If the associativity of a processor cache is doubled while keeping the capacity
and block size unchanged, which one of the following is guaranteed to be NOT
affected?
 [SET-2]', '{"A": "Width of tag comparator", "B": "Width of set index decoder", "C": "Width of way selection multiplexor", "D": "Width of processor to main memory data bus"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('7a2115a4-900e-4a80-9150-9bda44d119ec', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2014, 2, 'MCQ', 'The memory access time is 1 nanosecond for a read operation with a hit in
cache, 5 Nanoseconds for a read operation with a miss in cache, 2
nanoseconds for a write operation with a hit in cache and 10 nanoseconds for
a write operation with a miss in cache. Execution of a sequence of instructions
involves 100 instruction fetch operations, 60 memory operand Read
operations and 40 memory operand write operations. The cache hit -ratio is
0.9. T he  Average memory access time (in nanoseconds) in executing the
sequence of instructions is __________  [ SET-3]', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('29f5fd2f-9ed9-4135-aaf3-8b10d55c6fcf', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2015, 1, 'MCQ', 'Assume that for a certain processor, a read request takes 50 nanoseconds on
a cache miss and 5 nanoseconds on a cac he hit. Suppose while running a
program, it was observed that 80% of the processors read requests result in a
cache hit. The average and access time in nanoseconds is _______.
 [ SET-2]', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('83cc0182-3613-404a-9e0e-622388352eda', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2015, 1, 'MCQ', 'Consider a machine with a byte addressable main memory of 220 bytes, block
size of 16 bytes and a direct mapped cache having 2 12 cache lines. Let the
addresses of two consecutive bytes in main memory be (E201F) 16 and
(E2020)16. What are the tag and cache line address (in hex) for main memory
address (E201F)16?
 [ SET-3]', '{"A": "E, 201   (b) F, 201  (c) E, E20   (d) 2, 01F"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('b22c650f-fbc2-4ada-8806-6b82d96f3002', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2016, 1, 'MCQ', 'A processor can support a maximum memory of 4 GB, where the memory is
word-Addressable (a word consists of two bytes). The size of the address bus
of the processor  is at ____ least bits   
[SET-1]', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('e893eaa8-9c74-4245-81b6-3bbeb9780a92', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2016, 2, 'MCQ', 'The width of the physical address on a machine is 40 bits. The width of the
tag field in a 512 KB 8-way set associative cache is ____________ bits
 [SET-2]', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('477d7bc0-fa17-476c-b416-c8031552a71e', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2016, 2, 'MCQ', 'A file system uses an in-memory cache to cache disk blocks. The miss rate of
the cache is shown in the figure. The latency to read a block from the cache
is 1 ms and to read a block from the disk is 10 ms. Assume that the cost of
checking whether a block exists in the cache is negligible. Available cache
sizes are in multiples of 10 MB.
The smallest cache size required to ensure an average read latency of less
than 6 ms is _______     [ SET-2]', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('b5418273-05a6-468e-b4dd-19d3df3b85fe', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2017, 1, 'MCQ', 'Consider a two-level cache hierarchy with L1 and L2 caches. An application
incurs 1.4 memory accesses per instruction on average. For this application,
the miss rate of L1 cache is 0.1; the L2 cache experiences, on average, 7
misses per 1000 instructions. The miss rate L2 expressed correct to two
decimal places is _________.     [SET-1]', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('baba80be-962f-4199-a4c5-6dc7d53d110f', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2017, 2, 'MCQ', 'Consider a 2 -way set associative cache with 256 blocks and uses LRU
replacement, Initially the cache is empty. Conflict misses are those misses
which occur due to contention of multiple Blocks for the same cache set.
Compulsory misses occur due to first time access to the block. The following
sequence of accessed to memory blocks (0, 128, 256, 128, 0, 128, 256, 128,
1, 129, 257,129, 1, 129, 257, 129) is repeated 10 times. The number of conflict
misses experienced by the cache is __________ [ SET-
1]', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('0ab49947-f639-41ed-909a-93ef40059d1a', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2017, 2, 'MCQ', 'A cache memory unit with capacity of N words and block size of B words is to
be designed. If it is designed as a direct mapped cache, the length of the TAG
field is 10 bits. If the cache unit is now designed as a 16 -way set-associative
cache, the length of the TAG field is ______ bits.
[ SET-1]', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('cbdf0a0b-5b28-41cb-954f-2313d1d57a00', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'In a two-level cache system, the access times of L1  and L2 are 1 and 8 clock
cycles, respectively. The miss penalty from the L2  cache to main memory is
18 clock cycles. The miss rate of L1  cache is twice that of L2. The average
memory access time (AMAT) of this cache system is 2cycles. The miss rates of
L1 and L2 respectively are:', '{"A": "0.111 and 0.056", "B": "0.056 and 0.111", "C": "0.0892 and 0.1784", "D": "0.1784 and 0.0892    [Marks: 2][GATE: 2017][ SET-2]"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('5ac79e1c-c522-4297-8bf7-5de835b57e66', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2017, 2, 'MCQ', 'The read access times and the hit ratios for different caches in a memory
hierarchy are as given below:
Bottom of Form
The read access time of main memory in 90 nanoseconds. Assume that the
caches use the referred -word-first read policy and the write -back policy.
Assume that all the caches are direct mapped caches. Assume that the dirty
bit is always 0 for all the blocks in the caches. In execution of a program, 60%
of memory reads are for instruction fetch and 40% are for memory operand
fetch. The average read access time in nanoseconds (up to 2 decimal places)
is _________
[ SET-2]', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('bc4eb3ab-3515-4eac-9640-20eec42c0618', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2017, 2, 'MCQ', 'Consider a machine with byte addressable memory of 2 32 bytes divided into
blocks of size 32 bytes. Assume a direct mapped cache having 512 cache lines
is used with this machine. The size of tag field in bits is _____
[ SET-2]', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('cfa47e2f-4ad0-4361-999e-a49192e223d8', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2018, 2, 'MCQ', 'The size of  the physical address space of a processor is 2 P bytes. The word
length is 2W bytes. The capacity of cache memory is 2N bytes. The size of each
cache block is 2 M words. For a  K-way set -associative cache memory, the
length (in number of bits) of the tag field is', '{"A": "P - N - log2K    (b) P - N + log2K", "C": "P - N - M - W - log2K   (d) P - N - M - W + log2K"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('7080f287-ee44-4e02-b789-2de4da47b921', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2019, 1, 'MCQ', 'A certain processor uses a fully associative cache of size 16 kB, The cache
block size is 16 bytes. Assume that the main memory is byte addressable and
uses a 32-bit address. How many bits are required for the Tag and the Index
fields respectively in the addresses generated by the processor?', '{"A": "24 bits and 0 bits   (b) 28 bits and 4 bits", "C": "24 bits and 4 bits   (d) 28 bits and 0 bits"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('9210e5d8-d57a-4e90-935c-fe5282ef2f67', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2019, 2, 'MCQ', 'A certain processor deploys a single -level cache. The cache block size
is 8 words and the word size is  4 bytes. The memory system uses a  60-MHz
clock. To service a cache miss, the memory controller first takes  1 cycle to
accept the starting address of the block, it then takes 3 cycles to fetch all the
eight words of the block, and finally transmits the words of the requested block
at the rate of  1 word per cycle. The maximum bandwidth for the memory
system when the prog ram running on the processor issues a series of read
operations is  ______×106 bytes/sec', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('e378785b-aea4-465c-b758-930d796b94f0', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 2, 'MCQ', 'A direct mapped cache memory of 1 MB has a block size of 256 bytes. The
cache has an access time of 3 ns and a hit rate of 94%. During a cache miss,
it takes 20 ns to bring the first word of a block from the main memory, while
each subsequent word takes 5 ns. The word size is 64 bits. The average
memory access time in ns (round off to 1 decimal place) is _________.', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('431aa6f4-27f9-4047-9c32-146f973f8ecc', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'A computer system with a word length of 32 bits has a 16 MB byte-addressable
main memory and a 64 KB, 4-way set associative cache memory with a block
size of 256 bytes. Consider the following four physical addresses represented
in hexadecimal notation.
A1 = 0x42C8A4, A2 = 0x546888, A3 = 0x6A289C, A4 = 0x5E4880
Which one of the following is TRUE?
2020]
Instruction Set Architecture', '{"A": "A1 and A4 are mapped to different cache sets.", "B": "A1 and A3 are mapped to the same cache set.", "C": "A3 and A4 are mapped to the same cache set.", "D": "A2 and A3 are mapped to the same cache set.      [Marks: 2][GATE:"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('fbffcc04-ce04-44dd-b8d6-e9a3fedf6c84', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'Consider a hypothetical processor with an instruction of type LW R1, 20(R2),
which during execution reads a 32 -bit word from memory and stores it in a
32-bit register R1. The effective address of the memory location is obtained by
the addition of a constant 20 and th e contents of register R2. Which of the
following best reflects the addressing mode implemented by this instruction
for operand in memory?
2011]', '{"A": "Immediate Addressing", "B": "Register Addressing", "C": "Register Indirect Scaled Addressing", "D": "Base Indexed Addressing      [Marks: 1][GATE:"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('e0951a25-7d15-40ae-80b7-8cbca1af3b0b', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2014, 2, 'MCQ', 'A machine has a 32-bit architecture, with 1-word long instructions. It has 64
registers, each of which is 32 bits long. It needs to support 45 instructions,
which have an immediate operand in addition to two register  operands.
Assuming that the immediate operand is an unsigned integer, the maximum
value of the immediate operand is __________.
[SET-1]', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('4dece28f-20f4-447c-bb8a-056e75c5105c', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2015, 1, 'MCQ', 'For computers based on three-address instruction formats, each address field
can be used to specify which of the following:
(S1) A memory operand
(S2) A processor register
(S3) An implied accumulator register
[SET-1]', '{"A": "Either S1 or S2     (b) Either S2 or S3", "C": "Only S2 and S3     (d) All of S1, S2 and S3"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('6677c004-0b82-49e4-abfc-fb7940a01b14', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2016, 1, 'MCQ', 'A processor has 40 distinct instructions and 24 general purpose registers. A
32-bit instruction word has an opcode, two register operands and an
immediate operand. The number of bits available for the immediate operand
ﬁeld is _________       [SET-2]', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('d60206b0-3adc-4b3c-bcb4-445cc8658528', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2016, 2, 'MCQ', 'Consider a processor with 64 registers and an instruction set of size twelve.
Each instruction has ﬁve distinct ﬁelds, namely, opcode, two source register
identiﬁers, one destination register identi ﬁer, and a twelve -bit immediate
value. Each instruction must be stored in memory in a byte -aligned fashion.
If a program has 100 instructions, the amount of memory (in bytes) consumed
by the program text is _________.   [SET-2]', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('7118a678-2af4-408e-83b3-b533372dee53', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2017, 1, 'MCQ', 'Consider C struct defined below:
struct data{
int marks [100];
char grade;
int cnumber;
};
struct data student;
The base address of student is available in register R1. The filed student.
grade can be accessed efficiently using.
complement 16- bit representation.  [SET-1]', '{"A": "Post-increment addressing mode, (R1)+", "B": "Pre-decrement addressing  mode, -(R1)", "C": "Register direct addressing mode, R1", "D": "Index addressing mode, X(R1), where X is an offset represented in 2''s"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('9c4e49fa-3749-48c2-89f4-e9e7e79d4872', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2018, 1, 'MCQ', 'Consider the following processor design characteristics.
I. Register-to-register arithmetic operations only
II. Fixed-length instruction format
III. Hardwired control unit
Which of the characteristics above are used in the design of a RISC
processor?', '{"A": "I and II only", "B": "II and III only", "C": "I and III only", "D": "I, II and III"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('f8ede4c4-5084-497b-9762-18354d0acf0c', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2018, 2, 'MCQ', 'A processor has 16 integer registers (R0, R1, …, R15) and 64 floating point
registers (F0, F1, … , F63). It uses a 2-byte instruction format. There are four
categories of instructions: Type -1, Type -2, Type-3, and Type 4. Type -1
category consists of four instructions, each with 3 integer register operands
(3Rs). Type-2 category consists of eight instructions, each with 2 floating point
register operands (2Fs). Type -3 category consists of fourteen instruc tions,
each with one integer register operand and one floating point register operand
(1R+1F). Type-4 category consists of N instructions; each with a floating point
registers operand (1F). The maximum value of N is _______.', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('de6250b3-23fc-4bf1-aa82-c94b8cd063bc', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 2, 'MCQ', 'A processor has 64 registers and uses 16 -bit instruction format. It has two
types of instructions: I -type and R-type. Each I-type instruction contains an
opcode, a register name, and a 4-bit immediate value. Each R-type instruction
contains an opcode and two  register names. If there are 8 distinct I -type
opcodes, then the maximum number of distinct R-type opcodes is _____.
44  
Instruction Pipeline', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('3105c5c8-325e-4be0-adb8-c649b3b7974a', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2009, 2, 'MCQ', 'Consider a 4 stage pipeline processor. The number of cycles needed by the
four instructions I1, I2, I3, I4 in stages S1, S2, S3, S4 is shown below
What is the number of cycles needed to execute the following loop?
For (i=1 to 2) {I1; I2; I3; I4;}', '{"A": "16    (b) 23    (c) 28    (d) 30"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('61b0a9f7-87a8-4793-8705-fe13e95cb814', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2010, 1, 'MCQ', 'A 5-stage pipelined processor has Instruction Fetch (IF), Instruction Decode
(ID), Operand Fetch (OF), Perform Operation (PO) and Write Operand (WO)
stages. The IF, ID, OF and WO stages take 1 clock cycle each for any
instruction. The PO stage takes 1 cloc k cycle for ADD and SUB instructions,
3 clock cycles for MUL instruction, and 6 clock cycles for DIV instruction
respectively. Operand forwarding is used in the pipeline. What is the number
of clock cycles needed to execute the following sequence of instructions?', '{"A": "13    (b) 15    (c) 17    (d) 19"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('0088f686-c0b8-4a16-b351-05b24768b777', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2011, 2, 'MCQ', 'Consider an instruction pipeline with four stages (S1, S2, S3 and S4) each with
combinational circuit only. The pipeline registers are required between each
stage and at the end of the last stage. Delays for the stages and for the pipeline
registers are as given in the figure:
What is the approximate speed up of the pipeline in steady state under ideal
conditions when Compared to the corresponding non -pipeline
implementation?', '{"A": "4.0   (b) 2.5   (c) 1.1  (d) 3.0"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('091c9fde-52d9-47d2-ab8b-fb91b9a697af', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2012, 2, 'MCQ', 'Register renaming is done in pipelined processors', '{"A": "As an alternative to register allocation at compile time", "B": "For efficient access to function parameters and local variables", "C": "To handle certain kinds of hazards", "D": "As part of address translation"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('0ac91025-dd86-4d4a-a044-c56c60c441ca', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2013, 2, 'MCQ', 'Consider an instruction pipeline with five stages without any branch
prediction: Fetch Instruction (FI), Decode Instruction (DI), Fetch Operand (FO),
Execute Instruction (EI) and Write Operand (WO). The stage delays for FI, DI,
FO, EI and WO are 5 ns, 7 ns, 10 ns, 8 ns and 6 ns, respectively. There are
intermediate storage buffers after each stage and the delay of each buffer is 1
ns. A program consisting of 12 instructions I 1, I2, I3, …, I12 is executed in this
pipelined processor. Instruction I 4 is the only branch instruction and its
branch target is I9. If the branch is taken during the execution of this program,
the time (in ns) needed to complete the program is', '{"A": "132", "B": "165", "C": "176", "D": "328"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('a48235f2-10e3-4dd0-8416-2557bcc77d05', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2014, 2, 'MCQ', 'Consider a 6 -stage instruction pipeline, where all stages are perfectly
balanced. Assume that there is no cycle-time overhead of pipelining. When an
application is executing on this 6 -stage pipeline, the speedup achieved with
respect to non-pipelined execution if 25% of the instructions incur 2 pipeline
stall cycles is ___________.
 [SET-1]', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('b85c5cd7-a6bc-493b-b73c-0d673c518a9f', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2014, 2, 'MCQ', 'Consider two processors P1 and P2 executing the same instruction set. Assume
that under identical conditions, for the same input, a program running on P2
takes 25% less time but incurs 20% more CPI (clock cycles per instruction) as
compared to the program running on P1. If the clock frequency of P1 is 1GHz,
then the clock frequency of P2 (in GHz) is _____
 [SET-1]', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('73846a69-c9de-471c-b855-cfc5c50b8071', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2014, 1, 'MCQ', 'Consider the following processors (ns stands for nanoseconds). Assume that
the pipeline registers have zero latency
P1: Four-stage pipeline with stage latencies 1 ns, 2 ns, 2 ns, 1 ns.
P2: Four-stage pipeline with stage latencies 1 ns, 1.5 ns, 1.5 ns, 1.5 ns.
P3: Five-stage pipeline with stage latencies 0.5 ns, 1 ns, 1 ns, 0.6 ns, 1 ns.
P4: Five-stage pipeline with stage latencies 0.5 ns, 0.5 ns, 1 ns, 1 ns, 1.1 ns.
Which processor has the highest peak clock frequency?
 [SET-3]', '{"A": "P1", "B": "P2", "C": "P3", "D": "P4"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('bc62339a-808e-4887-8c53-ddf3e8f534f0', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2014, 2, 'MCQ', 'An instruction pipeline has five stages, namely, instruction fetch (IF),
instruction decode and register fetch (ID/RF), instruction execution (EX),
memory access (MEM), and register writeback (WB) with stage latencies 1 ns,
2.2 ns, 2 ns, 1 ns, and 0.75 ns, respectively (ns stands for nanoseconds). To
gain in terms of frequency, the designers have decided to split the ID/RF stage
into three stages (ID, RF1, RF2) each of latency 2.2/3 ns. Also, the EX stage is
split into two stages (E X1, EX2) each of latency 1 ns. The new design has a
total of eight pipeline stages. A program has 20% branch instructions which
execute in the EX stage and produce the next instruction pointer at the end of
the EX stage in the old design and at the end of the EX2 stage in the new
design. The IF stage stalls after fetching a branch instruction until the next
instruction pointer is computed. All instructions other than the branch
instruction have an average CPI of one in both the designs. The execution times
of this program on the old and the new design are P and Q nanoseconds,
respectively. The value of P/Q is __________
 [SET-3', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('5bf03e73-495f-4bf9-8405-f25975cb8600', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2015, 2, 'MCQ', 'Consider a non -pipelined processor with a clock rate of 2.5 gigahertz and
average cycles per instruction of four. The same processor is upgraded to a
pipelined processor with five stages; but due to the internal pipeline delay, the
clock speed is reduced to 2 gigahertz. Assume that there are no stalls in the
pipeline. The speed up achieved in this pipelined processor is_________.
 [ SET-1]', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('db9b7fe0-fac8-44ca-b79f-e9af0ee1aaa5', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2015, 2, 'MCQ', 'Consider the sequence of machine instructions given below:
MUL R5, R0, R1
DIV R6, R2, R3
ADD R7, R5, R6
SUB R8, R7, R4
In the above sequence, R0 to R8 are general purpose registers. In the
instructions shown, the First register stores the result of the operation
performed on the second and the third registers. This sequence of instructions
is to be executed in a pipelined instruction processor with the Following 4
stages: (1) Instruction Fetch and Decode (IF), (2) Operand Fetch (OF), (3)
Perform Operation (PO) and (4) write back the result (WB). The IF, OF and WB
stages take 1 clock cycle each for any instruction. The PO stage takes 1 clock
cycle for ADD or SUB instruction, 3 clock cycles for MUL instruction and 5
clock cycles for DIV instruction. The pipelined processor uses operand
forwarding from the PO stage to the OF stage. The number of clock cycles
taken For the execution of the above sequence of instructions is ___________.
 [SET-2]', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('ef83b77e-a197-46d9-be67-4f2352808469', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2015, 2, 'MCQ', 'Consider the following reservation table for a pipeline having three stages 𝑆1,
S2 and 𝑆3.
The minimum average latency (MAL) is ______ [SET-3]', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('650dd2f9-9812-48b7-8883-627169bfb449', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2015, 1, 'MCQ', 'Consider the following code sequence having five instructions 𝐼1 to 𝐼5. Each of
these instructions has the following format.
OP Ri, Rj, Rk
Where operation OP is performed on contents of registers Rj and Rk and the
result is stored in register Ri.
𝐼1: ADD R1, R2, R3
𝐼2: MUL R7, R1, R3
𝐼3: SUB R4, R1, R5
𝐼4: ADD R3, R2, R4
𝐼5: MUL R7, R8, R9
Consider the following three statements.
S1: There is an anti-dependence between instructions 𝐼2 and 𝐼5
S2: There is an anti-dependence between instructions 𝐼2 and 𝐼4
S3: Within an instruction pipeline anti-dependence always creates one or
more stalls which one of above statements is/are correct?
[SET-3]', '{"A": "Only S1 is true    (b) Only S2 is true", "C": "Only S1 and S3 are true   (d) Only S2 and S3 are true"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('ea18f00b-966e-4015-9559-9f89de5512e1', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2016, 2, 'MCQ', 'The stage delays in a 4-stage pipeline are 800, 500, 400 and 300 picoseconds.
The first stage (with delay 800 picoseconds) is replaced with functionally
equivalent design involving t wo stages with respective delays 600 and 350
picoseconds. The throughput increase of the pipeline is _____________________
 [SET-1]', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('78feba2b-ab8d-445c-992f-2ba1e94b240a', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2016, 2, 'MCQ', 'Consider a 3 GHz (gigahertz) processor with a three -stage pipeline and stage
latencies τ1, τ2, τ3 and such that τ1 = 3τ2/4 = 2τ3. If the longest pipeline stage
is split into two pipeline stages of equal latency, the new frequency is _________
GHz, ignoring delays in the pipeline registers.
 [SET-2]', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('33419ef7-dff0-44cc-b714-1bfbe46deb99', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2016, 2, 'MCQ', 'Suppose the functions F and G can be computed in 5 and 3 nanoseconds by
functional units UF and UG, respectively. Given two instances of UF and two
instances of UG, it is required to implement the computation F (G(Xi)) for 1 ≤ i
≤ 10. Ignoring all other delays, the minimum time  required to complete this
computation is _________ nanoseconds.[SET-2]', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('2013ce4c-9110-4361-9fb3-2162a64fca38', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2017, 2, 'MCQ', 'Instruction execution in a processor is divided into 5 stage, Instruction Fetch
(IF), Instruction decode (ID), Operand Fetch (OF), Execute (EX), and Write Back
(WB). These stages take 5, 4, 20, 10, and 3 nanoseconds (ns) respectively. A
pipelined implementation of the processor requires buffering between each
pair of consecutive stages with a delay of 2 ns. Two pipelined implementations
of the processor are contemplated;
 a naive pipeline implementation (NP) with 5 stages and
 An efficient pipeline (EP) where the OF stage is divided into stages OF1 and
OF2 with Execution times of 12 ns respectively.
The speedup (correct to two decimal places) achived by EP over NP in executing
20 Independent instructions with no hazards is __________.
[ SET-1]', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('e7c031b4-ab82-4cb0-97df-28b418d456a0', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2017, 2, 'MCQ', 'Consider a RISC machine where each instruction is exactly 4 bytes long.
Conditional and unconditional branch instructions use PC - relative
addressing mode with Offset specified in bytes to the target location of the
branch instruction. Further the Offset is always with respect to the address of
the next instruction in the program sequence. Consider the following
instruction sequence. If the target of t he branch instruction is i, then the
decimal value of the Offset is __________.
Instr. No. Instruction
i:
i+1:
i+2:
i+3:
add R2, R3, R4
sub R5, R6, R7
cmp R1, R9, R10
beq R1, Offset
[SET-1]', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('b499579f-bab0-4ba5-b4fa-7c4650fc5089', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2018, 2, 'MCQ', 'The instruction pipeline of a RISC processor has the following stages:
Instruction Fetch (IF), Instruction Decode (ID), Operand Fetch (OF), Perform
Operation (PO) and Writeback (WB). The IF, ID, OF and WB stages take 1 clock
cycle each for every instruction. Consider a Sequence of 100 instr uctions. In
the PO stage, 40 instructions take 3 clock cycles each, 35 instructions take 2
clock cycles each, and the remaining 25 instructions take 1 clock cycle each.
Assume that there are no data hazards and no control hazards. The number
of clock cycle s required for completion of execution of the sequence of
instructions is ______.', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('5ec387ef-abdd-4875-abb2-8ecdba29f2e0', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 2, 'MCQ', 'Consider a non -pipelined processor operating at 2.5 GHz. It takes 5 clock
cycles to complete an instruction. You are going to make a 5-stage pipeline out
of this processor. Overheads associated with pipelining force you to operate
the pipelined processor at 2 GHz. In a given program, assume that 30% are
memory instructions, 60% are ALU instructions and the rest are branch
instructions. 5% of the mem ory instructions cause stalls of 50 clock cycles
each due to cache misses and 50% of the branch instructions cause stalls of
2 cycles each. Assume that there are no stalls associated with the execution of
ALU instructions. For this program, the speedup ach ieved by the pipelined
processor over the non -pipelined processor (round off  to 2 decimal places) is
_____.         
Input – Output and Control', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('60694c51-d80e-4964-b018-f02dcd312032', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'A computer handles several interrupt sources of which the following are
relevant for this question.
 Interrupt from CPU temperature sensor (raises interrupt if CPU
temperature is too high)
 Interrupt from Mouse(raises interrupt if the mouse is moved or a button is
pressed)
 Interrupt from Keyboard(raises interrupt when a key is pressed or
released)
 Interrupt from Hard Disk(raises interrupt when a disk read is completed)
Which one of these will be handled at the HIGHEST priority?
2011]', '{"A": "Interrupt from Hard Disk", "B": "Interrupt from Mouse", "C": "Interrupt from Keyboard", "D": "Interrupt from CPU temperature sensor   [Marks: 1][GATE:"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('774e7cd4-b3c8-4686-8d36-2315c3e7812b', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'A hard disk has 63 sectors per track, 10 platters each with 2 recording
surfaces and 1000 cylinders. The address of a sector is given as a triple (c, h,
s), where c is the cylinder number, h is the surface number and s is the sector
number. Thus, the 0 th sector is addressed as (0, 0, 0), the 1 st sector as (0, 0,
1), and so on. The address <400, 16, 29> corresponds to sector number:
[Marks: 2][GATE: 2009', '{"A": "505035", "B": "505036", "C": "505037", "D": "505038"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('c8fc3130-4ddf-41cf-abe4-849221cb25e0', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'A hard disk has 63 sectors per track, 10 platters each with 2 recording
surfaces and 1000 cylinders. The address of a sector is given as a triple (c, h,
s), where c is the cylinder number, h is the surface number and s is the
sector number. Thus, the 0th sector is addressed as (0, 0, 0), the 1st sector
as (0, 0, 1), and so on. The address 1039th corresponds to sector number:', '{"A": "(0,15,31)", "B": "(0,16,30)", "C": "(0,16,31)", "D": "(0,17,31)       [Marks: 2][GATE: 2009]"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('a5a3b00f-aa32-4c7f-8fb6-4b32a9d71ded', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2009, 2, 'MCQ', 'A CPU generally handles an interrupt by executing an interrupt service
routine
current instruction.', '{"A": "As soon as an interrupt is raised.", "B": "By checking the interrupt register at the end of fetch cycle.", "C": "By checking the interrupt register after finishing the execution of the", "D": "By checking the interrupt register at fixed time intervals"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('1baa4f5f-46b3-4b99-bc90-f08a66709888', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'A main memory unit with a capacity of 4 megabytes is built using 1M × 1 -bit
DRAM chips. Each DRAM chip has 1K rows of cells with 1K cells in each row.
The time taken for a single refresh operation is 100 nanoseconds. The time
required to perform one refresh operation on all the cells in the memory unit
is', '{"A": "100 nanoseconds", "B": "100\u00d7210 nanoseconds", "C": "100\u00d7220 nanoseconds", "D": "3200\u00d7220 nanoseconds    [Marks: 1][GATE: 2010]"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('080fe520-e8c7-482c-8618-98185dee7062', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2011, 2, 'MCQ', 'On a non-pipelined sequential processor, a program segment, which is a part
of the interrupt service routine, is given to transfer 500 bytes from an I/O
device to memory.
Initialize the address register
Initialize the count to 500
LOOP: Load a byte from device
Store in memory at address given by address register
Increment the address register
Decrement the count
If count != 0 go to LOOP
Assume that each statement in this program is equivalent to machine
instruction which takes one clock cycle to execute if it is a non -load/store
instruction. The load-store instructions take two clock cycles to execute. The
designer of the system also has an alternate approach of using DMA controller
to implement the same transfer. The DMA controller requires 20 clock cycles
for initialization and other overheads. Each DMA transfer cycle takes two clock
cycles to transfer one byte of data from the device to the memory. What is the
approximate speedup when the DMA controller based design is used in place
of the interrupt driven program based input-output?', '{"A": "3.4    (b) 4.4    (c) 5.1  (d) 6.7"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('daea5211-3f3d-4b50-8cae-d3b436c1aaf6', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2011, 1, 'MCQ', 'An application loads 100 libraries at start -up. Loading each library requi res
exactly one disk access. The seek time of the disk to a random location is given
as 10 ms. Rotational speed of disk is 6000 rpm. If all 100 libraries are loaded
from random locations on the disk, how long does it take to load all libraries?
(The time t o transfer data from the disk block once the head has been
positioned at the start of the block may be neglected)', '{"A": "0.50 sec   (b) 1.50 sec   (c) 1.25 sec  (d) 1.00 sec"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('78d18149-73c3-4084-b416-6ced66872317', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2012, 1, 'MCQ', 'The amount of ROM needed to implement a 4 bit multiplier is', '{"A": "64 bits   (b) 128 bits   (c) 1 Kbits  (d) 2 Kbits"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('ad7d97af-468f-4889-be2e-8da08ee5d3dc', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2013, 1, 'MCQ', 'Consider the following sequence of micro-operations.
MBR ← PC
MAR ← X
PC ← Y
Memory ← MBR
Which one of the following is a possible operation performed by this sequence?', '{"A": "Instruction fetch", "B": "Operand fetch", "C": "Conditional branch", "D": "Initiation of interrupt service"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('cfd0dbc5-a39f-4bd5-8e0d-0cb24febd337', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2013, 1, 'MCQ', 'Consider a hard disk with 16 recording surfaces (0-15) having 16384 cylinders
(0-16383) and each cylinder contains 64 sectors (0-63). Data storage capacity
in each sector is 512 bytes. Data are organized cylinder -wise and the
addressing format is. A file of size 42797 KB is stored in the disk and the
starting disk location of the file is <1200, 9, 40>. What is the cylinder number
of the last sector of the file, if it is stored in a contiguous manner?
1284', '{"A": "1281   (b) 1282   (c) 1283   (d)"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('9aa5ce16-323b-40c8-b5bb-b3ccde6188c2', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2013, 2, 'MCQ', 'A RAM chip has a capacity of 1024 words of 8 bits each (1K × 8). The number
of 2 × 4 decoders with enable line needed to construct a 16K × 16 RAM from
1K × 8 RAM is', '{"A": "4     (b) 5     (c) 6     (d) 7"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('c460fb7b-4fb9-4292-b7cb-c341725bf8dc', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2014, 2, 'MCQ', 'Consider a main memory system that consists of 8 memory modules attached
to the system bus, Which is one word wide. When a write request is made, the
bus is occupied for 100 nanoseconds (ns) By the data, address, and control
signals. During the same 100 ns, and for 500 ns thereafter, the addressed
memory module executes one cycle accepting and storing the data. The
(internal) Operation of different memory modules may overlap in time, but only
one request can be on the bus at any time. The maximum number of stores (of
one word each) that can be initiated in 1 Millisecond is ____________
[SET-2]', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('dc5cb40a-aaf2-4c3a-9b98-eb3e9962bed6', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2015, 2, 'MCQ', 'Consider a disk pack with a seek time of 4 milliseconds and rotational speed
of 10000 rotations per minute (RPM). It has 600 sectors per track and each
sector can store 512 bytes of data. Consider a file stored in the disk. The  file
contains 2000 sectors. Assume that every sector access Necessitates a seek,
and the average rotational latency for accessing each sector is half of the time
For one complete rotation. The total time (in milliseconds) needed to read the
entire file is ____________.    [SET-1]', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('7852a8e1-8afd-4f48-9776-b10ea9799bc7', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2015, 2, 'MCQ', 'Consider a typical disk that rotates at 15000 rotations per minute (RPM) and
has a transfer rate of 50×106 bytes/sec. If the average seek time of the disk is
twice the average rotational delay and the controller’s transfer time is 10 times
the disk transfer time, the average time (in milliseconds) to read or write a 512-
byte sector of the disk is ____________.  [SET -
2]', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('708d3f75-c84a-4d77-bcde-691dec16e146', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'Consider a processor with byte -addressable memory. Assume that all
registers, including Program Counter (PC) and Program Status Word (PSW),
are of size 2 bytes. A stack in the main memory is implemented from memory
location (0100)16 and it grows upward. The stack pointer (SP) points to the top
element of the stack. The current value of SP is (016E)16. The CALL instruction
is of two words, the first word is the op -code and the second word is the
starting address of the subroutine (one word = 2 bytes). The CALL instruction
is implemented as follows:
• Store the current value of PC in the stack
• Store the value of PSW register in the stack
• Load the starting address of the subroutine in PC
The content of PC just before the fetch of a CALL instruction is (5FA0) 16. After
execution of the CALL instruction, the value of the stack pointer is', '{"A": "(016A)16       (b) (016C)16", "C": "(0170)16       (d) (0172)16"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('9777ddd9-fc5c-4bdc-896e-fb710204f56f', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2016, 2, 'MCQ', 'The size of the data count register of a DMA controller is 16 bits. The processor
needs to transfer a file of 29,154 kilobytes from disk to main memory. The
memory is byte  addressable. The minimum number of times the DMA
controller needs to get the control of the system bus from the processor to
transfer the file from the disk to main memory is _________.
 [SET-1]', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('536d99c8-e963-4a15-9c11-5ee7d38bb4f8', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2018, 1, 'MCQ', 'The following are some events that occur after a device controller issues an
interrupt while Process L is under execution.
(P) The processor pushes the process status of L onto the control stack.
(Q) The processor finishes the execution of the current instruction.
(R) The processor executes the interrupt service routine.
(S) The processor pops the process status of L from the control stack.
(T) The processor loads the new PC value based on the interrupt.
Which one of the following is the correct order in which the events above
occur?', '{"A": "QPTRS", "B": "PTRSQ", "C": "TRPQS", "D": "QTPRS"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('ab744d16-d055-4f0e-a724-982f6a19b529', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'A 32-bit wide main memory unit with a capacity of 1 GB is built using 256M
× 4-bit DRAM Chips. The number of rows of memory cells in the DRAM chip is
214. The time taken to perform one refresh operation is 50 nanoseconds. The
refresh period is 2 milliseconds. The Percentage (rounded to the closest integer)
of the time available for performing the memory Read/write operations in the
main memory unit is __________.', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('4e120b0a-d20e-4230-8398-769d92f9e6e4', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2019, 1, 'MCQ', 'The chip select logic for a certain DRAM chip in a memory system design is
shown below. Assume that the memory system has 16 address lines denoted
by A15 to A0. What is the range of addresses (in hexadecimal) of the memory
system that can get enabled by the chip select (CS) signal?', '{"A": "C800 to C8FF", "B": "C800 to CFFF", "C": "DA00 to DFFF", "D": "DA00 to DFFF"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('a77d2463-df50-4202-828f-3305b2892330', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'Consider the following statements.
I. Daisy chaining is used to assign priorities in attending interrupts.
II. When a device raises a vectored interrupt, the CPU does polling to identify
the source of the interrupt.
III. In polling, the CPU periodically checks the status bits to know if any device
needs its attention.
IV. During DMA, both the CPU and DMA controller can be bus m asters at the
same time.
Which of the above statements is/are TRUE?', '{"A": "I and IV only", "B": "I and II only", "C": "III only", "D": "I and III only       [Marks: 2][GATE: 2020]"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('4320b3e1-3ceb-47bc-93b9-841794b9c750', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 2, 'MCQ', 'Consider the following data path diagram.
Consider an instruction:
R0 ← R1 + R2
The following steps are used to execute it over the given data path. Assume
that PC is incremented appropriately. The subscripts r and w indicate read
and write operations, respectively.
1. R2r, TEMP1r, ALUadd, TEMP2w
2. R1r, TEMP1w
3. PCr, MARw, MEMr
4. TEMP2r, R0w
5. MDRr, IRw
Which one of the following is the correct order of execution of the above
steps?

Structure Query Language and Relational Algebra', '{"A": "2, 1, 4, 5, 3     (b) 1, 2, 4, 3, 5", "C": "3, 5, 2, 1, 4     (d) 3, 5, 1, 2, 4"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('2d8b0b3c-f953-4e57-9e2d-510b4f7f2629', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2009, 2, 'MCQ', 'Let R and S be relational schemes such that R = {a, b, c} and S = {c}. Now
consider the following queries on the database
I. πR−S(r) − πR−S (πR−S(r) × s − πR−S,S(r))
II. {t ∈πR−S(r) ∧∀u∈s (∃v∈r(u = v[S] ∧t = v[R−S]))}
III. {t ∈πR−S(r) ∧∀v∈r (∃u∈s (u = v[S] ∧t = v[R−S]))}
IV.  Select R.a, R.b From R, S Where R.c = S.c
Which of the above queries are equivalent?', '{"A": "I and II", "B": "I and III", "C": "II and IV", "D": "III and IV"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('73fc5c95-6552-4683-aa3f-35cf55070b46', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2009, 2, 'MCQ', 'Consider the following relational schema:
Suppliers(sid:integer, sname:string, city:string, street:string)
Parts(pid:integer, pname:string, color:string)
Catalog(sid:integer, pid:integer, cost:real)
Consider the following relational query on the above database:
SELECT S.sname
FROM Suppliers S
WHERE S.sid NOT IN (SELECT C.sid
FROM Catalog C
WHERE C.pid NOT IN (SELECT P.pid
FROM Parts P
WHERE P.color<> ''blue''))
Assume that relations corresponding to the above schema are not empty.
Which one of the following is the correct interpretation of the above query?', '{"A": "Find the names of all suppliers who have supplied a non-blue part.", "B": "Find the names of all suppliers who have not supplied a non-blue part.", "C": "Find the names of all suppliers who have supplied only blue parts.", "D": "Find the names of all suppliers who have not supplied only blue parts."}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('8a02bc76-52ca-4118-8a8d-f99677e4d088', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2010, 1, 'MCQ', 'A relational schema for a train reservation database is given below.
Passenger (pid, pname, age)
Reservation (pid, class, tid)
Table: Passenger
Pid Pname Age
0
1
2
3
Sachin
Rahul
Sourav
Anil
65
66
67
69
Table : Reservation
Pid Classs Tid
0
1
2
5
1
3
AC
AC
SC
AC
SC
AC
8200
8201
8201
8203
8204
8202
What pids are returned by the following SQL query for the above instance of
the tables?
SELECT pid
FROM Reservation
WHERE class = ‘AC’ AND EXISTS (SELECT * FROM Passenger
WHERE age > 65 AND
Passenger.pid = Reservation.pid)', '{"A": "1,0       (b) 1, 2", "C": "1, 3       (d) 1, 5"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('53e2f1a8-5c5b-498d-b66a-857b11c85160', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'Consider a database table T containing two columns X and Y each of type
integer. After the creation of the table, one record (X = 1, Y = 1) is inserted in
the table. Let MX and MY denote the respective maximum values of X and Y
among all records in the table at any point in time. Using MX and MY, new
records are inserted in the table 128 times with X and Y values being MX +
1, 2*MY + 1 respectively. It may be noted that each time after the ins ertion,
values of MX and MY change. What will be the output of the following SQL
query after the steps mentioned above are carried out?
SELECT Y FROM T WHERE X = 7;
[Marks: 2][GATE:2011', '{"A": "127", "B": "255", "C": "129", "D": "257"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('3f97a0ae-a996-498d-9df7-66fff3791045', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2011, 2, 'MCQ', 'Database table by name Loan_Records is given below.
Borrower Bank_Manager Loan_Amount
Ramesh Sunderajan 10000.00
Suresh Ramgopal 5000.00
Mahesh Sunderajan 7000.00
What is the output of the following SQL query?
SELECT Count(*)
FROM ((SELECT Borrower, Bank_Manager FROM Loan_Records) AS S
(SELECT Bank_Manager, Loan_Amount FROM Loan_Records) AS T);', '{"A": "3    (b) 9    (c) 5    (d) 6"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('d6c921d1-0a98-40c8-8b02-ae7bb21643db', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2012, 1, 'MCQ', 'Which of the following statements are TRUE about an SQL query?
P: An SQL query can contain a HAVING clause even if it does not have a
GROUP BY clause
Q: An SQL query can contain a HAVING clause only if it has a GROUP BY
clause
R: All attributes used in the GROUP BY clause must appear in the SELECT
clause
S: Not all attributes used in the GROUP BY clause need to appear in the
SELECT clause', '{"A": "P and R   (b) P and S   (c) Q and R  (d) Q and S"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('c549df44-65ed-47e6-8e76-a3d8a3694f10', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2012, 2, 'MCQ', 'Suppose R1(A, B) and R2(C, D) are two relation schemas. Let r1 and r2 be
the corresponding relation instances. B is a foreign key that refers to C in r2.
If data in r1 and r2 satisfy referential integrity constraints, which of the
following is ALWAYS TRUE?
C(r2) = ∅
C(r2)', '{"A": "\u03a0B(r1", "B": "\u03a0C(r2) \u2212 \u03a0B(r1) = \u2205", "C": "\u03a0B(r1", "D": "\u03a0B(r1) \u2212 \u03a0C(r2) \u2260 \u2205"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('9f20dfd6-b9dd-4d4b-9695-0a12028d5028', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2012, 2, 'MCQ', 'Consider the following relations A, B, C.
How many tuples does the result of the following relational algebra
expression contain? Assume that the schema of A U B is the same as that of
A.
(A ∪B)⋈A.Id>40 ∨C.Id< 15 C', '{"A": "7    (b) 4     (c) 5    (d) 9"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('ec60b588-98fa-4c33-8336-1391c589afb6', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'Consider the following relations A, B, C.
How many tuples does the result of the following SQL query contain?
SELECT A.Id
WHERE A.Age> ALL(SELECT B.Age
WHERE B Name =’Arun’)
[Marks: 2][GATE:
2012]', '{"A": "4   (b)3    (c)0   (d)1"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('d4fea648-fefe-4733-8b05-69989367ceb0', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2013, 2, 'MCQ', 'Consider the following relational schema.
 Students (rollno: integer, sname: string)
 Courses (course no: integer, cname: string)
 Registration (rollno: integer, course no: integer, percent: real)
Which of the following queries are equivalent to this query in English?
"Find the distinct names of all students who score more than 90% in the
course numbered 107"
(i) SELECT DISTINCT S.sname
FROM Students as S, Registration as R
WHERE R.rollno = S.rollno AND R.courseno =107 AND R.percent
> 90
(ii) Πsname(σcourseno = 107 ∧percent > 90(Registration ⋈Students))
(iii) {T ∣∃S ∈Students, ∃R ∈Registration(S.rollno = R.rollno
∧R.courseno = 107 ∧R.percent > 90 ∧T.sname = S.sname)}
(iv) {<SN>∣∃SR ∃RP (<SR,SN>∈Students ∧<SR,107,RP>∈Registration ∧RP > 90)', '{"A": "I, II, III and IV     (b) I, II and III only", "C": "I, II and IV only    (d) II, III and IV only"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('77f32ab8-9b0e-44d4-91df-a38f96dea298', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'Given the following statements:
S1: A foreign key declaration can always be replaced by an equivalent check
assertion in SQL.
S2: Given the table R(a, b, c) where a and b together form the primary key,
the following is a valid table definition.
CREATE TABLE S (
a INTEGER,
d INTEGER,
e INTEGER,
)
Which one of the following statements is CORRECT?', '{"D": "Both S1 and S2 are FALSE.  [Marks: 1][GATE:  2014][SET-1]", "A": "S1 is TRUE and S2 is FALSE.", "B": "Both S1 and S2 are TRUE.", "C": "S1 is FALSE and S2 is TRUE."}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('f20abf31-a8d1-4351-ba9f-17693a31150d', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2014, 2, 'MCQ', 'Given the following schema:
 employees(emp-id, first-name, last-name, hire-date, dept-id, salary)
 departments(dept-id, dept-name, manager-id, location-id)
You want to display the last names and hire dates of all latest hires  in their
respective departments in the location ID 1700. You issue the following
query:
SELECT last-name, hire-date
FROM employees
WHERE (dept-id, hire-date) IN (SELECT dept-id, MAX(hire-date) FROM
employees JOIN departments USING (dept-id) WHERE location-id = 1700
GROUP BY dept-id);
What is the outcome?
table joins in a subquery.
[SET-1]', '{"A": "It executes but does not give the correct result.", "B": "It executes and gives the correct result.", "C": "It generates an error because of pairwise comparison.", "D": "It generates an error because the GROUP BY clause cannot be used with"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('c48df834-aeeb-466a-993d-3f2770797762', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2014, 2, 'MCQ', 'SQL allows tuples in relations, and correspondingly defines the multiplicity
of tuples in the result of joins. Which one of the following queries always gives
the same answer as the nested query shown below:
select * from R where a in (select S.a from S)
54 [SET-2]', '{"A": "select R.* from R, S where R.a = S.a", "B": "select distinct R.* from R,S where R.a = S.a", "C": "select R.* from R, (select distinct a from S) as S1 where R.a  = S1.a", "D": "select R.* from R,S where R.a = S.a and is unique R"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('00a26e69-1d9d-4674-bb6d-fd6c5df8db2b', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2014, 2, 'MCQ', 'What is the optimized version of the relation algebra expression
πA1(πA2(σF1(σF2(r)))), where A1, A2 are sets of attributes in r with A1 ⊂A2 and
F1, F2 are Boolean expressions based on the attributes in r?
21 [SET-3]', '{"A": "\u03c0A1(\u03c3(F1\u2227F2)(r))     (b) \u03c0A1(\u03c3(F1\u2228F2)(r))", "C": "\u03c0A2(\u03c3(F1\u2227F2)(r))     (d) \u03c0A2(\u03c3(F1\u2228F2)(r))"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('b4368edc-0247-45af-9bea-309ae7960bb1', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2014, 2, 'MCQ', 'Consider the relational schema given below, where eId of the relation
dependent is a foreign key referring to empId of the relation employee.
Assume that every employee has at least one associated dependent in the
dependent relation.
Employee (empId, empName, empAge)
Dependent(depId, eId, depName, depAge)
Consider the following relational algebra query:
ΠempId(employee)−ΠempId(employee ⋈ (empId=eID)∧(empAge≤depAge)depen
dent)
The above query evaluates to the set of  empIds of employees whose age is
greater than that of
[SET-3]', '{"A": "Some dependent.", "B": "All dependents.", "C": "Some of his/her dependents.", "D": "All of his/her dependents."}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('5f16aa99-c371-4227-8862-9701d44a4ab0', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2014, 2, 'MCQ', 'Consider the following relational schema:
employee(empId, empName, empDept)
customer(custId, custName, salesRepId, rating)
SalesRepId is a foreign key referring to empId of the employee relation.
Assume that each employee makes a sale to at least one customer. What
does the following query return?
SELECT empName
FROM employee E
WHERE NOT EXISTS (SELECT custId
FROM customer C
WHERE C.salesRepId = E.empId AND C.rating <>
''GOOD'');
‘GOOD’ rating.
‘GOOD’ rating.
‘GOOD’ rating.
rating.
[SET-3]', '{"A": "Names of all the employees with at least one of their customers having a", "B": "Names of all the employees with at most one of their customers having a", "C": "Names of all the employees with none of their customers having a", "D": "Names of all the employees with all their customers having a \u2018GOOD\u2019"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('954bc8f0-ed09-4386-bc11-45a64d420913', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2015, 1, 'MCQ', 'SELECT operation in SQL is equivalent to
retains duplicates
SQL retains duplicates
[SET-1]', '{"A": "the selection operation in relational algebra", "B": "the selection operation in relational algebra, except that SELECT in SQL", "C": "the projection operation in relational algebra", "D": "the projection operation in relational algebra, except that SELECT in"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('8958117a-7e89-4a96-a4a7-442bb425c115', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2015, 2, 'MCQ', 'Consider the following relations:
Consider the following SQL query.
SELECT S.Student_Name, sum(P.Marks)
FROM Student S, Performance P
WHERE S.Roll_No = P.Roll_No
GROUP BY S.Student_Name
The number of rows that will be returned by the SQL query is _____________.
[SET-1]', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('ecdb6094-11eb-4e0e-9706-66b00d70c2aa', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'Consider two relations R1 (A, B) with the tuples (1, 5), (3, 7) and R2 (A, C) =
(1, 7),   (4, 9). Assume that R (A, B, C) is the full natural outer join of R1
and R2. Consider the following tuples of the form (A,B,C): a = (1,5,null), b =
(1,null,7), c = (3, null, 9), d = (4,7,null), e = (1,5,7), f = (3,7,null), g =
(4,null,9). Which one of the following statements is correct?', '{"A": "R contains a, b, e, f, g but not c, d.", "B": "R contains all of a, b, c, d, e, f, g.", "C": "R contains e, f, g but not a, b.", "D": "R contains e but not f, g.    [Marks: 2][GATE: 2015][SET-2]"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('03773f7a-e278-40ef-bce5-7a6056916a4c', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2015, 1, 'MCQ', 'Consider the following relation
Cinema (theater, address, capacity)
Which of the following options will be needed at the end of the SQL query
SELECT P1.address FROM Cinema P1
Such that it always finds the addresses of theaters with maximum capacity?
[SET-3]', '{"A": "WHERE P1.capacity >= All (select P2.capacity from Cinema P2)", "B": "WHERE P1.capacity >= Any (select P2.capacity from Cinema P2)", "C": "WHERE P1.capacity > All (select max(P2.capacity) from Cinema P2)", "D": "WHERE P1.capacity > Any (select max(P2.capacity) from Cinema P2)"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('37e8ba97-f39b-4917-9de9-a09c7689bf64', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2016, 2, 'MCQ', 'Consider the following database table named water_schemes:
The number of tuples returned by the following SQL query is
with total(name, capacity) as
select district_name, sum(capacity)
from water_schemes
group by district_name
with total_avg(capacity) as
select avg(capacity)
from total
select name
from total, total_avg
Where total. capacity >= t otal_avg.capacity[SET-2]', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('32deca54-af0d-4d27-a720-3efc3363e487', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2017, 1, 'MCQ', 'Consider a database that has the relation schema CR(StudentName,
CourseName). An instance of the schema CR is as given below.
The following query is made on the database.
T1 ←ПCourseName(σStudentName=''SA''(CR))
T2 ← CR ÷ T1
The number of rows in T2 is ______________ [SET-1]', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('17b2edfe-6618-4c49-a47d-4d32fa75c91b', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2017, 2, 'MCQ', 'Consider a database that has the relation schemas EMP (EmpId, EmpName,
DepId), and DEPT (DeptName, DeptId). Note that the DepId can be permitted
to be NULL in the relation EMP. Consider the following queries on the
database expressed in tuple relational calculus.
I. {t | ∃u ∈ EMP (t[EMPName] = u[EmpName] ∧∀v ∈ DEPT (t[DeptId] ≠
v[DeptId]))}
II. {t | ∃u ∈ EMP (t[EMPName] = u[EmpName] ∧∃v ∈ DEPT (t[DeptId] ≠
v[DeptId]))}
III. {t | ∃u ∈ EMP (t[EMPName] = u[EmpName] ∧∃v ∈ DEPT (t[DeptId] =
v[DeptId]))}
Which of the above queries are safe?
[SET -1]', '{"A": "I and II only", "B": "I and III only", "C": "II and III only", "D": "I, II, and III"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('9d0400e6-136d-4b0b-b31e-738abd0baf96', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2017, 1, 'MCQ', 'Consider the following tables T1 and T2:
In table T1, P is the primary key; Q is the foreign key referencing R in table
T2 with on -delete cascade and on -update cascade. In table T2, R is the
primary key and S is the foreign key referencing P in the table T1 with on -
delete set NULL and on-update cascade. In order to delete record (3, 8) from
table, numbers of additional record that need to be deleted from table T1 is
_________.
[SET-2]', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('1b90850a-e436-4bf3-96fd-55eb2ad27a63', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2017, 2, 'MCQ', 'Consider the following database table named top_scorer.
Consider the following SQL query:
SELECT ta.player FROM top_scorer AS ta
WHERE ta.goals > ALL (SELECT tb.goals
FROM top_scorer AS tb
WHERE tb.country = ''Spain'')
AND ta.goals > ANY (SELECT tc.goals
FROM top_scorer AS tc
WHERE tc.country = ''Germany'')
The number of tuples returned by the above SQL query is ____.
[SET-2]', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('c72ab22e-7823-4265-881b-2168124160a9', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2018, 2, 'MCQ', 'Consider the relations r(A, B) and s(B, C), where s.Bis a primary key and r.Bis
a foreign key referencing s.B. Consider the query
Q: 𝑟⋈(𝜎𝐵<5(𝑠))
Let LOJ denote the natural left outer -join operation. Assume that r and s
contain no null values. Which one of the following queries is NOT equivalent
to Q?', '{"A": "\ud835\udf0e\ud835\udc35<5(\ud835\udc5f\u22c8\ud835\udc60)      (b) \ud835\udf0e\ud835\udc35<5(\ud835\udc5f\ud835\udc3f\ud835\udc42\ud835\udc3d\ud835\udc60)", "C": "\ud835\udc5f\ud835\udc3f\ud835\udc42\ud835\udc3d (\ud835\udf0e\ud835\udc35<5(\ud835\udc60))     (d) \ud835\udf0e\ud835\udc35<5(\ud835\udc5f) \ud835\udc3f\ud835\udc42\ud835\udc3d\ud835\udc60"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('84de71bb-96f9-4b58-9579-ab359f652a98', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2018, 1, 'MCQ', 'Consider the following two tables and four queries in SQL.
Book (isbn, bname), Stock (isbn, copies)
Query 1:  SELECT B.isbn, S.copies
FROM Book B INNER JOIN Stock S
ON B.isbn = S.isbn;
Query 2:  SELECT B.isbn, S.copies
FROM Book B LEFT OUTER JOIN Stock S
ON B.isbn = S.isbn;
Query 3:  SELECT B.isbn, S.copies
FROM Book B RIGHT OUTER JOIN Stock S
ON B.isbn = S.isbn;
Query 4:  SELECT B.isbn, S.copies
FROM Book B FULL OUTER JOIN Stock S
ON B.isbn = S.isbn;
Which one of the queries above is certain to have an output that is a superset
of the outputs of the other three queries?', '{"A": "Query 1", "B": "Query 2", "C": "Query 3", "D": "Query 4"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('718b8270-89e0-4635-bcac-2e449ecbae8f', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2019, 2, 'MCQ', 'A relational database contains two tables Student and Performance as shown
below:
The primary key of the Student table is Roll_no. For the Performance table,
the columns Roll_no. and Subject_code together from the primary key.
Consider the SQL query given below:
SELECT S.Student_name, sum(P.Marks)
FROM Student S, Performance P
WHERE  P.Marks  >  84
GROUP BY S.Student_name;
The number of rows returned by the above SQL query is _________.', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('ff8dbe09-2c9d-4ac1-a8c4-7c20c4dfd35e', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2019, 2, 'MCQ', 'Consider the following relation P(X, Y, Z), Q(X, Y, T) and R(Y, V):
How many tuples will be returned by the following relational algebra query?
Пx(σP.Y=R.Y ∧ R.V=V2(P × R)) - Пx(σQ.Y=R.Y ∧ Q.T>2(Q × R))', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('e291100f-eaad-40b1-83e5-5e2513d37dd0', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'Consider a relational database containing the following schemas.
The primary key of each table is indicated by underlining the constituent
fields.
SELECT S.sno, S.sname
FROM Suppliers s, Catalogue c
WHERE S.sno = S.sno AND cost > (SELECT AVG (cost)
FROM Catalogue
WHERE pno = ‘P4’
GROUP BY pno);', '{"A": "4    (b) 5    (c) 0    (d) 2"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('c069933b-72e4-4bcf-99ea-f5b7e48e7a8a', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'Consider the following relational schema:
Suppliers(sid:integer, sname:string, city:string, street:string)
Parts(pid:integer, pname:string, color:string)
Catalog(sid:integer, pid:integer, cost:real)
Assume that, in the suppliers relation above, each su pplier and each street
within a city has a unique name, and (sname, city) forms a candidate key. No
other functional dependencies are implied other than those implied by
primary and candidate keys. Which one of the following is TRUE about the
above schema?
2009]', '{"A": "The schema is in BCNF", "B": "The schema is in 3NF but not in BCNF", "C": "The schema is in 2NF but not in 3NF", "D": "The schema is not in 2NF     [Marks: 2][GATE:"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('1d9ef8b9-3362-4522-8476-03027dfb9645', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2010, 2, 'MCQ', 'The following functional dependencies hold for relations R(A, B, C)
and S(B, D, E):
B  A
A  C
The relation R contains 200 tuples and the relation S contains 100 tuples.
What is the maximum number of tuples possible in the natural join R ⋈ S?', '{"A": "100       (b) 200", "C": "300        (d) 2000"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('a5d991b9-3157-4792-aa45-572309208f58', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2011, 1, 'MCQ', 'Consider a relational table  with a single record for each registered student
with the following attributes.
1. Registration_Num: Unique registration number of each registered student
2. UID: Unique identity number, unique at the  national level for each citizen
3. BankAccount_Num: Unique account number at the bank. A student can
have multiple accounts or join accounts. This attribute stores the   primary
account number.
4. Name: Name of the student
5. Hostel_Room: Room number of the hostel
Which one of the following option is INCORRECT?', '{"A": "BankAccount_Num is candidate key", "B": "Registration_Num can be a primary key", "C": "UID is candidate key if all students are from the same country", "D": "If S is a superkey such that S\u2229UID is NULL then S\u222aUID is also a superkey"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('197b3043-f241-42a6-983c-07221cec7dbc', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2012, 1, 'MCQ', 'Which of the following is TRUE?
dependent on every key of R', '{"A": "Every relation in 3NF is also in BCNF", "B": "A relation R is in 3NF if every non-prime attribute of R is fully functionally", "C": "Every relation in BCNF is also in 3NF", "D": "No relation can be in both BCNF and 3NF"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('2d4bff80-ec4e-43c8-a95a-94300ad0000f', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2013, 2, 'MCQ', 'Relation R has eight attributes ABCDEFGH. Fields of R contain only atomic
values. F = {CH  G, A BC, B  CFH, E A, F  EG} is a set of functional
dependencies (FDs) so that F+ is exactly the set of FDs that hold for R. How
many candidate keys does the relation R have?', '{"A": "3    (b) 4    (c) 5    (d) 6"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('37f1e76c-9804-4eb9-9f14-9eabbf95847e', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2013, 2, 'MCQ', 'Relation R has eight attributes ABCDEFGH. Fields of R contain only atomic
Values. F = {CH  G, A BC, B  CFH, E A, F  EG} is a set of functional
dependencies (FDs) so that F+ is exactly the set of FDs that hold for R.
Consider the FDs given in above question. The relation R is', '{"A": "in 1NF, but not in 2NF.    (b) in 2NF, but not in 3NF.", "C": "in 3NF, but not in BCNF.    (d) in BCNF"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('5af49a14-b052-493c-a612-5342fbf47f3b', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2014, 1, 'MCQ', 'Consider the relation scheme R = {E, F, G, H, I, J, K, L, M, M} and the set of
functional dependencies {{E, F} -> {G}, {F} -> {I, J}, {E, H} -> {K, L}, K -> {M}, L -
> {N} on R. What is the key for R?
[SET-1]', '{"A": "{E, F}      (b) {E, F, H}                     (c) {E, F, H, K, L}  (d) {E}"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('eac15fad-c2c2-44af-8b21-98d1a5f44599', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'Given the following two statements:
S1: Every table with two single -valued attributes is in 1NF, 2NF, 3NF and
BCNF.
S2: AB→C, D→E, E→C is a minimal cover for the set of functional
dependencies AB→C, D→E, AB→E, E→C.
Which one of the following is CORRECT?', '{"A": "S1 is TRUE and S2 is FALSE.", "B": "Both S1 and S2 are TRUE.", "C": "S1 is FALSE and S2 is TRUE.", "D": "Both S1 and S2 are FALSE.  [Marks: 2][GATE: 2014][SET-1]"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('fa583e7e-79d9-4df8-83ba-69fa073f95be', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2014, 1, 'MCQ', 'The maximum number of super keys for the relation schema R(E, F, G, H)
with E as the key is.___________  [SET-2]', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('1ece32bd-4981-47ee-b0a1-4287164c4b5b', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2014, 2, 'MCQ', 'Given the STUDENTS relation as shown below.
For (StudentName, StudentAge) to be the key for this instance, the value X
should not be equal to ____________
[SET-2]', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('8f794586-5c02-4c24-a26e-9bdcbec3bcec', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2014, 2, 'MCQ', 'A prime attribute of a relation scheme R is an attribute that appears
[SET-3]', '{"A": "in all candidate keys of R.", "B": "in some candidate key of R.", "C": "in a foreign key of R.", "D": "only in the primary key of R."}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('326c3787-0b27-44a2-aa5c-fa78d2cdd36c', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2015, 1, 'MCQ', 'Consider the relation X(P, Q, R, S, T, U) with the following set of functional
dependencies
𝐹 = {
{𝑃,𝑅}→{𝑆,𝑇},
{𝑃,𝑆,𝑈}→{𝑄,𝑅}
}
Which of the following is the trivial functional dependency in 𝐹+, where 𝐹+ is
closure of F?
[SET-3]', '{"A": "{\ud835\udc43,\ud835\udc45} \u2192 {\ud835\udc46,\ud835\udc47}     (b) {\ud835\udc43,\ud835\udc45} \u2192 {\ud835\udc45,\ud835\udc47}", "C": "{\ud835\udc43,\ud835\udc46} \u2192 {\ud835\udc46}     (d) {\ud835\udc43, \ud835\udc46, \ud835\udc48} \u2192 {\ud835\udc44}"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('ee5f391d-3312-4b47-bdcd-6824ee540499', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'Which of the following is NOT a su per key in a relational schema with
attributes V, W, X, Y, Z and primary key VY?', '{"A": "VXYZ", "B": "VWXZ", "C": "VWXY", "D": "VWXYZ      [Marks: 1][GATE: 2016][SET-1]"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('7d4f87c7-8ed0-40b3-a548-f04bd2f6469a', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'A database of research articles in a journal uses the following schema.
(VOLUME, NUMBER, STARTPAGE, ENDPAGE, TITLE, YEAR, PRICE)
The primary key is (VOLUME, NUMBER, STARTPAGE, ENDPAGE) and the
following
Functional dependencies exist in the schema.
(VOLUME, NUMBER, STARTPAGE, ENDPAGE) → TITLE
(VOLUME, NUMBER) → YEAR
(VOLUME, NUMBER, STARTPAGE, ENDPAGE) → PRICE
The database is redesigned to use the following schemas.
(VOLUME, NUMBER, STARTPAGE, ENDPAGE, TITLE, PRICE)
(VOLUME, NUMBER, YEAR)
Which is the weakest normal form that the new database satisfies, but the
old one does not?', '{"A": "1NF", "B": "2NF", "C": "3NF", "D": "BCNF      [Marks: 1][GATE:  2016][SET-1]"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('dfcd3c31-ebd3-4536-bdc3-2f8d35b36e72', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2017, 1, 'MCQ', 'The following functional dependencies hold true for the relational schema {V,
W, X, Y, Z} :
V → W
VW → X
Y → VX
Y → Z
Which of the following is irreducible equivalent for this set of functional
dependencies?
V→W
V→X
Y→V
Y→Z
V→W
W→X
Y→V
Y→Z
V→W
V→X
Y→V
Y→X
Y→Z
V→W
W→X
Y→V
Y→X
Y→Z
[SET-1]', '{"A": "", "B": "", "C": "", "D": ""}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('42936c65-7c18-465e-bd46-501a8ba812de', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2018, 2, 'MCQ', 'Consider the following four relational schemas. For each schema, all non -
trivial functional dependencies are listed. The underlined attributes are the
respective primary keys.
Query I: Registration(rollno, courses)
Field ‘courses’ is a set-valued attribute containing the set of courses a student
has registered for. Non-trivial functional dependency
rollno → courses
Query II: Registration (rollno, coursid, email)
Non-trivial functional dependencies:
rollno, courseid → email
email → rollno
Query III: Registration (rollno, courseid, marks, grade)
Non-trivial functional dependencies:
rollno, courseid, → marks, grade
marks → grade
Query IV: Registration (rollno, courseid, credit)
Non-trivial functional dependencies:
rollno, courseid → credit
courseid → credit
Which one of the relational schemas above is in 3NF but not in BCNF?', '{"A": "Query 1    (b) Query 2   (c) Query 3   (d) Query 4"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('97899fbf-5d2f-4ac0-91d6-25a0a1c3e7d1', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2019, 2, 'MCQ', 'Let the set of functional dependencies F = {QR → S, R → P, S → Q} hold on a
relation schema X = (PQRS). X is not in BCNF. Suppose X is decomposed into
two schemas Y and Z where Y = (PR) and Z = (QRS). Consider the two
statements given below:
I. Both Y and Z are in BCNF
II. Decomposition of X into Y and Z is dependency preserving and a lossless.
Which of the above statements is/are correct?', '{"A": "I only     (b) Neither I nor II", "C": "Both I and II    (d) II only"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('0b934b20-e54e-44ad-8287-ef7d2a75b783', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'Consider a relational table R that is in 3NF, but not in BCNF. Which one of
the following statements is TRUE?
and A is a non-prime attribute and X is not a proper subset of any key.
and A is a non-prime attribute and X is a proper subset of some key.
and A is a prime attribute.

Hashing & Indexing', '{"A": "A cell in R holds a set instead of an atomic value.", "B": "R has a nontrivial functional dependency X\u2192A, where X is not a super key", "C": "R has a nontrivial functional dependency X\u2192A, where X is not a super key", "D": "R has a nontrivial functional dependency X\u2192A, where X is not a super key"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('bdbd264a-10dd-426a-835b-80c186c2e065', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2009, 2, 'MCQ', 'The keys 12, 18, 13, 2, 3, 23, 5 and 15 are inserted into an initially empty
hash table of length 10 using open addressing with hash function h(k) = k
mod 10 and linear probing. What is the resultant hash table?', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('170aba24-1f2e-4d40-b7f7-03ba0fec7536', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'The following key values are inserted into a B+ - tree in which order of the
internal nodes is 3, and that of the leaf nodes is 2, in the sequence given
below. The order of inte rnal nodes is the maximum number of tree pointers
in each node, and the order of leaf nodes is the maximum number of data
items that can be stored in it. The B+ - tree is initially 10, 3, 6, 8, 4, 2, 1 The
maximum number of times leaf nodes would get split  up as a result of these
insertions is', '{"A": "2", "B": "3", "C": "4", "D": "5"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('e8b2429b-e0f6-4a4b-8c5e-e9c7e9e20aa8', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2010, 1, 'MCQ', 'Consider a B +-tree in which the maximum number of keys in a node is 5.
What is the minimum number of keys in any non-root node?', '{"A": "1", "B": "2", "C": "3", "D": "4"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('2a1d307e-4863-4ce1-a6e3-93b72104deb7', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2010, 2, 'MCQ', 'A hash table of length 10 uses open addressing with hash function h(k) = k
mod 10, and linear probing. After inserting 6 values into an empty hash table,
the table is as shown below.
Which one of the following choices gives a possible order in which the key
values could have been inserted in the table?', '{"A": "46, 42, 34, 52, 23, 33", "B": "34, 42, 23, 52, 33, 46", "C": "46, 34, 42, 23, 52, 33", "D": "42, 46, 33, 23, 34, 52"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('0d621a2e-dc0b-4587-b481-6fba5f2d1649', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'A hash table of length 10 uses open addressing with hash function h(k) = k
mod 10, and linear probing. After inserting 6 values into an empty hash table,
the table is as shown below.
How many different insertion sequences of the key values using the same
hash function and linear probing will result in the hash table shown above?
2010]', '{"A": "10", "B": "20", "C": "30", "D": "40         [Marks: 2][GATE:"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('fc3a0a28-80e0-440f-a456-39e668ed698b', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2011, 2, 'MCQ', 'Consider a relational table r with sufficient number of records, having
attributes A1, A2,…, An and let 1 <= p <= n. Two queries Q 1 and Q2 are given
below.
The database can be configured to do ordered indexing on Ap or hashing on
Ap. Which of the following statements is TRUE?', '{"A": "Ordered indexing will always outperform hashing for both queries.", "B": "Hashing will always outperform ordered indexing for both queries.", "C": "Hashing will outperform ordered indexing on Q1, but not on Q2", "D": "Hashing will outperform ordered indexing on Q2, but not on Q1."}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('9e8c9bd2-d118-4fca-bfcf-4b658453b420', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'An index is clustered, if
entries of the index.
entries of the index.      [Marks: 1][GATE:
2013]', '{"A": "it is on a set of fields that form a candidate key.", "B": "it is on a set of fields that include the primary key.", "C": "The data records of the file are organized in the same order as the data", "D": "The data records of the file are organized not in the same order as the data"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('7797dc61-81c8-4918-9957-8310da311271', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2014, 2, 'MCQ', 'Consider a hash table with 9 slots. The hash function is  ℎ(k) = k mod 9. The
collisions are resolved by chaining. The following 9 keys are inserted in the
order: 5, 28, 19, 15, 20, 33, 12, 17, 10. The maximum, minimum, and
average chain lengths in the hash table, respectively, are
[SET-1]', '{"A": "3, 0, and 1     (b) 3, 3, and 3", "C": "4, 0, and 1     (d) 3, 0, and 2"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('8a522006-a7f5-4944-952b-b1d569087e8d', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2014, 2, 'MCQ', 'Consider a join (relation algebra) between relations r(R) and s(S) using the
nested loop method. There are 3 buffers each of size equal to disk block size,
out of which one buffer is reserved for intermediate results. Assuming
size(r(R))<size(s(S)), the join will have fewer number of disk block accesses if
[SET-2]', '{"A": "Relation r(R) is in the outer loop.", "B": "Relation s(S) is in the outer loop.", "C": "Join selection factor between r(R) and s(S) is more than 0.5.", "D": "Join selection factor between r(R) and s(S) is less than 0.5."}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('bf88a425-136c-44b2-a4a1-35f9445b1efc', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2015, 1, 'MCQ', 'A file is organized so that the ordering of data records is the same as or close
to the ordering of data entries in some index. Then that index is called
Unclustered
[SET-1]', '{"A": "Dense   (b) Sparse   (c) Clustered  (d)"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('87c9ed93-33cb-4961-8167-6f63630af665', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2015, 1, 'MCQ', 'With reference to the B+ -tree index of order 1 shown below, the minimum
number of nodes (including the Root node) that must be fetched in order to
satisfy the following query: "Get all records with a search key greater than or
equal to 7 and less than 15" is ____________.
[SET-2]', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('c372e71c-39a3-4b40-baea-18fb240265e7', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2015, 2, 'MCQ', 'Which one of the following hash functions on integers will distribute keys
most uniformly over 10 buckets numbered 0 to 9 for 𝑖 ranging from 0 to
2020?
[SET-2]', '{"A": "\u210e(\ud835\udc56) = \ud835\udc562 mod 10", "B": "\u210e(\ud835\udc56) = \ud835\udc563 mod 10", "C": "\u210e(\ud835\udc56) = (11 \u2217\ud835\udc562) mod 10", "D": "\u210e(\ud835\udc56) = (12 \u2217\ud835\udc56) mod 10"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('ab720459-97d2-47e6-b4a5-e80a81615612', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2015, 1, 'MCQ', 'Given a hash table 𝑇 with 25 slots that stores 2000 elements, the load factor
𝛼 for 𝑇 is ________.
[SET-3]', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('a05f24ed-2efa-4079-ac1d-6f1f1f6224b7', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2015, 1, 'MCQ', 'Consider a B+ tree in which the search key is 12 bytes long, block size is 1024
bytes, record pointer is 10 bytes long and block pointer is 8 bytes long. The
maximum number of keys that can be accommodated in each non -leaf node
of the tree is ____________.
[SET-3]', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('11247f88-366e-4c99-a5d3-673564965ada', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2016, 1, 'MCQ', 'B+ Trees are considered BALANCED because.
other by at most1.
1.
[SET-2]', '{"A": "The lengths of the paths from the root to all leaf nodes are all equal.", "B": "The lengths of the paths from the root to all leaf nodes differ from each", "C": "The number of children of any two non-leaf sibling nodes differ by at most", "D": "The number of records in any two leaf nodes differ by at most 1"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('9424d55e-c81c-489d-8795-8cbb04ba4ede', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2017, 2, 'MCQ', 'In a B+ tree, if the search-key value is 8 bytes long, the block size is 512 bytes
and the block pointer is 2 byt es, then the maximum order of the B+ tree is
____________.     [SET-2]', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('57bc951b-6069-40f2-9263-a3184e57cb7f', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2019, 1, 'MCQ', 'Which one of the following statements is NOT correct about the B+ tree data
structure used for creating an index of a relational database table?', '{"A": "B+ Tree is a height-balanced tree", "B": "Non-leaf nodes have pointers to data records", "C": "Key values in each node are kept in sorted order", "D": "Each leaf node has a pointer to the next leaf node"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('f173bed5-d165-4614-8236-07eb5a59a87a', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'Consider a database implemented using B+-tree for file indexing and installed
on a disk drive with block size of 4 KB. The size of search key is 12 bytes and
the size of tree/disk pointer is 8 bytes. Assume that the database has one
million records. Also assume that no node of the B+ tree and no records are
present initially in main memory. Consider that each record fits into one disk
block. The minimum number of disk accesses required to retrieve any record
in the database is ______.     [Marks: 2][GATE:
2020]
Transaction', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('12bbd0a0-931f-4c13-8e43-c3b6ee6ef0d2', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'Consider two transactions T1 and T2, and four schedules S1, S2, S3, S4 of
T1 and T2 as given below:
T1 = R1[X] W1[X] W1[Y]
T2 = R2[X] R2[Y] W2[Y]
S1 = R1[X] R2[X] R2[Y] W1[X] W1[Y] W2[Y]
S2 = R1[X] R2[X] R2[Y] W1[X] W2[Y] W1[Y]
S3 = R1[X] W1[X] R2[X] W1[Y] R2[Y] W2[Y]
S4 = R2[X] R2[Y] R1[X] W1[X] W1[Y] W2[Y]
Which of the above schedules are conflict-serializable?', '{"A": "S1 and S2    (b) S2 and S3", "C": "S3 only     (d) S4 only[Marks: 2][GATE:  2009]"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('13156457-8587-40e3-b4ab-fd9520145623', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2010, 1, 'MCQ', 'Which of the following concurrency control protocols ensure both Conflict
serializability and freedom from deadlock?
I. 2-phase locking
II. Time-stamp ordering', '{"A": "I only       (b) II only", "C": "Both I and II      (d) Neither I nor II"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('945adaef-f3f5-44d4-9399-dad889f14cde', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2010, 2, 'MCQ', 'Consider the following schedule for transactions T1, T2, and T3:
Which one of the schedules below is the correct serialization of the above?', '{"A": "T1\uf0aeT3\uf0aeT2     (b) T2\uf0aeT1\uf0aeT3", "C": "T2\uf0aeT3\uf0aeT1     (d) T3\uf0aeT1\uf0aeT2"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('914268fc-dcfd-4eeb-acec-5a1d50cd4d31', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2012, 2, 'MCQ', 'Consider the following transactions with data items P and Q initialized to zero:
T1:  read(P);
read(Q);
if P = 0 then Q: = Q + 1;
write (Q);
T2:  read(Q);
read(P);
if Q = 0 then P: = P + 1;
write (P);
Any non-serial interleaving of T1 and T2 for concurrent execution leads to', '{"A": "A serializable schedule", "B": "A schedule that is not conflict serializable", "C": "A conflict serializable schedule", "D": "A schedule for which a precedence graph cannot be drawn"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('9a498d5b-fff0-43df-bbd5-6880059d2f3f', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'Consider the following four schedules due to three transactions (indicated by
the subscript) using read and write on a data item x, denoted by r(x) and w(x)
respectively. Which one of them is conflict serializable?', '{"A": "r1(x); r2(x); w1(x); r3(x); w2(x)", "B": "r2(x); r1(x); w2(x); r3(x); w1(x)", "C": "r3(x); r2(x); r1(x); w2(x); w1(x)", "D": "r2(x); w2(x); r3(x); r1(x); w1(x)  [Marks: 2][GATE: 2014][SET-1]"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('3cab3a49-4901-4fdd-9334-e535225bed40', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2014, 2, 'MCQ', 'Consider the following schedule S of transactions T1, T2, T3, T4:
Which one of the following statements is CORRECT?
[SET-2]', '{"A": "S is conflict-serializable but not recoverable", "B": "S is not conflict-serializable but is recoverable", "C": "S is both conflict-serializable and recoverable", "D": "S is neither conflict-serializable nor is it recoverable"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('9b54df7f-d623-4169-8ba0-601f1d8f7c08', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2014, 2, 'MCQ', 'Consider the transactions T1, T2, and T3 and the schedules S1 and S2 given
below.
T1: r1(X); r1(Z); w1(X); w1(Z)
T2: r2(Y); r2(Z); w2(Z)
T3: r3(Y); r3(X); w3(Y)
S1: r1(X); r3(Y); r3(X); r2(Y); r2(Z); w3(Y); w2(Z); r1(Z); w1(X); w1(Z)
S2: r1(X); r3(Y); r2(Y); r3(X); r1(Z); r2(Z); w3(Y); w1(X); w2(Z); w1(Z)
Which one of the following statements about the schedules is TRUE?
[SET-3]', '{"A": "Only S1 is conflict -serializable.", "B": "Only S2 is conflict -serializable.", "C": "Both S1 and S2 are conflict -serializable.", "D": "Neither S1 nor S2 is conflict -serializable."}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('92a436c5-ab39-47ac-bbb7-65a4b0158a46', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2015, 1, 'MCQ', 'Consider the following transaction involving two bank accounts x and y.
read(x); x := x - 50; write(x); read(y); y := y + 50; write(y). The constraint that
the sum of the accounts x and y should remain constant is that of
Durability
[SET-2]', '{"A": "Atomicity  (b) Consistency  (c) Isolation  (d)"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('97beef31-4aaf-4c89-bf03-a46055266d64', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2015, 1, 'MCQ', 'Consider a simple check pointing protocol and the following set of operations
in the log. (start, T4); (write, T4, y, 2, 3); (start, T1); (commit, T4); (write, T1,
z, 5, 7); (checkpoint); (start, T2); (write, T2, x, 1, 9); (commit, T2); (start, T3),
(write, T3, z, 7, 2); If a crash happens now and the system tries to recover
using both undo and redo operations, what are the contents of the undo list
and the redo list?
[SET-2', '{"A": "Undo: T3, T1; Redo: T2", "B": "Undo: T3, T1; Redo: T2, T4", "C": "Undo: none; Redo: T2, T4, T3, T1", "D": "Undo: T3, T1, T4; Redo: T2"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('44b8d5aa-f8fb-4b28-970a-375111f1e8bb', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2015, 2, 'MCQ', 'Consider the following partial Schedule S involving two transactions T1 and
T2. Only the read and the write operations have been shown. The read
operation on data item P is denoted by read(P) and the write operation on
data item P is denoted by write(P).
Suppose that the transaction T1 fails immediately after time instance 9.
Which one of the following statements is correct?
ensure transaction atomicity
atomicity
needs to be done     [SET-3]', '{"A": "T2 must be aborted and then both T1 and T2 must be re-started to", "B": "Schedule S is non-recoverable and cannot ensure transaction atomicity", "C": "Only T2 must be aborted and then re-started to ensure transaction", "D": "Schedule S is recoverable and can ensure atomicity and nothing else"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('3359b5b7-b8fa-4666-b29e-63c36897abc0', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2016, 2, 'MCQ', 'Which one of the following is NOT a part of the ACID properties of database
transactions?
[SET-1]', '{"A": "Atomicity      (b) Consistency", "C": "Isolation       (d) Deadlock-freedom"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('45ed9199-1e7f-4334-9c4e-6975c58c8706', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2016, 2, 'MCQ', 'Consider the following 2 -phase locking protocol. Suppose a transaction T
accesses (for read or write operations), a certain set of objects {O1,…,Ok}. This
is done in the following manner:
Step1. T acquires exclusive locks to O 1, ..., O k in increasing order of their
addresses.
Step2. The required operations are performed.
Step3. All locks are released.
[SET-1]', '{"A": "guarantee serializability and deadlock-freedom", "B": "guarantee neither serializability nor deadlock-freedom", "C": "guarantee serializability but not deadlock-freedom", "D": "guarantee deadlock-freedom but not serializability"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('8e26522f-e884-414c-bbb1-6787afc72a92', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2016, 1, 'MCQ', 'Suppose a database schedule S involves transactions T1, …., Tn. Construct
the precedence graph of S with Vertices representing the transactions and
edges representing the conflicts. If S is serializable, which one of the following
orderings of the vertices of the precedence graph is guaranteed to yield a serial
schedule?
[SET-2]', '{"A": "Topological order", "B": "Depth-first order", "C": "Breadth-first order", "D": "Ascending order of transaction indices"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('fe4d0ca5-bc8a-410b-a4ef-76d38128039d', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'Consider the following database schedule with two transactions, T1 and T2.
S = r2(X); r1(X); r2(Y); w1(X); r1(Y); w2(X); a1; a2;
Where ri (Z) denotes a read operation by transaction Ti on a variable Z, wi
(Z) denotes a write operation by Ti on a variable Z and ai denotes an abort
by transaction Ti.
Which one of the following statements about the above schedule is TRUE?
2]', '{"A": "S is non-recoverable", "B": "S is recoverable, but has a cascading abort", "C": "S does not have a cascading abort", "D": "S is strict                                                   [Marks: 2][GATE: 2016][SET-"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('5dd26115-f724-4225-83d6-c8f574d1dffa', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2017, 2, 'MCQ', 'In a database system, unique time stamps are assigned to each transaction
using Lamport’s logical clock. Let TS (T1) and TS (T2) be the time stamps of
transactions T1 and T2 respectively. Besides, T1 holds a lock on the resource
R, and T2 has requested a conflicting lock on the same resource R. The
following algorithm is used to prevent deadlocks in the database assuming
that a killed transaction is restarted with the same timestamp.
if TS(T2) < TS(T1) then
T1 is killed
else T2 waits.
Assume any transactions that is not killed terminates eventually. Which of
the following is TRUE about the database system that uses the above
algorithm to prevent deadlocks?
[SET-1]', '{"A": "The database system is both deadlock-free and starvation- free.", "B": "The database system is deadlock- free, but not starvation-free.", "C": "The database system is starvation-free but not deadlock- free.", "D": "The database system is neither deadlock- free nor starvation-free."}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('6a72e2ae-f6d6-4613-aca8-b82eb7beb7e0', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2017, 2, 'MCQ', 'Two transactions T1 and T2 are given as:
T1: r1(X)w1(X)r1(Y)w1(Y)
T2: r2(Y)w2(Y)r2(Z)w2(Z)
Where ri (V) denotes a read operation by transaction Ti  on a variable V and
wi(V) denotes a write operation by transaction Ti  on a variable V. The total
number of conflict serializable schedules that can be formed by T1 and T2 is
______      [SET-2]', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('c82856f4-9dfe-4557-ad71-24e0e5d3b634', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'Consider the following two statements about database transaction schedules:
I. Strict two-phase locking protocol generates conflict serializable schedules
that are also recoverable.
II. Timestamp-ordering concurrency control protocol with Thomas’ Write Rule
can generate view serializable schedules that are not conflict serializable.
Which of the above statements is/are TRUE?', '{"A": "I only", "B": "II only", "C": "Both I and II", "D": "Neither I nor II"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('80f16567-e1ce-4ff0-a525-1926ff8fe7ce', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 2, 'MCQ', 'Consider a schedule of transactions T1 and T2:
Here, RX stands for “Read(X)” and WX stands for “Write(X)”. Which one of the
following schedules is conflict equivalent to the above schedule?
.
ER', '{"A": "", "B": "", "C": "", "D": ""}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('84cb9d92-4278-45ec-8db5-30b7ad1fd033', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2012, 1, 'MCQ', 'Given the basic ER and relational models, which of the following is
INCORRECT?
NULL value', '{"A": "An attribute of an entity can have more than one value", "B": "An attribute of an entity can be composite", "C": "In a row of a relational table, an attribute can have more than one value", "D": "In a row of a relational table, an attribute can have exactly one value or a"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('181e6d8f-6fc0-47e9-bd60-34181bf5ac18', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2015, 2, 'MCQ', 'Consider an Entity-Relationship (ER) model in which entity sets E1 and E2
are connected by an m: n relationship R12. E1 and E3 are connected by a 1:
n (1 on the side of E1 and n on the side of E3) relationship R13. E1 has two
single-valued attributes a11 and a12 of which a11 is the key attribute. E2
has two single -valued attributes a21 and a22 of which a21 is the key
attribute. E3 has two single -valued attributes a31 and a32 of which a31 is
the key attribute. The relationships do not have any attributes. If a relational
model is derived from the above ER model, then the minimum number of
relations that would be generated if all the relations are in 3NF is _______.
[SET-1]', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('1873865d-af1e-48ac-bb43-23070452f63e', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2017, 1, 'MCQ', 'An ER model of a database consists of entity types A and B. These are
connected by a relationship R which does not have its own attribute. Under
which of the following conditions, can the relational table for R be merged
with that of A?
[SET-2]', '{"A": "Relation R is one-to-many and the participation of A in R is total.", "B": "Relation R is one-to-many and the participation of A in R is partial.", "C": "Relation R is many-to-one and the participation of A in R is total.", "D": "Relation R is many-to-one and the participation of A in R is partial"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('cc5be10a-366a-4a1f-8d3b-b13463905033', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2018, 1, 'MCQ', 'In an Entity-Relationship (ER) model, suppose 𝑅is a many-to-one relationship
from entity Set E1 to entity set E2. Assume that E1 and E2 participate totally
in 𝑅and that the cardinality of E1 is greater than the cardinality of E2. Which
one of the following is true about 𝑅?', '{"A": "Every entity in E1 is associated with exactly one entity in E2.", "B": "Some entity in E1 is associated with more than one entity in E2.", "C": "Every entity in E2 is associated with exactly one entity in E1.", "D": "Every entity in E2 is associated with at most one entity in E1."}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('718435e6-33c9-4a03-8c35-a405a637c379', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'Which one of the following is used to represent the supporting many -one
relationships of a weak entity set in an entity-relationship diagram?
2020]', '{"A": "Ovals that contain underlined identifiers", "B": "Rectangles with double/bold border", "C": "Diamonds with double/bold border", "D": "Ovals with double/bold border    [Marks: 1][GATE:"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('2f65bb87-0d50-4428-ab20-d181b1da1e76', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', '(1217)8 is equivalent to
[Marks:][GATE:  2009', '{"A": "(1217)16   (b) (028F)16       (c)(2297)10   (d)(0B17)16"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('f90d35d6-a1e0-422e-a92c-67822dfb6382', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2009, 1, 'MCQ', 'What is the minimum number of gates required to implement the Boolean function (AB+C) if we
have to use only 2-input NOR gates?', '{"A": "2    (b)3     (c)4   (d)5"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('59e4973f-379e-4315-9129-45874509cbba', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2010, 1, 'MCQ', 'The minterm expansion of f(P, Q, R) = PQ + QR’ + PR’ is', '{"A": "m2 + m4 + m6 + m7    (b) m0 + m1 + m3 + m5", "C": "m0 + m1 + m6 + m7    (d) m2 + m3 + m4 + m5"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('7e724323-5d45-4e72-8a33-5c7f23a5e2ee', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2010, 1, 'MCQ', 'P is a 16 -bit signed integer. The 2''s complement representation of P is (F87B) 16. The 2''s
complement representation of 8*P is', '{"A": "(C3D8)16", "B": "(187B)16", "C": "(F878)16", "D": "(987B)16"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('783143ac-9822-46fa-bf60-67ed52b86c0e', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2010, 1, 'MCQ', 'The Boolean expression for the output ‘f’ of the multiplexer shown below is', '{"A": "(P\uf0c5Q\uf0c5R)\u2019", "B": "P\uf0c5Q\uf0c5R", "C": "(P+Q+R)\u2019", "D": "P+Q+R"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('516bd0ae-ae21-4f1d-a0dd-d08cb747a0b3', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2010, 2, 'MCQ', 'What is the Boolean expression for the output f of the combinational logic circuit of NOR gates
given below?', '{"A": "(Q+R)\u2019      (b) (P+Q)\u2019", "C": "(P+R)      (d) (P+Q+R)\u2019."}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('bc157d33-5fa0-4528-b5db-15b2aa254d6d', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2010, 2, 'MCQ', 'In the sequential circuit shown below, if the initial value of the output Q 1Q0 is 00, what are the
next four values of Q1Q0?', '{"A": "11, 10, 01, 00    (b) 10, 11, 01, 00", "C": "10, 00, 01, 11    (d) 11, 10, 00, 01"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('bfea9ed8-0930-4697-b851-8963c9eda7c0', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2011, 1, 'MCQ', 'The minimum number of D flip-flops needed to design a mod-258 counter is.', '{"A": "9", "B": "8", "C": "512", "D": "258"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('8afbdb91-9758-41eb-aaf6-cddbd5ae84e1', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2011, 1, 'MCQ', 'The simplified SOP (Sum Of Product) form of the boolean expression
(P + Q’ + R’). (P + Q’ + R). (P + Q + R’) is', '{"A": "(P\u2019.Q + R\u2019)    (b) (P + Q\u2019.R\u2019)", "C": "(P\u2019.Q + R)    (d) (P.Q + R)"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('a2c33f85-86e7-4a4d-a221-e1f22a9ea85d', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2011, 1, 'MCQ', 'Which one of the following circuits is NOT equivalent to a 2-input XNOR (exclusive NOR) gate?', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('1bca4363-1c1c-4775-9964-618a57058c5f', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'Consider the following circuit involving three D -type flip-flops used in a certain type of counter
configuration.
If all the flip-flops were reset to 0 at power on, what is the total number of distinct outputs (states)
represented by PQR generated by the counter?
[Marks: 2 ][GATE:  2011', '{"A": "3    (b) 4    (c) 5    (d) 6"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('30dd77b1-1596-4e5b-9b47-baf4071cb9c4', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2011, 2, 'MCQ', 'Consider the following circuit involving three D -type flip-flops used in a certain type of counter
configuration  If at some instance prior to the occurrence of the clock edge, P, Q and R have a
value 0, 1 and 0 respectively, what shall be the value of PQR after the clock edge?', '{"A": "000     (b) 001   (c) 010   (d) 011"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('0066edc6-8d07-4cda-97a1-d09cba12e24d', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'The truth table
represents the Boolean function', '{"A": "X", "B": "X+Y", "C": "X  \uf0c5 Y", "D": "Y           [Marks: 1 ][GATE:  2012]"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('f194bcf2-a0b0-4135-93de-0634f8f666bc', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2012, 1, 'MCQ', 'The decimal value 0.5 in IEEE single precision floating point representation has', '{"A": "fraction bits of 000\u2026000 and exponent value of 0", "B": "fraction bits of 000\u2026000 and exponent value of \u22121", "C": "fraction bits of 100\u2026000 and exponent value of 0", "D": "no exact representation"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('4279fa71-64f3-4cfb-bced-8f9dd242f046', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2012, 2, 'MCQ', 'What is the minimal form of the Karnaugh map shown below? Assume that X denotes a don’t care
term.', '{"A": "b\u2019d\u2019", "B": "b\u2019d\u2019 + b\u2019c\u2019", "C": "b\u2019d\u2019 + a\u2019b\u2019c\u2019d\u2019", "D": "b\u2019d\u2019 + b\u2019c\u2019 + c\u2019d\u2019"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('cd623b75-3aed-42e1-9575-fc2a7661da27', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2013, 1, 'MCQ', 'Which one of the following expressions does NOT represent exclusive NOR of x and y?', '{"A": "xy+x\u2019y\u2019", "B": "x\u2295y\u2019", "C": "x\u2019\u2295y", "D": "x\u2019\u2295y\u2019"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('d1adb0cd-ea8b-4114-b97c-677b7c4e80f1', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'The smallest integer that can be represented by an 8-bit number in 2’s complement form is
[Marks: 1][GATE:  2013', '{"A": "-256", "B": "-128", "C": "-127", "D": "0"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('61081b4b-4fc2-4545-aaae-9a0a3f9d985e', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2013, 1, 'MCQ', 'In the following truth table, V = 1 if and only if the input is valid.
What function does the truth table represent?', '{"A": "Priority encoder (b) Decoder  (c) Multiplexer (d) Demultiplexer"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('5ea52a1c-bd3e-48f5-a9b1-db9637034fba', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2014, 1, 'MCQ', 'Consider the following Boolean expression for F:
F(P, Q, R, S) = PQ + P''QR + P''QR''S
The minimal sum-of-products form of F is
[ SET-1]', '{"A": "PQ + QR + QS     (b) P + Q + R + S", "C": "P\u2019 + Q\u2019 + R\u2019 + S\u2019    (d) P\u2019R + P\u2019R\u2019S + P"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('afb5733d-1ea6-4403-8704-4e49d1715f88', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2014, 1, 'MCQ', 'The base (or radix) of the number system such that the following equation holds
is____________.312/20 = 13.1
 [ SET-1]', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('a3e89d3b-e265-4c51-a27d-5d1e82595000', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2014, 2, 'MCQ', 'Consider a 4-to-1 multiplexer with two select lines S1 and S0, given below
The minimal sum-of-products form of the Boolean expression for the output F
of the multiplexer is
 [ SET-1]', '{"A": "P\u2019Q + QR\u2019 + PQ\u2019R     (b) P\u2019Q + P\u2019QR\u2019 + PQR\u2019 + PQ\u2019R", "C": "P\u2019QR + P\u2019QR\u2019 + QR\u2019 + PQ\u2019R    (d) PQR\u2019"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('320bda2a-45f0-4357-8c65-fc87e6b1740c', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2014, 1, 'MCQ', 'The dual of a Boolean function f(x 1, x 2… xn, +, ∙, ′), written as F D, is the same
expression as that of F with + and. Swapped. F is said to be self-dual if F = FD. The
number of self-dual functions with n Boolean variables is
 [ SET-2]', '{"A": "2n    (b) 2n-1   (c) 22\ud835\udc5b", "D": "22n\u22121"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('41fb15c0-74ad-4b05-bedf-9ba5b7a92198', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2014, 1, 'MCQ', 'Let k = 2n. A circuit is built by giving the output of an n-bit binary counter as input
to an n-to-2n bit decoder. This circuit is equivalent to a
 [ SET-2]', '{"A": "k-bit binary up counter.", "B": "k-bit binary down counter.", "C": "k-bit ring counter.", "D": "k-bit Johnson counter."}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('6244de1a-2f50-4e9d-aa44-0b6b19c445bf', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2014, 1, 'MCQ', 'Consider the equation (123) 5 = (x8) y with x and y as unknown. The number of
possible solutions is __________.    [ SET-1]', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('4fdee9da-11b0-491a-93ec-b449cd187031', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2014, 1, 'MCQ', 'Consider the following minterm expression for F :
F(P,Q,R,S) = 0,2,5,7,8,10,13,15
The minterms 2, 7, 8 and 13 are ‘do not care’ terms. The minimal sum-of-products
form for F is :
 [ SET-3]', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('103c85fd-ca97-4611-9a74-9218c91714ca', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2014, 1, 'MCQ', 'Consider the following combinational function block involving four Boolean
variables x, y, a, b where x, a, b are inputs and y is the output.
f (x, y, a, b)
{
if(x is 1) y = a;
elsey = b;
}
Which one of the following digital logic blocks is the most suitable for implementing
this function?
 [ SET-3]', '{"A": "Full adder     (B) Priority encoder", "C": "Multiplexer     (D) Flip-flop"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('ecb813e0-a123-4057-963b-c6f5156684d9', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2014, 2, 'MCQ', 'The above sequential circuit is built using JK flip-flops is initialized with Q2Q1Q0
= 000. The
state sequence for this circuit for the next 3 clock cycle is
 [ SET-3]', '{"A": "001, 010, 011      (b) 111, 110, 101", "C": "100, 110, 111      (d) 100, 011, 001"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('835a9804-73fa-4629-b1c3-dd2d5388e207', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2014, 2, 'MCQ', 'Let denote the Exclusive OR (XOR) operation. Let ‘1’ and ‘0’ denote the binary
constants. Consider the following Boolean expression for F over two variables P
and Q:F      (P, Q) = ( ( 1  P)  (P  Q) )  ( (P  Q)  (Q  0) )
The equivalent expression for F is
 [ SET-3]', '{"A": "P + Q      (b) (P + Q)\u2019", "C": "P \uf0c5 Q      (d) (P \uf0c5 Q)\u2019"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('1c6e0485-a0bf-4d19-beca-144e34c51692', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2015, 1, 'MCQ', 'Consider a 4 bit Johnson counter with an initial value of 0000. The counting
sequence of this counter is:
 [ SET-1]', '{"A": "0, 1, 3, 7, 15, 14, 12, 8, 0    (b) 0, 1, 3, 5, 7, 9, 11, 13, 15, 0", "C": "0, 2, 4, 6, 8, 10, 12, 14, 0    (d) 0, 8, 12, 14, 15, 7, 3, 1, 0"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('66d2b9dc-9180-43ca-854c-69d61ed90bf8', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2015, 2, 'MCQ', 'A positive edge -triggered D flip -flop is connected to a positive edge -triggered JK
flipflop as follows. The Q output of the D flip-flop is connected to both the J and K
inputs of the JK flip-flop, while the Q output of the JK flip-flop is Connected to the
input of the D flip-flop. Initially, the output of the D flip-flop Is set to logic one and
the output of the JK flip -flop is cleared. Which one of the following is the bit
sequence (including the initial state) generated at the Q output of the JK flip -flop
when the flip-flops are connected to a free -running Common clock? Assume that
J = K = 1 is the toggle mode and J = K = 0 is the State-holding mode of the JK flip-
flop. Both the flip-flops have non-zero Propagation delays.
 [ SET-1]', '{"A": "0110110\u2026       (B) 0100100\u2026", "C": "011101110\u2026       (D) 011001100\u2026"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('85bcd758-c77f-4d91-8e30-f1e6ad60354a', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2015, 2, 'MCQ', 'Consider the operations
f(X, Y, Z) = X’YZ + XY’ + Y’Z’ and g(X′, Y, Z) = X′YZ + X′YZ′ + XY
Which one of the following is correct?
 [ SET-1]', '{"A": "Both {f} and {g} are functionally complete", "B": "Only {f} is functionally complete", "C": "Only {g} is functionally complete", "D": "Neither {f} nor {g} is functionally complete"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('cfe11d87-e7a2-4cb9-b135-5377f0657bf9', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2015, 1, 'MCQ', 'The minimum number of JK flip-flops required to construct a synchronous counter
with the count sequence (0, 0, 1, 1, 2, 2, 3, 3, 0, 0,…….) is ___________.
 [ SET-2]', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('4f133766-76c9-4bd1-b76c-03eaa4944e2b', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2015, 2, 'MCQ', 'The number of min-terms after minimizing the following Boolean expression
is________.[D′ + AB′ + A′C + AC′D + A′C′D]′
 [ SET-2]', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('dc02285e-ad65-4153-8b9a-9e61b4a09b91', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2015, 2, 'MCQ', 'A half adder is implemented with XOR and AND gates. A full adder is implemented
with two ha lf adders and one OR gate. The propagation delay of an XOR gate is
twice that of an AND/OR gate. The propagation delay of an AND/OR gate is 1.2
microseconds. A 4-bit ripple-carry binary adder is implemented by using four full
adders. The total propagation time of this 4 -bit binary adder in microseconds is
____________
 [ SET-2]', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('f6659361-821a-48f1-8eb4-2815759f7982', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2015, 2, 'MCQ', 'The total number of prime implicants of the function f(w, x, y, z) = Σ(0, 2, 4, 5, 6,
10) is______
 [ SET-3]', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('5b22b894-8d40-40da-bc9d-6a6d6f0d102b', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2016, 1, 'MCQ', 'Consider the Boolean operator # with the following properties: x#0 = x, x#1
= x’, x#x = and x#x’ = 1 Then x#y is equivalent to
 [ SET-1]', '{"A": "x\u2019y + xy\u2019  (b) xy\u2019 + (xy)                        (c) x\u2019y + xy (d) xy + (xy)\u2019"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('b5b2f76f-b82e-4f84-b296-1d82c46546b8', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2016, 1, 'MCQ', 'The 16-bit 2’s complement representation of an integer is 1111 1111 1111 0101;
its decimal representation is ________         [ SET-1]', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('96f3ec78-3718-4c4f-990c-f7f1e3dfa357', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2016, 1, 'MCQ', 'We want to design a synchronous counter that counts the sequence 0-1-0-2-0-3
and then repeats. The minimum number of J-K flip-flops required to implement
this counter is_____________    [ SET-1]', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('6d5ba82a-9ec9-4417-8f73-7ed3c25e9419', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2016, 2, 'MCQ', 'Consider the two cascaded 2-to-1 multiplexers as shown in the figure.
The minimal sum of products form of the output X is
 [ SET-1]', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('83742244-c1b6-4117-8f82-08891a58f87c', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2016, 2, 'MCQ', 'Consider a carry lookahead adder for adding two n-bit integers, built using
gates of fan-in at most two. The time to perform addition using this adder is__.
 [ SET-1]', '{"A": "\u0398(1)", "B": "\u0398(log(n))", "C": "\u0398(\u221an)", "D": "(\u0398(n)"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('8e54322b-c36a-423b-8ae5-739534385d13', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'Let, x1⊕x2⊕x3⊕x4 = 0 where x1, x2, x3, x4 are Boolean variables, and ⊕ is The
XOR operator.Which one of the following must always be TRUE?', '{"A": "x1x2x3x4 = 0", "B": "x1x3+x2 = 0", "C": "x\u20321\u2295x\u20323=x\u20322\u2295x\u20324", "D": "x1+x2+x3+x4 = 0    [Marks: 1 ][GATE:  2016] [ SET-2]"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('18308801-7161-4132-aae5-ad53474b44f8', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2016, 1, 'MCQ', 'Consider an eight-bit ripple-carry adder for computing the sum of A and B, Where
A and B are integers represented in 2’s complement form. If the decimal value of
A is one, the decimal value of B that leads  to the longest latency for the sum to
stabilize is _____________
 [ SET-2]', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('e0b0f4b0-f204-48b6-bc59-46a30e5e402a', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2016, 1, 'MCQ', 'Let Y be The number of distinct 16-bit integers in sign magnitude representation.
Then X-Y is ________.     [ SET-2]', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('b7ff4865-268f-428a-98c0-056b201dd07a', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2017, 1, 'MCQ', 'When two 8-bit numbers A7...A0 and B7...B0 in 2’s complement representation (with
A0 and B0 as the least significant bits) are added using a ripple -carry adder, the
sum bits obtained are S7...S0 and the carry bits are C7...C0. An overflow is said
to have occurred if.
 [ SET-1]', '{"A": "the carry bit C7 is 1", "B": "all the carry bits (C7,\u2026,C0) are 1", "C": "(A7 .B7 . S7` + A7` . B7`. S7) is 1", "D": "(A0 .B0 . S0` + A0` . B0` . S0) is 1"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('11701f64-0757-4049-84be-19d7d27c0175', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2017, 1, 'MCQ', 'The n-bit fixed-point representation of an unsigned real number X uses f bits For
the fraction part. Let i = n – f. The range of decimal values for X in this
representation is
 [ SET-1]', '{"A": "2-f", "B": "2-f to (2i \u2013 2 -f)", "C": "0 to 2-I", "D": "0 to 2i \u2013 2 -f)"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('2a4f78d8-9a71-4fde-a497-e4470af41838', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2017, 1, 'MCQ', 'Consider the Karnaugh map given below, where X represents “don’t care” and
Blank represents 0.
Assume for all inputs (a, c, d) the respective complements (a’, b’, c’, d’) are also
Available. The above logic is implemented 2-input NOR gates only. The Minimum
number of gates required is ____________.
[ SET-1]', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('5622f924-2e23-4c57-aacc-de0351ba9ff7', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2017, 2, 'MCQ', 'Consider a combination of T and D flip -flops connected as shown below. The
output of the D flipflop is connected to the input of the T flip -flop and the Output
of the T flip-flop is connected to the input of the D flip-flop.
Initially, both Q0 and Q1 are set to 1 (before the 1st clock cycle). The outputs
[ SET-1]', '{"A": "Q1 Q0 after the 3rd cycle are 11 and after the 4th cycle are 00 respectively", "B": "Q1 Q0 after the 3rd cycle are 11 and after the 4th cycle are 01 respectively", "C": "Q1 Q0 after the 3rd cycle are 00 and after the 4th cycle are 11 respectively", "D": "Q1 Q0 after the 3rd cycle are 01 and after the 4th cycle are 01 respectively"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('1f433375-6d60-4087-8179-dc2db6ce5e2d', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2017, 1, 'MCQ', 'The representation of the value of a 16 -bit unsigned integer X in a hexadecimal
Number system is BCA9. The representation of the value of X in octal number
system is:
[ SET-2]', '{"A": "571244   (b) 736251  (c) 571247   (d) 136251"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('b558e6c9-47d2-43aa-b5d6-51e2fc323728', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'If w, x, y, z are boolean variables, then which of the following in INCORRECT', '{"A": "wx + w(x+y) + x(x+y) = x + wy", "B": "(wx''(y + z\u2019))\u2019 + w\u2019x = w\u2019 + x + y\u2019z", "C": "(wx''(y + xz\u2019) + w\u2019x\u2019)y = xy\u2019", "D": "(w + y)(wxy + wyz) = wxy + wyz   [Marks: 2][GATE:  2017][ SET-2]"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('806c6f61-2a25-428c-8339-3c1941a3acd4', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'Given f(w, x, y, z) = Σm(0,1,2,3,7,8,10) + Σd(5,6,11,15), where d represents the
don’t-care condition in Karnaugh maps. Which of the following is a minimum
product-of-sums (POS) form of f (w, x, y, z)?', '{"A": "f = (w\u2019 + z\u2019 )( x\u2019 + z )", "B": "f = (w\u2019 + z ) ( x + z )", "C": "f = ( w + z ) ( x \u2018 + z )", "D": "f = ( w + z\u2019 ) ( x\u2019 + z )[Marks: 2][GATE:  2017][ SET-2]"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('71b8a24f-5949-4404-95e4-74f793dcf605', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2017, 1, 'MCQ', 'Given the following binary number in 32-bit (single precision) IEEE-754 format:
00111110011011010000000000000000
The decimal value closest to this floating-point number is
[ SET-2]', '{"A": "1.45 \u00d7 101", "B": "1.45 \u00d7 10-1", "C": "2.27 \u00d7 10-1", "D": "2.27 \u00d7 101"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('1d0d3804-9ee1-476f-9eff-1bf604d0e83d', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2017, 2, 'MCQ', 'The next state table of a 2-bit saturating up-counter is given below.
The counter is built as a synchronoussequential circuit using T flip -flops. The
expressions for T1 and T0 are
[ SET-2]', '{"A": "T1 = Q0Q1  T0 = Q\u20190Q\u20191", "B": "T1 = Q\u20191Q0  T0 = Q\u20191 + Q\u20190", "C": "T1 = Q1 + Q0  T0 = Q\u20191 + Q\u20190", "D": "T1 = Q\u20191Q0  T0 = Q1 + Q0"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('d10020b6-37b6-4a15-9257-71f1d0a792cd', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2017, 1, 'MCQ', 'Consider a quadratic equation x2 - 13x + 36 = 0 with coefficients in a base b. The
solutionsof this equation in the same base b are x = 5 and x = 6. Then b=_______
[ SET-2]', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('4687a039-109c-41d1-b861-45aaf7ab1954', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2018, 1, 'MCQ', 'Let ⊕ and ⊙ denote the Exclusive OR and Exclusive NOR operations, respectively.
Which one of the following is NOT CORRECT?', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('ceb85cb9-d34a-456a-96bc-fa8caf2bf8e5', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2018, 1, 'MCQ', 'Consider the sequential circuit shown in the figure, where both flip-flops used
Are positive edge-triggered D flip-flops.
The number of states in the state transition diagram of this circuit that have a
Transition back to the same state on some value of “in” is ______ .', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('549f584f-caea-4869-b687-4a5c10cfb3ea', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'Consider the unsigned 8-bit fixed point binary number representation below,
b7b6b5b4b3⋅ b2b1b0
where the position of the binary point is between b3 and b2 . Assume b7 is the
most significant bit. Some of the decimal numbers listed below cannot be
represented exactly in the above representation:
(i) 31.500      (ii) 0.875      (iii) 12.100       (iv) 3.001
Which one of the following statements is true?', '{"A": "None of (i), (ii), (iii), (iv) can be exactly represented", "B": "Only (ii) cannot be exactly represented", "C": "Only (iii) and (iv) cannot be exactly represented", "D": "Only (i) and (ii) cannot be exactly represented[Marks: 2][GATE:  2018]"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('4f353b4b-5376-45ed-ba9a-75eb0f632d86', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'Consider the minterm list form of a Boolean function F given below.
F(P, Q, R, S) = Σm(0, 2, 5, 7, 9, 11) + d(3, 8, 10, 12, 14)
Here, m denotes a minterm and d denotes a don’t care term . The number of
essential prime implicants of the function F is _______ .   [Marks:
2][GATE:  2018]', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('38fd3882-04f7-4452-8bc8-00eb19445a31', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2019, 1, 'MCQ', 'Which one of the following is NOT a valid identity?', '{"A": "(x \u2295 y) \u2295 z = x \u2295 (y \u2295 z)", "B": "(x + y) \u2295 z = x \u2295 (y + z)", "C": "x \u2295 y = x + y, if xy = 0", "D": "x \u2295 y = (xy + x\u2032y\u2032)\u2032"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('804e4a0b-6919-465b-a906-05403f0859de', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2019, 2, 'MCQ', 'Consider three 4 -variable functions f 1, f2 and f3, which are expressed in sum -of-
minterms
f1 = Σ(0, 2, 5, 8, 14)
f2 = Σ(2, 3, 6, 8, 14, 15)
f3 = Σ(2, 7, 11, 14)
For the following circuit with one AND gate and one XOR gate, the output function
f can be expressed as:', '{"A": "\u03a3(7, 8, 11)", "B": "\u03a3(2, 14)", "C": "\u03a3(0, 2, 3, 5, 6, 7, 8, 11, 14)", "D": "\u03a3(2, 7, 8, 11, 14)"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('41114363-a283-4e54-94ab-c958793dc97e', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2019, 2, 'MCQ', 'What is the minimum number of 2 -input NOR gates required to implement 4 -
variable function expressed in sum-of-minterms from as f = Σ(0, 2, 5, 7, 8, 10, 13,
15)? Assume that all the inputs and their complements are available. Answer
________ .', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('43617c87-3f3e-4237-ae34-b3ef95453348', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2019, 1, 'MCQ', 'In 16-bit 2''s complement representation, the decimal number -28 is:', '{"A": "1111 1111 1110 0100", "B": "1111 1111 0001 1100", "C": "0000 0000 1110 0100", "D": "1000 0000 1110 0100"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('311e391a-fef6-476d-82e7-68d8d8c10d90', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2019, 1, 'MCQ', 'Two numbers are chosen independently and uniformly at random from the set {1,
2, ..., 13}. The probability (rounded off to 3 decimal places) that their 4 -bit
(unsigned) binary representations have the same most significant bit is ______.', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('b737b8e4-8731-4f4b-9e66-5895ce9677bc', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2019, 1, 'MCQ', 'Consider Z = X - Y, where X, Y and Z are all in sign-magnitude form. X and Y are
each represented in n bits. To avoid overflow, the representation of Z would require
a minimum of:', '{"A": "n bits    (b) n + 2 bits   (c) n - 1 bits   (d) n + 1 bits"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('5b862f8e-971f-4c48-b53f-beecc7a03233', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'A multiplexer is p laced between a group of 32 registers and an accumulator to
regulate data movement such that at any given point in time the content of only
one register will move to the accumulator. The minimum number of select lines
needed for the multiplexer is _____.', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('2d550ffe-2a9a-4e5a-a814-10509c535d8e', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'If there are m input lines and n output lines for a decoder that is used to uniquely
address a byte addressable 1 KB RAM, then the minimum value o f m + n is ____.', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('049d9893-22d1-4a00-a934-7644f0e62be2', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 2, 'MCQ', 'Consider the Boolean function z(a,b,c).
Which one of the following minterm lists represents the circuit given
above?', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('16d32635-ce3e-4ca8-b807-e59facdeaea1', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 2, 'MCQ', 'Consider three registers R1, R2 and R3 that store numbers in IEEE -754 single
precision floating point format. Assume that R1 and R2 contain the values (in
hexadecimal notation) 0x42200000 and 0xC1200000, respectively.
If R3 = R1/R2, what is the value stored in R3?

Lexical Analysis', '{"A": "0x40800000  (b) 0x83400000 (c) 0xC8500000   (d) 0xC0800000"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('8112c81c-39a0-405e-8ab1-4876bf2a0021', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2009, 1, 'MCQ', 'Match all items in Group 1 with correct options from those given in Group', '{"A": "P-4. Q-1, R-2, S-3   (b) P-3, Q-1, R-4, S-2", "C": "P-3, Q-4, R-1, S-2   (d) P-2, Q-1, R-4, S-3"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('9549ca4c-4173-4a41-b211-15e6bda1f787', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'Which data structure in a compiler is used for managing information  about variables
and their attributes?', '{"A": "Abstract syntax tree   (b) Symbol table", "C": "Semantic stack    (d) Parse Table [Marks: ][GATE:  2010]"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('93d12861-818a-4b8d-a4dc-a256c7d49917', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'The lexical analysis for a modern computer language such as Java needs the power of
which one of the following machine models in a necessary and sufficient sense?', '{"A": "Finite state automata", "B": "Deterministic pushdown automata", "C": "Non-Deterministic pushdown automata", "D": "Turing machine      [Marks: ][GATE: 2011]"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('acbf6ff0-1e48-4d34-ba2d-282e77151106', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'In a compiler, keywords of a language are recognized during', '{"A": "parsing of the program", "B": "the code generation", "C": "the lexical analysis of the program", "D": "dataflow analysis      [Marks: ][GATE: 2011]"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('ce9c317f-a4d4-40c6-9e43-b5ad15807ec1', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'Which one of the following is NOT performed during compilation?', '{"A": "Dynamic memory allocation", "B": "Type checking", "C": "Symbol table management", "D": "Inline expansion     [Marks:][GATE:  2014][SET-2]"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('783af767-231b-4c9f-9e76-65c4929c9836', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'Match the following:
List-I                      List-II
A. Lexical analysis          1. Graph coloring
B. Parsing                   2. DFA minimization
C. Register allocation       3. Post-order traversal
D. Expression evaluation    4. Production tree
Codes:', '{"A": "2       3        1        4", "B": "2      1        4         3", "C": "2      4         1         3", "D": "2      3         4        1     [Marks:1][GATE:  2015][SET-2]"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('ebaa78e2-4142-475f-9920-d34b4ec8c13b', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'Match the following:
(P) Lexical analysis         (i) Leftmost derivation
(Q) Top down parsing        (ii) Type checking
(R) Semantic analysis        (iii) Regular expressions
(S) Runtime environments    (iv) Activation records', '{"A": "P \u2194 i, Q \u2194 ii, R \u2194 iv, S \u2194 iii", "B": "P \u2194 iii, Q \u2194 i, R \u2194 ii, S \u2194 iv", "C": "P \u2194 ii, Q \u2194 iii, R \u2194 i, S \u2194 iv", "D": "P \u2194 iv, Q \u2194 i, R \u2194 ii, S \u2194 iii   [Marks: 1][GATE: 2016][SET-2]"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('134f1f29-023f-4dda-aa0e-600478c49e9c', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'Match the following according to input (from the left column) to the compiler phase
(in the right column) that processes it:', '{"A": "P-ii; Q-iii; R-iv; S-i", "B": "P-ii; Q-i; R-iii; S-iv", "C": "P-iii; Q-iv; R-i; S-ii", "D": "P-i; Q-iv; R-ii; S-iii     [Marks: 1][GATE:  2017][SET-2]"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('81e13a3b-afc1-49be-99b5-2703e7fb0918', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2018, 2, 'MCQ', 'A lexical analyzer uses the following patterns to recognize three tokens T 1, T2, and T3
over the alphabet {a,b,c}.
T1: a?(b∣c)*a
T2: b?(a∣c)*b
T3: c?(b∣a)*c
Note that ‘x?’ means 0 or 1 occurrence of the symbol x. Note also that the analyzer
outputs the token  that matches the longest possible prefix. If the string bbaacabc is
processes by the analyzer, which one of the following is the sequence of tokens it
outputs?', '{"A": "T1T2T3    (b) T1T1T3   (c) T2T1T3    (d) T 3T3"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('1692f16a-fcfb-48be-98e1-801ad02eab9e', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'Consider the following statements.
I. Symbol table is accessed only during lexical analysis and syntax analysis.
II. Compilers for programming languages that support recursion necessarily need
heap storage for memory allocation in the run-time environment.
III. Errors violating the condition ‘any variable must be declared before its use’ are
detected during syntax analysis.
Which of the above statements is/are TRUE?

Syntax analysis', '{"A": "II only    (b)I only   (c)I and III only  (d)None of I, II and III"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('cb04fec2-4a2e-4da5-8189-5312267bb070', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2009, 1, 'MCQ', 'Which of the following statements are TRUE?
I.There exist parsing algorithms for some programming languages whose complexities
are less than q (n3 ).
II.A programming language which allows recursion can be implemented with static
storage III. No L -attributed definition can be evaluated in the framework of bottom -
up parsing.
IV. Code improving transformations can be performed at both source language and
intermediate code level', '{"A": "I and II", "B": "I and IV", "C": "III and IV", "D": "I, III and IV"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('bd137e45-3b3c-46f0-a097-082bddf30c39', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2010, 1, 'MCQ', 'The grammar S → aSa|bS|c is', '{"A": "LL(1) but not LR(1)", "B": "LR(1) but not LR(1)", "C": "Both LL(1) and LR(1)", "D": "Neither LL(1) nor LR(1)"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('5668168c-bf31-4048-b72f-047c6ff931a5', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2011, 1, 'MCQ', 'Consider two binary operators  and  with the precedence of operator being lower
than that of the Operator Operatoris right associative while operator is left
associative. Which one of the following represents the parse tree for expression
(73 ­4 ­3  2)?', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('58fba9cd-3255-4744-94ef-18071ca46493', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2012, 2, 'MCQ', 'For the grammar below, a partial LL (1) parsing table is also presented along with
the grammar. Entries that need to be filled are indicated as E1, E2, and E3. Is the
empty string, $ indicates end of input, and, | separates alternate right hand sides  of
productions.
The first and FOLLOW sets for the non-terminals A and B are', '{"A": "= {a,b}", "B": "= {a,b}", "C": "", "D": ""}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('05903434-0afe-453a-864e-477b97f711c2', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2012, 1, 'MCQ', 'The grammar. Entries that need to be filled are indicated as E1, E2, and E3. is the
Empty string, $ indicates end of input, and, | separates alternate right hand sides of
Productions.
The appropriate entries for E1, E2, and E3 are
E1: S → aAbB,A → S
E2: S → bAaB,B→S
E3: B → S
E1: S → aAbB,S→ ε
E2: S → bAaB,S → ε
E3: S → ε
E1: S → aAbB,S → ε
E2: S → bAaB,S→ε
E3: B → S
E1: A → S,S →ε
E2: B → S,S → ε
E3: B →S', '{"A": "", "B": "", "C": "", "D": ""}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('4984a5a6-722b-46ea-84ab-33d9df38ad22', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2013, 1, 'MCQ', 'What is the maximum number of reduce moves that can be taken by a bottom -up
parser for a grammar with no epsilon - and unit-production (i.e., of type A є and
Aa) to parse a string with n tokens?', '{"A": "n/2   (b) n-1   (c) 2n-1   (d) 2n"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('4d2e207b-a682-42ca-bc75-9d866bc3039b', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2013, 1, 'MCQ', 'Which of the following statements related to merging of the two sets in the
corresponding LALR parser is/are FALSE?
1. Cannot be merged since look aheads are different.
2. Can be merged but will result in S-R conflict.
3. Can be merged but will result in R-R conflict.
4. Cannot be merged since goto on c will lead to two different sets.', '{"A": "1 only", "B": "2 only", "C": "1 and 4 only", "D": "1, 2, 3, and 4"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('bed5c9fa-096c-4c02-a908-4b5362e197c0', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2014, 1, 'MCQ', 'A canonical set of items is given below
S --> L. > R
Q --> R.
On input symbol < the set has
[SET-1]', '{"A": "a shift-reduce conflict and a reduce-reduce conflict.", "B": "a shift-reduce conflict but not a reduce-reduce conflict.", "C": "a reduce-reduce conflict but not a shift-reduce conflict.", "D": "neither a shift-reduce nor a reduce-reduce conflict."}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('c6e27aec-7f20-4d0a-b797-b08bdfea00a2', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2014, 1, 'MCQ', 'Consider the grammar defined by the following production rules, with two operators
∗ and +
S --> T * P
T --> U | T * U
P --> Q + P | Q
Q --> Id
U --> Id
Which one of the following is TRUE?
[SET-2]', '{"A": "+ is left associative, while \u2217 is right associative", "B": "+ is right associative, while \u2217 is left associative", "C": "Both + and \u2217 are right associative", "D": "Both + and \u2217 are left associative"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('0771a7ce-ce14-4923-9b69-583615999de4', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2015, 1, 'MCQ', 'Which one of the following is True at any valid state in shift-reduce parsing?
[SET-1]', '{"A": "Viable prefixes appear only at the bottom of the stack and not inside", "B": "Viable prefixes appear only at the top of the stack and not inside", "C": "The stack contains only a set of viable prefixes", "D": "The stack never contains viable prefixes"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('26af4746-549f-4e69-b582-0ebfe7ca91ad', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2015, 1, 'MCQ', 'Among simple LR (SLR), canonical LR, and look-ahead LR (LALR), which  of the
following pairs identify the method that is very easy to implement  and the method
that is the most powerful, in that order?
[SET-3]
.', '{"A": "SLR, LALR", "B": "Canonical LR, LALR", "C": "SLR, canonical LR", "D": "LALR, canonical LR"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('bb63bcfd-d1d2-4b0d-bb0c-0d13588bb8c0', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2015, 2, 'MCQ', 'Consider the following grammar G.
S → F ⎪ H
F → p ⎪ c
H → d ⎪ c
Where S, F and H are non-terminal symbols, p, d and c are terminal  symbols.Which
of the following statement(s) is/are correct?
S1: LL (1) can parse all strings that are generated using grammar G.
S2: LR (1) can parse all strings that are generated using grammar G.
[SET-2]', '{"A": "Only S1", "B": "Only S2", "C": "Both S1 and S2", "D": "Neither S1 and S2"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('81c30740-8913-4cca-9f37-cc4eb95c9c3d', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2016, 2, 'MCQ', 'The attributes of three arithmetic operators in some programming language are
given below.
Operator       Precedence      Associativity    Arity
+              High              Left            Binary
−        Medium           Right          Binary
∗Low               Left            Binary
The value of the expression 2 – 5 + 1 – 7 * 3 in this language is __________.
[SET-1]', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('7c511994-69b2-4e00-a2e5-2131783d37df', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2016, 2, 'MCQ', 'Which one of the following grammars is free from left recursion?
[SET-2]', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('c9c7ce57-4436-424a-9e90-99cfc56d2d3b', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2017, 1, 'MCQ', 'Consider the following grammar
p --> xQRS
Q -->yz|z
R --> w|∈
S -> y
Which is FOLLOW (Q)?
[SET-1]', '{"A": "{R}", "B": "{w}", "C": "{w, y}", "D": "{w, \u2209}"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('a75a7062-dd30-49da-aeb7-a075095a805c', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2017, 1, 'MCQ', 'Which of the following statements about parser is/are CORRECT?
I. Canonical LR is more powerful than SLR.
II. SLR is more powerful than LALR.
III. SLR is more powerful than Canonical LR.
[SET-2]', '{"A": "I only    (b)II only         (c)III only   (d)II and III only"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('4e24d130-5f0d-495a-9c30-0a54df823efa', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2017, 2, 'MCQ', 'Consider the following expression grammar G:
E → E - T | T
T → T + F | F
F → (E) | id
Which of the following grammars is not left recursive, but is equivalent to G?
E -> E - T | T
T -> T + F | F
F -> (E) | id
E -> TE''
E'' -> -TE'' | ε
T -> T + F | F
F -> (E) | id
E -> TX
X -> -TX | ε
T -> FY
Y -> +FY | ε
F -> (E) | id
E -> TX | (TX)
X -> -TX | +TX | ε
T -> id
[SET-2]', '{"A": "", "B": "", "C": "", "D": ""}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('d3c4b06a-92c1-4e9a-b6cf-9b755c1c6635', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2018, 1, 'MCQ', 'Consider the following parse tree for the expression a#b$c$d#e#f, involving two
binary operators $ and #.
Which one of the following is correct for the given parse tree?', '{"A": "$ has higher precedence and is left associative; # is right associative", "B": "# has higher precedence and is left associative; $ is right associative", "C": "$ has higher precedence and is left associative; # is left associative", "D": "# has higher precedence and is right associative; $ is left associative"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('59a0f88c-0d22-4371-8eb0-938d2b27ac40', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2019, 1, 'MCQ', 'Consider the grammar given below:
S → Aa
A → BD
B → b | ε
D → d | ε
Let a, b, d, and $ be indexed as follows:
Compute the FOLLOW set of the non -terminal B and write the index values for the
symbols in the FOLLOW set in the descending order. (For example, if the FOLLOW
set is {a, b, d, $}, then the answer should be 3210)', '{"A": "30", "B": "31", "C": "10", "D": "20"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('2c509856-af99-4afa-9a0b-a6a9439cebaf', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2019, 1, 'MCQ', 'Which one of the following kinds of derivation is used by LR parsers?', '{"A": "Leftmost in reverse", "B": "Rightmost in reverse", "C": "Leftmost", "D": "Rightmost"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('1a061474-3db2-434a-82ac-608f27eeea78', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2019, 2, 'MCQ', 'Consider the augmented grammar given below:
S'' → S
S → 〈L〉 | id
L → L,S | S
Let I0 = CLOSURE ({[S'' → ·S]}). The number of items in the set GOTO (I0 , 〈 ) is: ____.', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('324e704c-7ade-4eac-a317-82551cd8a4ef', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'Consider the following grammar.
S->aSB| d
B->b
The number of reduction steps taken by a bottom-up parser while accepting the string
aaadbbb is _______.     
Syntax directed', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('555c58a9-278c-4f1f-ad87-af496481cd95', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2014, 2, 'MCQ', 'Consider the expression tree shown. Each leaf represents a numerical value, which
can either be 0 or 1. Over all possible choices of the values at the leaves, the
maximum possible value of the expression represented by the tree is ___.
[SET-2]', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('81ad2704-559b-4d20-8bef-f98675aec7fa', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2016, 2, 'MCQ', 'Consider the following Syntax Directed Translation Scheme (SDTS), with non -
terminals {S, A} and terminals {a, b}}.
Using the above SDTS, the output printed by a bottom-up parser, for the input aab is
[SET-1]', '{"A": "1 3 2   (b) 2 2 3   (c) 2 3 1  (d)Syntax Error"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('d48203af-12e9-423e-b4a4-1421e70e7669', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'Consider the following grammar and the semantic actions to support the inheriteatd
type declaration attributes. Let X1, X2, X3, X4, X5 and X6 be the placeholders for the non-
terminals D, T, L or L1 in the following table:
Which one of the following are the appropriate choices for X1, X2, X3 and X4?', '{"A": "X1 = L, X2 = L, X3 = L1, X4 = T", "B": "X1 = L, X2 = T, X3 = L1, X4 = L", "C": "X1 = T, X2 = L, X3 = L1, X4 = T", "D": "X1 = T, X2 = L, X3 = T, X4 = L1     [Marks:2][GATE:2019]"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('01bfa6af-b7e2-4b0d-b7f7-2ec2783f611d', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 2, 'MCQ', 'Consider the productions A⟶PQ and A⟶XY. Each of the five non-terminals A, P, Q,
X, and Y has two attributes: s is a synthesized attribute, and i is an inherited attribute.
Consider the following rules.
Rule 1: P.i = A.i + 2, Q.i = P.i + A.i, and A.s = P.s + Q.s
Rule 2: X.i = A.i + Y.s and Y.i = X.s + A.i
Which one of the following is TRUE?

Code generation', '{"A": "Only Rule 2 is L-attributed.", "B": "Neither Rule 1 nor Rule 2 is L-attributed.", "C": "Both Rule 1 and Rule 2 are L-attributed", "D": "Only Rule 1 is L-attributed."}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('e7640f9a-31ee-4b83-85ec-ba22d8013e92', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2010, 1, 'MCQ', 'The program below uses six temporary variables a, b, c, d, e, f.
a = 1
b = 10
c = 20
d = a+b
e = c+d
f = c+e
b = c+e
e = b+f
d = 5+e
return d+f
Assuming that all operations take their operands from registers, what is the minimum
number of registers needed to execute this program without spilling?', '{"A": "2", "B": "3", "C": "4", "D": "6"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('f232e688-5d6d-4910-b67c-812c5a4fb926', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2011, 1, 'MCQ', 'Consider evaluating the following expression tree on a machine with load -store
architecture in which memory can be accessed only through load and store
instructions. The variables a, b, c, d and e initially stored in memory. The binary
operators used in this expression tree can be evaluate by the machine only when the
operands are in registers. The instructions produce results only in a register. If no
intermediate results can be stored in memory, w hat is the minimum number of
registers needed to evaluate this expression?', '{"A": "2     (b) 9    (c) 5   (d) 3"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('b64f64b1-3b3a-48b3-a64f-e3f472816d5f', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2013, 1, 'MCQ', 'The following code segment is executed on a processor which allows only register
operands in its instructions. Each instruction can have atmost two source operands
and one destination operand. Assume that all variables are dead after this code
segment.
c = a + b;
d = c * a;
e = c + a;
x = c * c;
if (x > a) {
y = a * a;
}
else {
d = d * d;
e = e * e;
}
Consider the same data as above question. What is the minimum number of registers
needed in the instruction set architecture of the processor to compile this code
segment without any spill to memory? Do not apply any optimization other than
optimizing register allocation.', '{"A": "3", "B": "4", "C": "5", "D": "6"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('ff45c8fa-f788-47f9-b4ff-c94c7a6e6f88', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2013, 1, 'MCQ', 'The following code segment is executed on a processor which allows only register
operands in its instructions. Each instruction can have atmost two source operands
and one destination operand. Assume that all variables are dead after this code
segment.
c = a + b;
d = c * a;
e = c + a;
x = c * c;
if (x > a) {
y = a * a;
}
else {
d = d * d;
e = e * e;
}
Suppose the instructi on set architecture of the processor has only two registers. The
only allowed compiler optimization is code motion, which moves statements from
one place to another while preserving correctness. What is the minimum number of
spills to memory in the compiled code?', '{"A": "0    (b) 1     (c) 2   (d) 3"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('b3c571a5-5f70-4a9b-b363-e194231768d9', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2014, 1, 'MCQ', 'For a C program accessing X[i][j][k], the following intermediate code is generated by
a compiler. Assume that the size of an integer is 32 bits and the size of a character is 8
bits.
t0 = i ∗ 1024
t1 = j ∗ 32
t2 = k ∗ 4
t3 = t1 + t0
t4 = t3 + t2
t5 = X[t4]
Which one of the following statements about the source code for the C program is
CORRECT?
[SET-2]', '{"A": "X is declared as \u201cint X[32][32][8]\u201d", "B": "X is declared as \u201cint X[4][1024][32]\u201d.", "C": "X is declared as \u201cchar X[4][32][8]\u201d.", "D": "X is declared as \u201cchar X[32][16][2]\u201d"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('929735a8-3be9-406b-9723-c51cfb26b01b', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'One of the purposes of using intermediate code in compilers is to
compilers.', '{"A": "make parsing and semantic analysis simpler.", "B": "improve error recovery and error reporting.", "C": "increase the chances of reusing the machine-independent code optimizer in other", "D": "improve the register allocation   [Marks: ][GATE: 2014][SET-3]"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('a4d3f72a-1fdb-4bed-9b7d-58b13ef096d8', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2014, 2, 'MCQ', 'One of the purposes of using intermediate code in compilers is to
compilers.
[SET-3', '{"A": "Make parsing and semantic analysis simpler.", "B": "Improve error recovery and error reporting.", "C": "Increase the chances of reusing the machine-independent code optimizer in other", "D": "Improve the register allocation."}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('3de68037-8292-4ab8-8292-5cf57a217b81', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2014, 2, 'MCQ', 'Consider the basic block given below.
a = b + c
c = a + d
d = b + c
e = d - b
a = e + b
The minimum number of nodes and edges present in the DAG representation of the
above basic block respectively are
[SET-3]', '{"A": "6 and 6   (b) 8 and 10  (c) 9 and 12   (d) 4 and 4"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('3a90ed2d-470e-4d60-8abf-2ba28e43dea9', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2015, 2, 'MCQ', 'The least number of temporary variables required to create a three-address code in
static single assignment form for the expression q + r/3 + s – t * 5 + u * v/w is______.
[SET-1]', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('f8f8cf24-d253-42d3-96e3-68261f1b703a', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2015, 1, 'MCQ', 'In the context of abstract-syntax-tree (AST) and control-flow-graph (CFG), which one
of the following is TRUE?
program, the code corresponding to N 2 is present after the code corresponding in
N1.
the input program
program       [SET-2]', '{"A": "In both AST and CFG, let node, N 2 be the successor of node N 1. In the input", "B": "For any input program, neither AST nor CFG will contain a cycle", "C": "The maximum number of successors of a node in an AST and a CFG depends on", "D": "Each node is AST and CFG corresponds to at most one statement in the input"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('d1798fed-a181-4961-a309-5838264771ac', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2016, 1, 'MCQ', 'Consider the following code segment.
x = u - t;
y = x * v;
x = y + w;
y = t - z;
y = x * y;
The minimum number of total variables required to convert the above code segment
to static single assignment form is
[SET-1]', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('66f07edd-e31f-4cd5-8d89-54e5964f33f3', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2017, 2, 'MCQ', 'Consider the following grammar:
stmt    →  if expr then expr else expr; stmt | ȯ
expr    →  term relop term | term
term    →  id | number
id      →  a | b |  c
number  → [0-9]                                                                                                            Where
relop is a relational operator (e.g., <, >, …), ȯ refers to the empty statement, and if,
then, else are terminals.Consider a program P following the above grammar
containing ten if terminals. The number of control flow paths in P is ________. For
example, the program if e1 then e2 else e3has 2 control flow paths, e1 → e2 and e1 →
[SET-1]', '{"A": "1024", "B": "1025   (c)1026   (d)1027"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('fa4c2f6f-d310-44ca-914a-d02e0f060d18', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2017, 2, 'MCQ', 'Consider the expression (a -1)*(((b+c)/3)+d)). Let X be the minimum number of
registers required by an optimal code generation (without any register spill) algorithm
for a load/store architecture, in which (i) only load and store instructions can have
memory operands and (ii) arithmetic instructions can have only register or immediate
operands. The value of X is ___________.
[SET-1]
Code optim.', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('3780492b-cd47-432c-9a8e-62e68c2358e7', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2014, 1, 'MCQ', 'Which one of the following is FALSE?
the beginning and exits at the end.
elimination.
[SET-1]', '{"A": "A basic block is a sequence of instructions where control enters the sequence at", "B": "Available expression analysis can be used for common subexpression", "C": "Live variable analysis can be used for dead code elimination.", "D": "x=4*5\u21d2x=20 is an example of common subexpression elimination."}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('e7702e45-6e2c-4f38-a225-00aa6431a32e', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2015, 2, 'MCQ', 'A variable x is said to be live at a statement Si in a program if the following three
conditions hold simultaneously:
1. There exists a statement Sj that uses x
2. There is a path from Si to Sj in the flow graph corresponding to the program
3. The path has no intervening assignment to x
including at Si and Sj
[SET-1]', '{"A": "p, s, u    (b) r, s, u   (c) r, u   (d) q, v"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('59b3b058-0cea-4b10-8dc9-75e9609b7984', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2015, 1, 'MCQ', 'Consider the intermediate code given below:
1. i = 1
2. j = 1
3. t1 = 5 * i
4. t2 = t1 + j
5. t3 = 4 * t2
6. t4 = t3
7. a[t4] = –1
8. j = j + 1
9. if j <= 5 goto(3)
10. i = i + 1
11. if i < 5 goto(2)
The number of nodes and edges in the control -flow-graph constructed for the above
code,  respectively, are
[SET-2]', '{"A": "5 and 7  (b) 6 and 7   (c) 5 and 5   (d) 7 and 8"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('c46f0db8-8f88-417a-911e-d20ce63db663', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2010, 1, 'MCQ', 'Which languages necessarily need heap allocation in the runtime environment', '{"A": "Those that support recursion", "B": "Those that use dynamic scoping", "C": "Those that allow dynamic data structures", "D": "Those that use global variables"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('642f694b-8910-416d-b709-7e2175d40cbf', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2012, 1, 'MCQ', 'Consider the program given below, in a block-structured pseudo-language with
lexical  scoping and nesting of procedures permitted.
Program main;
Var ...
Procedure A1;
Var ...
Call A2;
End A1
Procedure A2;
Var ...
Procedure A21;
Var ...
Call A1;
End A21
Call A21;
End A21
Call A1;
End main.
Consider the calling chain : Main ->A1->A2->A21->A1 The correct set of activation
records along with their access links is given by :', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('ac70d494-008c-4fe2-bd3a-1d451a75ed4f', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2014, 1, 'MCQ', 'Let L be a language and L'' be its complement. Which one of the following is NOT a
viable possibility?
[SET-1]', '{"A": "Neither L nor  \ud835\udc3f\u0305is recursively enumerable (r.e.).", "B": "One of L and \ud835\udc3f\u0305 is r.e. but not recursive; the other is not r.e.", "C": "Both L and\ud835\udc3f\u0305are r.e. but not recursive.", "D": "Both L and \ud835\udc3f\u0305 are recursive."}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('2ee88de5-7361-4317-9ab5-8ef3f6aef5e6', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2014, 2, 'MCQ', 'Which of the regular expressions given below represent the following DFA?
I) 0*1(1+00*1)*
II) 0*1*1+11*0*1
III) (0+1)*1
[SET-1]', '{"A": "I and II only", "B": "I and III only", "C": "II and III only", "D": "I, II, and III"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('061c2c28-4821-4888-a8d3-6460bd5f4eda', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2014, 1, 'MCQ', 'Which of the following statements are CORRECT?
1)Static allocation of all data areas by a compiler makes it impossible to implement
recursion.
2)Automatic garbage collection is essential to implement recursion.
3)Dynamic allocation of activation records is essential to implement recursion.
4)Both heap and stack are essential to implement recursion.
[SET-3]', '{"A": "1 and 2 only", "B": "2 and 3 only", "C": "3 and 4 only", "D": "1 and 3 only"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('f9ad6df9-b0c7-4d71-9a22-90ddf8d91ed6', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2014, 2, 'MCQ', 'A system uses 3 page frames for storing process pages in main memory. It uses the
Least Recently Used (LRU) page replacement policy. Assume that all the page
frames are initially empty. What is the total number of page faults that will occur
while processing the page re ference string given below?   4, 7, 6, 1, 7, 6, 1, 2, 7, 2
[SET-3]', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('760306ab-b958-4449-b2f2-a9821ad620f2', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2015, 1, 'MCQ', 'Let an represent the number of bit strings of length n containing two consecutive
1s. What is the recurrence relation for a n?
[SET-1]', '{"A": "an-2+an-1+2n-2     (b) an-2+2an-1+2n-2", "C": "2an-2+an-1+2n-2     (d) 2an-2+2an-1+2n-2"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('d60923a8-ab81-4429-aefc-157886916855', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2015, 2, 'MCQ', 'Consider three software items: Program-X, Control Flow Diagram of Program -Y and
Control Flow Diagram of Program-Z as shown below
The values of McCabe’s Cycloramic complexity of Program -X, Program -Y and
Program-Z respectively are
[SET-3]', '{"A": "4, 4, 7   (B) 3, 4, 7   (C) 4, 4, 8   (D) 4, 3, 8"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('e1202b30-7b3b-4561-ba59-1c67f2da053e', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2016, 2, 'MCQ', 'What will be the output of the following pseudo-code when parameters are passed
by reference and dynamic scoping is assumed?
a=3;
void n(x) {x = x * a; print(x) ;}
[SET-1]', '{"A": "6, 2   (b) 6, 6   (c) 4, 2  (d) 4, 4"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('b42fb068-9ee7-471c-8cb0-bede24073dd9', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2018, 1, 'MCQ', 'Which one of the following statements is FALSE?
Representations.

Regular language', '{"A": "Context-free grammar can be used to specify both lexical and syntax rules.", "B": "Type checking is done before parsing.", "C": "High-level language programs can be translated to different Intermediate", "D": "Arguments to a function can be passed using the program stack."}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('2379179d-672f-4c42-8210-b42a04531ee1', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'The above DFA accepts the set of all strings over {0,1} that
The above DFA accepts the set of all strings over {0,1} that', '{"A": "begin either with 0 or 1", "B": "end with 0", "C": "end with 00", "D": "contain the substring 00       [GATE - 2009]"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('f5d14c87-7688-44f4-b9c1-e955c98db2f3', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'Given the following state table of an FSM with two states A and B, one input and
one output.
If the initial state is A=0, B=0 what is the minimum length of an input string which
will take the machine to the state A=0, B=1 with output=1?
[GATE - 2009]', '{"A": "3", "B": "4", "C": "5", "D": "6"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('d1d46583-7b26-461a-beb7-a94b4a20388a', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'Which one of the following is FALSE?
(e) Every non-deterministic PDA can be converted to an equivalent deterministic
PDA.         [GATE - 2009]', '{"A": "There is unique minimal DFA for every regular language.", "B": "Every NFA can be converted to an equivalent PDA.", "C": "Complement of every context-free language is recursive."}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('2ba18b11-bef6-4bd0-896e-991802999a89', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'Which one of the following languages over the alphabet {0, 1} is described by the
regular expression: (0 + 1)*0(0 + 1)*0(0 + 1)*?  [GATE - 2009]', '{"A": "The set of all strings containing the substring 00.", "B": "The set of all strings containing at most two 0\u2019s.", "C": "The set of all strings containing at least two 0\u2019s.", "D": "The set of all strings that begin and end with either 0 or 1."}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('e7c9ee54-935c-4d85-9752-f37c2a800419', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'Let w be any string of length n is {0, 1}*. Let L be the set of all substrings of w.
What is the minimum number of states in a non-deterministic finite automaton
that accepts L?                [GATE – 2010]', '{"A": "n \u2013 1", "B": "n", "C": "n + 1", "D": "2n-1"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('f695fb5b-4394-4f43-96dc-34f448ddcb82', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2012, 1, 'MCQ', 'What is the complement of the language accepted by the NFA shown below:
[Assume Σ={a} and ϵ is the empty string]', '{"A": "\u03d5", "B": "{\u03f5}", "C": "a\u2217", "D": "{a, \u03f5}"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('3e0a3780-493a-4cb9-bba7-883c592c1f4d', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2012, 2, 'MCQ', 'Consider the set of strings on {0, 1} in which, every substring of 3 symbols has at
most two zeros. For example, 001110 and 011001 are in the language, but
100010 is not. All strings of length less than 3 are also in the language. A partially
completed DFA that accepts this language is shown below.', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('a28f5257-cfde-4880-a9e4-02d35d83cc10', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2013, 2, 'MCQ', 'Consider the DFA given
Which of the following are FALSE?
3. For the language accepted by A, A is the minimal DFA.
4. A accepts all strings over {0, 1} of length at least 2.', '{"A": "1 and 3 only   (b) 2 and 4 only", "C": "2 and 3 only   (d) 3 and 4 only"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('61ccffa8-4c89-4c64-b297-6d37e8cd9b0c', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2014, 1, 'MCQ', 'Consider the finite automaton in the following figure.
What is the set of reachable states for the input string 0011?
[SET-1]', '{"A": "{q0, q1, q2}  (b) {q0, q1}  (c) {q0, q1, q2, q3}  (d){q3 }"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('1a656b21-e6d4-4a73-811d-35a12e979254', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2016, 2, 'MCQ', 'Consider the following two statements:
I. If all states of an NFA are accepting states then the language accepted by the NFA is Σ*.
II. There exists a regular language A such that for all languages B, A∩B is regular.
Which one of the following is CORRECT?
[SET-2]', '{"A": "Only I is true", "B": "Only II is true", "C": "Both I and II are true", "D": "Both I and II are false"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('4d828cac-bc11-4f36-a829-16bced55f01a', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'Let L = L1 ∩ L2, where L1 and L2 are languages as defined below:
L1 = {ambmcanbn∣m, n ≥0}
L2 = {aibjck ∣i, j, k≥0}
Then L is', '{"A": "Not recursive", "B": "Regular", "C": "Context free but not regular", "D": "Recursively enumerable but not context free."}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('fd461bf9-52cf-45e4-8f7d-aeeb405ea5bb', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2010, 2, 'MCQ', 'Let L = {w ∈ (0 + 1)* | w has even number of 1s}, i.e. L is the set of all bit strings
with even number of 1s. Which one of the regular expression below represents L?', '{"A": "(0* 10*1)*", "B": "0* (10*10*)*", "C": "0*(10*1*)*0*", "D": "0*1(10*1)*10*"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('f9913f05-803a-491b-a2f6-f7e1e171b672', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2012, 1, 'MCQ', 'Given the language L = {ab, aa, baa}, which of the following strings are in L*?  1)
abaabaaabaa  2) aaaabaaaa         3) baaaaabaaaab      4) baaaaabaa', '{"A": "1, 2 and 3", "B": "2, 3 and 4", "C": "1, 2 and 4", "D": "1, 3 and 4"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('ccedf7d3-6afc-45d2-a6fe-1f3d92cc5c0b', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'Which one of the following regular expressions represents the set of all binary
strings with an odd number of 1’s?
[Gate - 2020]', '{"A": "((0 + 1)*1(0 + 1)*1)*10*", "B": "(0*10*10*)*0*1", "C": "10*(0*10*10*)*", "D": "(0*10*10*)*10*"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('91beb9d7-96e0-4f88-95fb-0f619630abc9', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2014, 1, 'MCQ', 'The length of the shortest string NOT in the language (over Σ = {a, b}) of the
following regular expression is ______________.
Given Regular expression: a*b*(ba)*a* [SET-3]', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('e0806e23-2e27-4f6f-b852-da1158c226e3', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2016, 1, 'MCQ', 'Which one of the following regular expressions represents the language: the set of all
binary strings having two consecutive 0s and two consecutive 1s?
[SET-1]', '{"A": "(0 + 1)* 0011(0 + 1)* + (0 + 1)* 1100(0 + 1)*", "B": "(0 + 1)* (00(0 + 1)* 11 + 11(0 + 1)* 00)(0 + 1)*", "C": "(0 + 1)* 00(0 + 1)* + (0 + 1)* 11(0 + 1)*", "D": "00(0 + 1)* 11 + 11(0 + 1)* 00"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('32954b72-92a7-4972-9cc6-644940b4d1d6', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'Consider the grammar G: S → aSa |bSb| a | b;
The language generated by the above grammar over the alphabet {a, b} is the set
of', '{"A": "All palindromes.", "B": "All odd length palindromes.", "C": "Strings that begin and end with the same symbol.", "D": "All even length palindromes.                                       [Marks: ][GATE:  2009]"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('e90bc869-441f-492d-b1c1-0b924925ba14', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'Which of the following statements is/are FALSE?
1. For every non-deterministic Turing machine, there exists an equivalent
deterministic Turing machine.
2. Turing recognizable languages are closed under union and complementation.
3. Turing decidable languages are closed under intersection and
complementation.
4. Turing recognizable languages are closed under union and intersection.', '{"A": "1 and 4 only", "B": "1 and 3 only", "C": "2 only", "D": "3 only                         [Marks:1][GATE:2013]"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('e3e3efad-cadc-4e28-9a47-2c86b20014c1', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'Let L1 be a recursive language. Let L2 and L3 be languages that are recursively
enumerable but not recursive. Which of the following statements is not
necessarily true?
Context-free language', '{"A": "L2 \u2013 L1 is recursively enumerable", "B": "L1 \u2013 L3 is recursively enumerable", "C": "L2 \u2229 L1 is recursively enumerable", "D": "L2 \u222a L1 is recursively enumerable   [Marks: 1][GATE:  2010]"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('b1727c72-6634-4835-89cd-04c384da4a04', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'Consider the languages
L1 = {0i1j | i != j}.
L2 = {0i1j | i = j}.
L3 = {0i1j | i = 2j+1}.
L4 = {0i1j | i != 2j}.
Which one of the following statements is true?', '{"A": "Only L2 is context free", "B": "Only L2 and L3 are context free", "C": "Only L1 and L2 are context free", "D": "All are context free      [Marks: 2][GATE:  2010]"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('f5d723b0-777a-498f-8493-96ce2f9b4885', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'Let P be a regular language and Q be context-free language such that Q ⊆ P.
(For example, let P be the language represented by the regular expression
p*q* and Q be {pnqn| n ∈N}). Then which of the following is ALWAYS regular?
[GATE – 2011]', '{"A": "P \u2229 Q   (b) P \u2013 Q  (c) \u2211* \u2013 P  (d) \u2211* \u2013 Q"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('85871a6e-171e-447b-a792-2c568e69fa9e', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2011, 2, 'MCQ', 'Consider the languages L1, L2 and L3 as given below.
L1 = {0p1q∣ p, q ∈ N},
L2 = {0p1q∣ p, q ∈ N and p = q} and
L3 = {0p1q0r ∣ p, q, r ∈ N and p = q = r}.
Which of the following statements is NOT TRUE?', '{"A": "Push Down Automata (PDA) can be used to recognize L1 and L2", "B": "L1 is a regular language", "C": "All the three languages are context free", "D": "Turing machines can be used to recognize all the languages"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('f499d8a7-fea2-47f1-81ab-e73c688684a1', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2014, 2, 'MCQ', 'Consider the following languages over the alphabet ∑ = {0, 1, c}
L1 = {0n1n∣n≥0}
L2 = {wcwr ∣w ∈{0, 1}*}
L3 = {wwr∣w ∈{0, 1}*}
Here, wr is the reverse of the string w. Which of these languages are
deterministic Context-free languages?
[SET-3]', '{"A": "None of the languages  (b) Only L1", "C": "Only L1 and L2    (d) All the three languages"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('e1780b16-b0dc-4a76-8fbc-475245905e4c', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2015, 1, 'MCQ', 'Which of the following languages are context-free?
L1 = {ambnanbm⎪ m, n ≥ 1}
L2 = {ambnambn⎪ m, n ≥ 1}
L3 = {ambn⎪ m = 2n + 1}
[SET-3]', '{"A": "L1 and L2 only", "B": "L1 and L3 only", "C": "L2 and L3 only", "D": "L3 only"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('fb2fad01-7529-4fd9-bac8-67937847b5f6', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2016, 2, 'MCQ', 'Consider the following languages:
L1 = {an bmcn+m: m, n ≥ 1}
L2 = {an bn c2n : n ≥ 1}
Which one of the following isTRUE?
[SET-2]', '{"A": "Both L1 and L2 are context-free.", "B": "L1 is context-free while L2 is not context-free.", "C": "L2 is context-free while L1 is not context-free.", "D": "Neither L1 nor L2 is context-free."}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('ef942107-024a-4308-aab6-c026ba0b7bbe', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'Consider the following languages:
I. {ambncpdq∣ m + p = n + q, where m, n, p, q ≥ 0}
II. {ambncpdq∣ m = n and p = q, where m, n, p, q ≥ 0}
III. {ambncpdq∣ m = n = p and p ≠ q, where m, n, p, q ≥ 0}
IV. {ambncpdq∣ mn = p + q, where m, n, p, q ≥ 0}
Which of the above languages are context-free?', '{"A": "I and IV only", "B": "I and II only", "C": "II and III only", "D": "II and IV only       [Marks: 2][GATE:  2018]"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('b1449102-6301-4efe-9a9e-55d1d607b092', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'Which one of the following languages over Σ = {a, b} is NOT context-free?', '{"A": "{wwR |w \u2208 {a,b}*}", "B": "{wanbnwR |w \u2208 {a,b}*, n \u2265 0}", "C": "{wanwRbn |w \u2208 {a,b}*, n \u2265 0}", "D": "{anbi | i \u2208 {n, 3n, 5n}, n \u2265 0}   [Marks: 2][GATE:  2019]"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('81fdffc4-73ad-4a1f-a49d-12c89827717a', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'Consider the language L = {an ∣n ≥ 0 }∪{anbn ∣ n ≥ 0 }  and the following statements.
I. L is deterministic context-free.
II. L is context-free but not deterministic context-free.
III. L is not LL(k) for any k.
Which of the above statements is/are TRUE?   [Gate CS: 2020]', '{"A": "\u2160only    (b) \u2161only   (c) \u2160& II only       (d) III only"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('724a78b2-ad32-439f-b3a6-ebf5b0bb0798', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2011, 1, 'MCQ', 'Which of the following pairs have DIFFERENT expressive power?
(NFA).
down automata (NPDA).
Turing machine.

Minimization of DFA', '{"A": "Deterministic finite automata (DFA) and Non-deterministic finite automata", "B": "Deterministic push down automata (DPDA) and Non-deterministic push", "C": "Deterministic single-tape Turing machine and Non-deterministic single-tape", "D": "Single-tape Turing machine and multi-tape Turing machine."}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('18c36fec-790e-4e86-a208-1276664297c6', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2011, 2, 'MCQ', 'Definition of a language L with alphabet {a} is given as following.  L={ank| k>0,
and n is a positive integer constant}
What is the minimum number of states needed in a DFA to recognize L?', '{"A": "k + 1   (b) n + 1  (c) 2n + 1   (d)2k + 1"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('155e0dbf-82d5-49e8-bdbf-9391c125f80f', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2011, 2, 'MCQ', 'A deterministic finite automation (DFA)D with alphabet {a, b} is given below
Which of the following finite state machines is a valid minimal DFA which
accepts the same language as D?', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('cd74ce22-44bb-4109-982c-bc63ce93681f', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2015, 2, 'MCQ', 'Consider the DFAs M and N given above. The number of states in a minimal DFA
that accepts the language L(M) ∩ L(N) is __________.
[SET-1]', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('eebdf00d-c513-496e-9c38-12f61ae6f409', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2015, 2, 'MCQ', 'The number of states in the minimal deterministic finite automaton
corresponding to the regular expression (0 + 1) * (10) is __________
[SET-2]', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('8b88a4aa-514f-4289-a211-3c4ed57ac71b', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2015, 1, 'MCQ', 'Let T be the language represented by the regular expression Σ*0011Σ* where
Σ = {0, 1}. What is the minimum number of states in a DFA that recognizes L’
(complement of L)?
[SET-3]', '{"A": "4   (b)5   (c)6   (d)8"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('03e1dc0d-8db7-40d4-aa2d-70058493134a', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2017, 1, 'MCQ', 'Consider the language L given by the regular expression (a + b)*b(a + b) over the
alphabet {a, b}. The smallest number of states needed in deterministic finite -
state automation (DFA) accepting L is _________.
[SET-1]', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('268ec926-3e59-4867-8aea-29b8ebfd8782', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2017, 1, 'MCQ', 'The minimum possible number of a deterministic finite automation that
accepts the regular language
L = {w1aw2 | w1, w2 ∈ {a, b}*, |w1| = 2, |w2| ≥ 3} is _________.
[SET-2]', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('b1217084-5aa8-42ca-9e40-4aa138b7b2f4', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2018, 1, 'MCQ', 'Let N be an NFA with n states. Let k be the number of states of a minimal DFA
which is equivalent to N. Which one of the following is necessarily true?', '{"A": "k \u2265 2n  (b)k \u2265 n   (c)k \u2264 n2   (d)k \u2264 2n"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('6db40c77-61a9-4950-8ce3-b7ee06b86414', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'Consider the following language.
L = {x ∈ {a, b}* | number of a’s in x is divisible by 2 but not divisible by 3}
The minimum number of states in a DFA that accepts L is ______.', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('158bf6cc-081c-4f89-80c8-6aa5116737f1', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2013, 1, 'MCQ', 'Which of the following statements are TRUE?
1. The problem of determining whether there exists a cycle in an undirected
graph is in P.
2. The problem of determining whether there exists a cycle in an undirected
graph is in NP.
3. If a problem A is NP-Complete, there exists a non-deterministic polynomial
time algorithm to solve A.

Regular language', '{"A": "1, 2 and 3     (b)1 and 2 only", "C": "2 and 3 only    (d)1 and 3 only"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('17ee307b-a0bc-4add-a1ca-9d74fe9578c7', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2014, 1, 'MCQ', 'Which one of the following is TRUE?
[SET-1]', '{"A": "The language L = {an bn\u2502n\u22650} is regular.", "B": "The language L = {an\u2502n is prime} is regular.", "C": "The language L = {w \u2502w has 3k+1 b''s for some k\u2208N with \u03a3 = {a, b}} is regular", "D": "The language L = {w w\u2502w \u2208 \u03a3* with \u03a3 = {0, 1}} is regular."}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('af4fa320-4049-4c9e-b58c-e6f459a8ad81', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'Let L1 = {w ∈ {0, 1}*|w has at least as many occurrences of (110)’s as (011)’s}.
Let L2 = {w ∈ {0, 1}*|w has at least as many occurrences of (000)’s as (111)’s}.
Which one of the following is TRUE?', '{"A": "L1 is regular but not L2", "B": "L2 is regular but not L1", "C": "Both L1 and L2 are regular", "D": "Neither nor L1 are L2 regular  [Marks: 2][GATE:  2014][SET-2]"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('8e9a13f3-16d3-460f-aa3b-7d49ed116f9c', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'If L1 = {an ∣ n ≥ 0} and L2 = {bn ∣ n ≥ 0} , consider the following statement:
a. L1.L2 is a regular language
b. L1.L2 = {anbn ∣ n ≥ 0}
Which one of the following is CORRECT?', '{"A": "Only I", "B": "Only II", "C": "Both I and II", "D": "Neither I nor II    [Marks: 1][GATE:  2014][SET-2]"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('1a4d15bf-df38-45f9-be29-ba7ff13a7ad6', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2015, 2, 'MCQ', 'Which of the following is/are regular languages?
L1: {wxwR∣ w, x ∈{a, b}∗ and |w|, |x|> 0}, wR is the reverse of string w.
L2: {anbm ∣ m ≠ n and m, n ≥ 0}
L3: {apbqcr∣p, q, r ≥ 0}
[SET-2]', '{"A": "L1 and L3 only     (b) L2 only  (c) L2 and L3 only  (d) L3 only"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('e080aeb0-8818-4232-81a5-e96cb3638253', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2016, 1, 'MCQ', 'Language L1 is defined by the grammar: S1→ aS1b|ε
Language L2 is defined by the grammar: S2→ abS2|ε
Consider the following statements:
P: L1 is regular
Q: L2 is regular
Which one of the following is TRUE?
[SET-2]', '{"A": "Both P and Q are true", "B": "P is true and Q is false", "C": "P is false and Q is true", "D": "Both P and Q are false"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('580e2018-c68d-420e-a4a2-32dfdf1888ee', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'If L is a regular language over Σ = {a, b}, which one of the following languages is NOT
regular?
Closure properties of recursive and recognizable language', '{"A": "Suffix (L) = {y \u2208\u03a3* such that xy \u2208 L}", "B": "{wwR\u2502w \u2208 L}", "C": "Prefix (L) = {x \u2208\u03a3*\u2502\u2203y \u2208\u03a3* such that xy \u2208 L}", "D": "L \u2219 LR = {xy \u2502 x \u2208 L, yR\u2208 L}"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('31e88380-652c-441d-b408-0161dc6f7089', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'Let L be a language and L’ be its complement. Which one of the following is
NOT a viable possibility?', '{"A": "Neither L nor L\u2019 is recursively enumerable (r.e.).", "B": "One of L and L\u2019 is r.e. but not recursive; the other is not r.e.", "C": "Both L and L\u2019 are r.e. but not recursive.", "D": "Both L and L\u2019 are recursive                         [Marks: 2][GATE:  2014][SET-1]"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('8e7a5f5a-cbf3-42bb-8aca-742768da3ee8', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2015, 1, 'MCQ', 'For any two languages L1 and L2 such that L1 is context-free and L2 is recursively enumerable
but not recursive, which of the following is/are necessarily true?
a. 𝐿̅1 ( Compliment of L1) is recursive
b. 𝐿̅2 ( Compliment of L2) is recursive
c. 𝐿̅1 is context-free
d. 𝐿̅1∪ L2 is recursively enumerable
[SET-1]
DFA/NFA to regular expression', '{"A": "I only  (b) III only  (c) III and IV only  (d) I and IV only"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('25826ba0-f376-43f8-b40b-fffd892a7c49', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2014, 2, 'MCQ', 'Which of the regular expressions given below represent the following DFA?
I. 0*1(1+00*1)*  II. 0*1*1+11*0*1 III. (0+1)*1
[SET-1]
Decidability & un-decidability', '{"A": "I and II only     (b) I and III only", "C": "II and III only     (d) I, II, and III"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('f46b1f01-cbca-46b1-91ec-404aa89fcc64', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2012, 1, 'MCQ', 'Which of the following problems are decidable?
(1) Does a given program ever produce an output?
(2) If L is a context-free language, then, is 𝐿̅also context-free?
(3) If L is a regular language, then, is 𝐿̅ also regular?
(4) If L is a recursive language, then, is 𝐿̅ also recursive?', '{"A": "1,2,3,4  (b) 1,2  (c) 2,3,4  (d) 3,4"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('ca59570d-7cde-4018-8611-6da9daaaa190', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2013, 2, 'MCQ', 'Which of the following is/are undecidable?
1. G is a CFG. Is L(G) = ϕ?
2. G is a CFG. Is L(G) = Σ*?
3. M is a Turing machine. Is L(M) regular?', '{"A": "3 only", "B": "3 and 4 only", "C": "1, 2 and 3 only", "D": "2 and 3 only"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('29e84a83-209e-4224-930b-1b1fa6e90b7b', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2014, 2, 'MCQ', 'Let <M> be the encoding of a Turing machine as a string over Σ = {0, 1}.
Let L = {<M> |M is a Turing machine that accepts a string of length 2014}.
Then, L is
[SET-2]', '{"A": "decidable and recursively enumerable", "B": "undecidable but recursively enumerable", "C": "undecidable and not recursively enumerable", "D": "decidable but not recursively enumerable"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('25a48cef-b564-4c32-93d2-787b86381b67', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2014, 2, 'MCQ', 'Which one of the following problems is undecidable?
[SET-3]
Reduction (Turing Machine)', '{"A": "Deciding if a given context-free grammar is ambiguous.", "B": "Deciding if a given string is generated by a given context-free grammar.", "C": "Deciding if the language generated by a given context-free grammar is empty.", "D": "Deciding if the language generated by a given context-free grammar is finite."}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('0edaf2ca-1964-43d8-a3c3-bb38051232ad', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2014, 1, 'MCQ', 'Let A≤ mB denotes that language A is mapping reducible (also known as many -to-one
reducible) to language B. Which one of the following is FALSE?
[SET-2]', '{"A": "If A\u2264m B and B is recursive then A is recursive.", "B": "If A\u2264m Band A is undecidable then B is undecidable.", "C": "If A\u2264m Band B is recursively enumerable then A is recursively enumerable.", "D": "If A\u2264m B and B is not recursively enumerable then A is not recursively enumerable."}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('669805bf-b54b-448b-8339-7c766b2311b8', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2016, 2, 'MCQ', 'Let X be a recursive  language and Y be a recursively enumerable but not
recursive language. Let W and Z be two languages such that Y’ reduces to W’,
and Z reduces to X (reduction means the standard many -one reduction). Which
one of the following statements is TRUE?
[SET-1]
Countable and uncountable sets', '{"A": "W can be recursively enumerable and Z is recursive.", "B": "W can be recursive and Z is recursively enumerable", "C": "W is not recursively enumerable and Z is recursive", "D": "W is not recursively enumerable and Z is not recursive."}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('052f8d64-f937-4f24-a053-36c898d442e3', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2014, 1, 'MCQ', 'Let Σ be a finite non-empty alphabet and let 2Σ* be the power set of Σ*.  Which
one of the following is TRUE?
[SET-3]', '{"A": "Both 2\u03a3* and \u03a3* are countable", "B": "2\u03a3* is countable and \u03a3* is uncountable", "C": "2\u03a3* is uncountable and \u03a3* is countable", "D": "Both 2\u03a3* and \u03a3* are uncountable"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('00936b1c-f209-47eb-9394-5d4a6fb8daf4', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2018, 2, 'MCQ', 'Let N be the set of natural numbers. Consider the following sets.
P: Set of Rational numbers (positive and negative)
Q: Set of functions from {0, 1} to N
R: Set of functions from N to {0, 1}
S: Set of finite subsets of N.
Which of the sets above are countable?', '{"A": "Q and S only      (b) P and S only", "C": "P and R only     (d) P, Q and S only"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('3f7be331-0a74-4584-a6f8-1f361afd842f', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2019, 2, 'MCQ', 'Consider the following sets:
S1.  Set of all recursively enumerable languages over the alphabet {0,1}
S2.  Set of all syntactically valid C programs
S3.  Set of all languages over the alphabet {0,1}
S4.  Set of all non-regular languages over the alphabet {0,1}
Which of the above sets are uncountable?

NP completeness', '{"A": "S2 and S3  (b)S3 and S4   (c)S1 and S4   (d)S1 and S2"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('bb7de85c-deae-4f46-bfaf-b0b3ae853833', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2015, 1, 'MCQ', 'Consider the following statements.
I. The complement of every Turing decidable language is Turing decidable
II. There exists some language which is in NP but is not Turing decidable
III. If L is a language in NP, L is Turing decidable
Which of the above statements is/are true?
[SET-2]', '{"A": "Only II", "B": "Only III", "C": "Only I and II", "D": "Only I and III"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('d6969208-9765-40bf-a5eb-b09489a88173', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'Language L1 is polynomial time reducible to language L2. Language L3 is
polynomial time reducible to L2, which in turn is polynomial time reducible to
language L4. Which of the following is/are True?
I. If L4 ∈ P, L2 ∈ P
II. If L1 ∈ P or L3 ∈ P, then L2 ∈ P
III. L1 ∈ P, if and only if L3 ∈ P
IV. If L4 ∈ P, then L1 ∈ P and L3 ∈ P
Push down automata', '{"A": "II only", "B": "III only", "C": "I and IV only", "D": "I only       [Marks: ][GATE:  2015][SET-3]"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('8161066d-78ca-449d-bcd8-1cfb087f0b14', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2015, 2, 'MCQ', 'Consider the NPDA 〈Q = {q0, q1, q2}, Σ = {0, 1}, Γ = {0, 1, ⊥}, δ, q0, ⊥, F = {q2}〉,
where (as per usual convention) Q is the set of states, Σ is the input alphabet, Γ
is stack alphabet, δ is the state transition function, q0 is the initial state, ⊥ is
the initial stack symbol, and F is the set of accepting states, The state
transition is as follows:
Which one of the following sequences must follow the string 101100 so that the
overall string is accepted by the automaton?
[SET-1]
Arden’s lemma', '{"A": "10110    (b)10010   (c) 01010   (d)01001"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('9c705dc0-4d37-402c-8cba-8a80e158dd13', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2015, 2, 'MCQ', 'Consider the alphabet Σ={0,1}, the null/empty string λ and the set of strings X 0,X1, and X 2
generated by the corresponding non-terminals of a regular grammar. X0, X1, and X2 are related
as follows.
X0=1X1
X1=0X1+1X2
X2=0X1+ λ
Which one of the following choices precisely represents the strings in X0?
[SET-2]
Context-free language and context-free grammars', '{"A": "10(0\u2217+(10)\u2217)1", "B": "10(0\u2217+(10)\u2217)\u22171", "C": "1(0+10)\u22171", "D": "10(0+10)\u22171+110(0+10)\u22171"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('c471f101-8a59-4a95-8954-22199b79d090', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'Which of the following languages is generated by the given grammar?
S → aS|bS|ε', '{"A": "{anbm |n,m \u2265 0}", "B": "{w \u2208 {a, b}* | w has equal number of a\u2019s and b\u2019s}", "C": "{an |n \u2265 0}\u222a{bn |n \u2265 0}\u222a{an b(sup>n|n\u2265 0}", "D": "{a, b}*       [Marks:1][GATE:  2016][SET-1]"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('f6c4ab97-1cee-4b46-a9ce-aac680532262', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2016, 2, 'MCQ', 'Consider the following context-free grammars:
G1: S →aS|B, B →b|bB
G2: S →aA|bB, A →aA|B|ε, B →bB|ε
Which one of the following pairs of languages is generated by G1 and G2,
respectively?
[SET-1]
Decidability and undesirability', '{"A": "{ambn\u2502m> 0 or n > 0} and {am bn |m > 0 and n > 0}", "B": "{ambn\u2502m> 0 and n > 0} and {am bn |m > 0 or n\u22650}", "C": "{am bn\u2502m\u22650 or n > 0} and {am bn |m > 0 and n > 0}", "D": "{am bn\u2502m\u22650 and n > 0} and {am bn |m > 0 or n > 0}"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('1abef4d8-fd4f-4e24-a636-3e7db3b56644', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'Which of the following decision problems are undecidable?
I. Given NFAs N1 and N2, is L (N1) ∩ L (N2) = Φ?
II. Given a CFG G = (N, Σ, P, S) and a string x ∈Σ*, does x ∈ L (G)?
III. Given CFGs G1 and G2, is L (G1) = L (G2)?
IV. Given a TM M, is L (M) = Φ?', '{"A": "I and IV only", "B": "II and III only", "C": "III and IV only", "D": "II and IV only      [Marks:1][GATE:  2016][SET-1]"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('62d5c7f7-a771-4550-b2f7-7a84639b4eab', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'Let L(R) be the language represented by regular expression R. Let L(G) be the
language generated by a context free grammar G. Let L(M) be the language
accepted by a Turing machine M.
Which of the following decision problems are undecidable?                              I.
Given a regular expression R and a string w, is w ∈ L(R)?
II. Given a context-free grammar G, is L(G) = ∅?
III. Given a context-free grammar G, is L(G) = Σ* for some alphabet Σ?
IV. Given a Turing machine M and a string w, is w ∈L(M)?', '{"A": "I and IV Only      (b) II and III Only", "C": "II, III and IV Only    (d) III and IV Only"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('d5c92de7-e5f5-460f-bd7e-bdd88e13a077', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'Consider the following problems. L(G) denotes the language generated by a
grammar G. L(M) denotes the language accepted by a machine M.
(I) For an unrestricted grammar G and a string w, whether w ∈ L(G)
(II) Given a Turing machine M, whether L(M) is regular.
(III) Given two grammar G1 and G2, whether L(G1) = L(G2).
(IV) Given an NFA N, whether there is a deterministic PDA P such that N and  P
accept the same language
Which one of the following statement is correct?', '{"A": "Only I and II are undecidable", "B": "Only III is undecidable", "C": "Only II and IV are undecidable", "D": "Only I, II and III are undecidable                         [Marks: 2][GATE:  2018]"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('5f4386dc-506d-4a6d-8fc9-907e446ed710', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'Which of the following languages are undecidable? Note that ⟨M⟩ indicates
encoding of the Turing machine M.
L1 = { ⟨M⟩∣ L(M) = ∅ }
L2 = { ⟨M, w, q⟩∣ M on input w reaches state q in exactly 100 steps }
L3 = { ⟨M⟩∣ L(M) is not recursive }
L4 = { ⟨M⟩∣ L(M) contains at least 21 members }
Push down automation', '{"A": "L1, L3, and L4 only", "B": "L1 and L3 only", "C": "L2 and L3 only", "D": "L2, L3, and L4 only"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('685c116c-c912-4a54-a84b-650d2f17e27a', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2016, 2, 'MCQ', 'Consider the transition diagram of a PDA given below with input alphabet Σ = {a, b} and
stack alphabet Γ = {X, Z}. Z is the initial stack symbol. Let L denote the language accepted
by the PDA.
Which one of the following is TRUE?
[SET-1]
Regular expression and minimization of DFA', '{"A": "L = {anbn\u2502n \u2265 0} and is not accepted by any finite automata", "B": "L = {an |n\u22650} \u222a {anbn|n\u2265 0} and is not accepted by any deterministic PDA", "C": "L is not accepted by any Turing machine that halts on every input", "D": "L = {an |n \u2265 0} \u222a {an bn |n \u2265 0} and is deterministic context-free"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('ca38a509-c2d4-4a0c-a44c-817768859fda', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2016, 1, 'MCQ', 'The number of states in the minimum sized DFA that accepts the language
defined by the regular expression. (0+1)*(0+1)(0+1)* is ________
[SET-2]
Closure properties', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('01b1dfa6-ca10-4193-aa37-888380b50006', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2016, 1, 'MCQ', 'Consider the following types of languages:
L1: Regular,
L2: Context-free,
L3: Recursive,
L4: Recursively enumerable.
Which of the following is/are TRUE?
(I) 𝐿3̅̅̅ ∪ 𝐿4is recursively enumerable.
(II) 𝐿2̅̅̅ ∪ 𝐿3is recursive.
(III) L*1 ∩L2 is context-free.
(IV) L1 ∪ 𝐿2̅̅̅ is context-free.
[SET-2]', '{"A": "I only.", "B": "I and III only.", "C": "I and IV only.", "D": "I, II and III only."}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('3fa88d21-05f4-49be-8205-f60c25e79822', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2017, 1, 'MCQ', 'Let L1, L2 be any two context-free languages and R be any regular language. Then which of
the following is/are CORRECT?
a. L1∪ L2 is context-free.
b.  L1'' is context-free.
c. L1 – R is context-free.
d. L1∩ L2 context-free.  [SET-2]
Decidable and not decidable', '{"A": "I, II and IV only", "B": "I and III only", "C": "II and IV only", "D": "I only"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('deec237d-06fa-43d4-bf78-a344860ce481', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2016, 2, 'MCQ', 'Consider the following languages.
L1 = {〈M〉|M takes at least 2016 steps on some input},
L2 = {〈M〉│M takes at least 2016 steps on all inputs} and
L3 = {〈M〉|M accepts ε};
Where for each Turing machine M, 〈M〉 denotes a specific encoding of M. Which one of the
following is TRUE?
[SET-2]
Context-free grammars', '{"A": "L1 is recursive and L2, L3 are not recursive", "B": "L2 is recursive and L1, L3 are not recursive", "C": "L1, L2 are recursive and L3 is not recursive", "D": "L1, L2, L3 are recursive"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('28b0071f-b1a1-4559-b58f-93ef9a9bd012', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2016, 2, 'MCQ', 'A student wrote two context-free grammars G1 and G2 for generating a single C-
like array declaration. The dimension of the array is at least one. For example,
int a[10][3]; The grammars use D as the start symbol, and use six terminal
symbols int; id[] num.
Which of the grammars correctly generate the declaration mentioned above?
[SET-2]', '{"A": "Both G1 and G2", "B": "Only G1", "C": "Only G2", "D": "Neither G1 nor G2"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('390e9499-40fa-4691-b3bd-994274161b91', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2017, 2, 'MCQ', 'If G is a grammar with productions: S →SaS | aSb | bSa | SS | ϵ ; where S is
the start variable, then which one of the following strings is not generated by G
[SET-1]
Context-free grammars to context-free language', '{"A": "abab   (b)aaab   (c)abbaa   (d)babba"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('3b108777-565c-4499-821a-67829b96a2c6', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2017, 1, 'MCQ', 'Consider the following context-free grammar over the alphabet Σ = {a, b, c} with
S as the start symbol:
S →abScT | abcT
T → bT | b
Which one of the following represents the language generated by the above
grammar?
[SET-1]', '{"A": "{(ab)n (cb)n\u2502n\u2265 1}", "B": "{(ab)ncb(m1 ) cb(m2 )\u2026cb(mn )\u2502n, m1, m2, \u2026, mn \u2265 1}", "C": "{(ab)n (cbm)n\u2502m,n\u2265 1}", "D": "{(ab)n (cbn)m\u2502m,n\u2265 1}"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('161cbea5-3442-48fa-9c71-e3fdab40289c', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2017, 2, 'MCQ', 'Consider the context-free grammars over the alphabet {a, b, c} given below. S
and T are non-terminals.
G1: S →aSb|T, T → cT|ϵ
G2: S →bSa|T, T → cT|ϵ
The language L(G1) ∩ L(G2) is
[SET-1]', '{"A": "Finite", "B": "Not finite but regular", "C": "Context-Free but not regular", "D": "Recursive but not context-free"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('9ae981fe-8b2c-4497-bea9-394e874fc3a2', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'Identify the language generated by the following grammar, where S is the start
variable.                                                                                                           S
→ XY,         X → aX| a,              Y → aYb | ϵ
Closure properties of context-free language', '{"A": "{ambn \u2223 m \u2265 n, n>0}", "B": "{ambn \u2223 m \u2265 n, n\u22650}", "C": "{ambn \u2223 m > n, n\u22650}", "D": "{ambn \u2223 m > n, n>0}    [Marks:1][GATE:  2017][SET-2]"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('fe2b5832-2f73-40de-b8a6-3a4f41ae1341', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2017, 2, 'MCQ', 'Consider the following languages over the alphabet Σ = {a, b, c}.
Let L1 = {an bncm│m, n ≥ 0} and L2 = {am bn cn│m, n ≥ 0}
Which of the following are context-free languages?                                                                  I.
L1∪ L2    II. L1∩ L2
[SET-1]
Recursive and recognizable language', '{"A": "I only", "B": "II only", "C": "I and II", "D": "Neither I nor II"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('dd38fec7-936d-4877-b655-2a70955fbe2c', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2017, 2, 'MCQ', 'Let A and B be finite alphabets and let # be a symbol outside both A and B. Let
f be a total function from A* to B*. We say f is computable if there exists a
Turing machine M which given an input x in A*, always halts with f(x) on its
tape. Let Lf denote the language {x # f(x)│x ∈ A* }. Which of the following
statements is true:
[SET-1]
NFA', '{"A": "f is computable if and only if Lf is recursive.", "B": "f is computable if and only if Lf is recursively enumerable.", "C": "If f is computable then Lf is recursive, but not conversely.", "D": "If f is computable then Lf is recursively enumerable, but not conversely."}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('0817080f-36de-40e4-b6a9-bedb8684f306', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2017, 1, 'MCQ', 'Let 𝛿 denote the transition function and 𝛿̂ denote the extended transition function of the ∈
−𝑁𝐹𝐴 whose transition table is shown below:
Then 𝛿̂(𝑞2, 𝑎𝑏𝑎) is
[SET-2]
Context-free and regular language', '{"A": "\u2205   (b) {\ud835\udc5e0, \ud835\udc5e1, \ud835\udc5e3}  (c) {\ud835\udc5e0, \ud835\udc5e1, \ud835\udc5e2} (d) \ud835\udc5e0, \ud835\udc5e2, \ud835\udc5e3"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('8e0a44f4-b2c7-474b-bf34-ba81f185012a', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2017, 2, 'MCQ', 'Consider the following languages:
L1 = {ap│p is a prime number}
L2 = {an bm c2m | n ≥ 0, m ≥ 0}
L3 = {an bn c2n │ n ≥ 0}
L4 = {an bn│ n ≥ 1}
Which of the following are CORRECT?
I. L1 is context-free but not regular.
II. L2 is not context-free.
III. L3 is not context-free but recursive.
IV. L4 is deterministic context-free.
[SET-2]', '{"A": "I.II and IV Only", "B": "II and III Only", "C": "I and IV Only", "D": "III and VI Only"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('c5a9e879-a281-432b-b9a7-6aefb56ce990', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'Consider the following languages.
L1 = {wxyx | w, x, y ∈ (0 + 1)+}
L2 = {xy | x, y ∈ (a + b)*, |x| = |y|, x ≠ y}
Which one of the following is TRUE?
Answer: (c)
Closure properties of recognizable language', '{"A": "L1 is context-free but not regular and L2 is context-free.", "B": "Neither L1 nor L2 is context-free.", "C": "L1 is regular and L2 is context-free.", "D": "L1 is context-free but L2 is not context-free."}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('5e4c9ec3-443e-4252-9564-74b1fd9e2c51', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2018, 1, 'MCQ', 'The set of all recursively enumerable languages is

Regular language and closure properties', '{"A": "closed under complementation.", "B": "closed under intersection.", "C": "a subset of the set of all recursive languages.", "D": "an uncountable set."}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('183b4bd6-ff46-4b79-95e5-0a4ccd44f861', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2018, 1, 'MCQ', 'Given a language L, define L i as follows:
L0 = {ε}
Li = Li-1∙L for all i > 0
The order of a language L is defined as the smallest k such that Lk=Lk+1. Consider
the language L1 (over alphabet 0) accepted by the following automaton.
The order of L1 is ______.

Pumping lemma for regular language', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('518230e2-9bdf-4c84-8539-68d6f44de2b9', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2019, 1, 'MCQ', 'For Σ = {a, b}, let us consider the regular language                                            L
= {x| x = a2+3k or x = b10+12k, k ≥ 0}.
Which one of the following can be a pumping length (the constant guaranteed

Closure properties of regular language', '{"A": "3", "B": "9   (c)5   (d)24"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('582dbcf0-f5ec-4461-ab51-600e9f38cfe1', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'Consider the following statements.
a. If L1 U L2 is regular, then both L1 and L2 must be regular.
b. The class of regular languages is closed under infinite union.
Which of the above statements is/are TRUE?   [GATE - 2020]', '{"A": "I only                                           (b) II only", "C": "Both I and II                                (d) Neither I nor II"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('205822d3-e602-46bd-950e-c49926a2260c', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'Which one of the following is TRUE for any simple connected undirected graph
with more than 2 vertices?
][GATE:  2009]', '{"A": "No two vertices have the same degree.", "B": "At least two vertices have the same degree.", "C": "At least three vertices have the same degree.", "D": "All vertices have the same degree.                                            [Marks:"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('b6d29737-df56-4735-b746-40e6e13b766a', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2009, 1, 'MCQ', 'What is the chromatic number of an n-vertex simple connected graph which does
not contain any odd length cycle? Assume n ≥ 2.', '{"A": "2    (b)3    (c)n-1    (d)n"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('3c178b9a-04c8-439c-908a-612d80ba98d9', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2009, 1, 'MCQ', 'Which one of the following in NOT necessarily a property of a Group?', '{"A": "Commutativity      (b) Associativity", "C": "Existence of inverse for every element   (d) Existence of identity"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('ba38c68d-f97b-45c2-80dc-2dd004c2724b', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2009, 1, 'MCQ', 'Consider the binary relation R = {(x, y), (x, z), (z, x), (z, y)} on the set {x, y, z}.
Which one of the following is TRUE?', '{"A": "R is symmetric but NOT anti-symmetric", "B": "R is NOT symmetric but anti-symmetric", "C": "R is both symmetric and anti-symmetric", "D": "R is neither symmetric nor anti-symmetric"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('f1a7e842-f464-49a7-a71a-c0efdbefc2c7', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2009, 1, 'MCQ', 'An unbalanced dice (with 6 faces, numbered from 1 to 6) is thrown. The
probability that the face value is odd is 90% of the probability that the face value
is even. The probability of getting any even numbered face is the same. If the
probability that the face is even given that it is greater than 3 is 0.75, which one
of the following options is closest to the probability that the face value exceeds
3?', '{"A": "0.453    (b) 0.468    (c) 0.485    (d) 0.492"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('d4bea50e-b948-4f4b-a7c8-bc414dcb6680', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'For the composition table of a cyclic group shown below correct?
[Marks: ][GATE:
2009]', '{"A": "a, b are generators    (b) b, c are generators", "C": "c, d are generators    (d) d, a are generators"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('8b410df7-2fd9-4627-b749-e24353377ef9', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'Which one of the following is the most appropriate logical formula to represent
the statement?
“Gold and silver ornaments are precious”.
The following notations are used:
G(x): x is a gold ornament,
S(x): x is a silver ornament,
P(x): x is precious', '{"A": "\u2200x(P(x) \u2192 (G(x) \u2227 S(x)))", "B": "\u2200x((G(x) \u2227 S(x)) \u2192 P(x))", "C": "\u2203x((G(x) \u2227 S(x)) \u2192 P(x)", "D": "\u2200x((G(x) \u2228 S(x)) \u2192 P(x))     [Marks: ][GATE:  2009]"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('fabe9419-a86f-4a0c-b5f2-cfc364bb372e', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2009, 1, 'MCQ', 'The binary operation ◻ is defined as follows
P Q PQ', '{"A": "\u00acQ\u25a1\u00acP    (b) P\u25a1\u00acQ   (c) \u00acP\u25a1Q  (d) \u00acP\u25a1\u00acQ"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('6303e539-c750-47c9-8d3f-e5009b54d3a4', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2009, 1, 'MCQ', '∫ (1 − tanx)/(1 + tanx)dx
𝜋/4
0  is equivalent to', '{"A": "0    (b)1    (c)ln2   (d)0.5 ln 2"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('9bc4db48-3927-4269-9a60-545428f7f2d6', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2010, 1, 'MCQ', 'Consider the following well-formed formulae:
(I) ¬∀x(P(x))   (II)¬∃x(P(x))  (III)¬∃x(¬P(x)) (IV) ∃x(¬P(x))
Which of the above are equivalent?', '{"A": "I and III   (b)I and IV   (b)II and III  (d)II and IV"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('d192c8a5-29b2-47ca-b0c8-7600b8559e9a', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'Let G = (V, E) be a graph. Define ξ (G) =  ∑ 𝑖d ∗ dd  , where id is the number of
vertices of degree d in G. If S and T are two different trees with ξ(S) = ξ(T),then', '{"A": "|S| = 2|T|", "B": "|S| = |T|-1", "C": "|S| = |T|", "D": "|S| = |T|+1       [Marks: 1][GATE:2010]"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('30f3f63e-1ca0-4a0c-a3ab-b522b4ad1b0a', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2010, 1, 'MCQ', 'What is the possible number of reflexive relations on a set of 5 elements?', '{"A": "2 10   (b)215     (c)220    (d)225"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('f2ffb503-95f9-4b58-bd76-2887d0bdeca8', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2010, 1, 'MCQ', 'Consider the set S = {1, ω, ω2}, where ω and ω2 are cube roots of unity. If
*denotes the
multiplication operation, the structure (S, *) forms', '{"A": "A group       (b) A ring", "C": "An integral domain     (d) A field"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('ffe548b2-4d3f-4f22-8929-24fbabf2414f', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2010, 2, 'MCQ', 'The degree sequence of a simple graph is the sequence of the degrees of the
nodes in the graph in decreasing order. Which of the following sequences can not
be the degree sequence of any graph?
I. 7, 6, 5, 4, 4, 3, 2, 1     II. 6, 6, 6, 6, 3, 3, 2, 2
III. 7, 6, 6, 4, 4, 3, 2, 2     IV. 8, 7, 7, 6, 4, 2, 1, 1', '{"A": "I and II      (b) III and IV", "C": "IV only                 (d) II and IV"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('4d8828b6-eeba-4da7-98c0-1afcb900d704', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2010, 2, 'MCQ', 'Suppose the predicate F(x, y, t) is used to represent the statement that person x
can fool person y at time t. Which one of the statements below expresses best the
meaning of the formula, ∀𝑥∃𝑦∃𝑡(𝐹(𝑥, 𝑦, 𝑡))?', '{"A": "Everyone can fool some person at some time", "B": "No one can fool everyone all the time", "C": "Everyone cannot fool some person all the time", "D": "No one can fool some person at some time"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('4e94239e-47a3-4000-bfab-150fe7c6a0f1', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2010, 2, 'MCQ', 'Consider a complete undirected graph with vertex set {0, 1, 2, 3, 4}. Entry Wij in
the matrix W below is the weight of the edge {i, j}.
What is the minimum possible weight of a spanning tree T in this graph such
that vertex 0 is a leaf node in the tree T?', '{"A": "7   (b) 8  (c) 9   (d) 10"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('01cc9625-4345-4be0-be9f-37a046b28bdf', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2010, 1, 'MCQ', 'What is the value of lim
𝑛→∞
(1 −
1
𝑛)
2𝑛
?', '{"A": "0        (b)e-2", "C": "e-1/2       (d)1"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('14aaf850-361f-4d67-a87a-1811963cc133', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'Consider a company that assembles computers. The probability of a faulty
assembly of any computer is p. The company therefore subjects each computer
to a testing process. This testing process gives the correct result for any computer
with a probability of q. What is the probability of a computer being declared
faulty?', '{"A": "[Marks:  ][GATE:  2010]", "C": "(1 - p)q           (d)pq"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('cd994ef8-9394-487d-8106-bfabdb11ae59', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2010, 1, 'MCQ', 'What is the probability that divisor of 1099 is a multiple of 1096?', '{"A": "1/625       (b)4/625", "C": "12/625       (d) 16/625"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('f4e82206-f13f-4fe9-8823-0ee21e5662dd', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2010, 1, 'MCQ', 'Consider the following matrix 𝐴 = [2 3
𝑥 𝑦] If the eigenvalues of A are 4 and 8,then', '{"A": "x=4, y=10", "B": "x=5, y=8", "C": "x=-3, y=9", "D": "x=-4, y=10"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('9a90c70a-8a1f-4cac-ad2b-85d3485b90fb', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'K4 and Q3 are graphs with the following structures', '{"A": "K4 is planar while Q3 is not", "B": "Both K4 and Q3 are planar", "C": "Q3 is planar while K4 is not", "D": "Neither K4 nor Q3 are planar                                  [Marks: 1][GATE: 2011]"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('380e682b-a6e7-4daa-8944-4bc9d8089f73', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2011, 1, 'MCQ', 'Which one of the following options is CORRECT given three positive integers x, y
and z, and a predicate?
P(x) = ¬(x = 1) ∧ ∀y (∃z (x = y * z) ⇒ (y = x) ∨ (y = 1))', '{"A": "P(x) being true means that x is a prime number", "B": "P(x) being true means that x is a number other than 1", "C": "P(x) is always true irrespective of the value of x", "D": "P(x) being true means that x has exactly two factors other than 1 and x"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('27a6780a-8c0d-4ee3-bf4f-f48d3b6e5c49', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'An undirected graph G (V, E) contains n (n > 2) nodes named v1, v2 ,….vn.
Two nodes vi, vj are connected if and only if 0 < |i – j| <= 2. Each edge (v i, vj) is
assigned a weight i + j. A sample graph with n = 4 is shown below.
What will be the cost of the minimum spanning tree (MST) of such a graph with
n nodes?', '{"A": "11 n2 \u2013 5", "B": "n2 \u2013 n + 1", "C": "6n \u2013 11", "D": "2n + 1             [Marks: 2][GATE:2011]"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('40445d55-1d56-460b-81ad-3dfc59affab4', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'An undirected graph G (V, E) contains n (n > 2) nodes named v 1 , v2 ,….vn. Two
nodes v i , v j are connected if and only if 0 < |i – j| <= 2. Each edge (v i, v j) is
assigned a weight i + j. A sample graph with n = 4 is shown below.
The length of the path from v5 to v6 in the MST of previous question with n = 10
is', '{"A": "11", "B": "25", "C": "31", "D": "41         [Marks: 2][GATE: 2011]"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('e2ae3dbf-4039-482d-94cb-62603e8d18fb', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2011, 1, 'MCQ', 'If the difference between the expectation of the square of a random variable
(E[X2]) and the square of the expectation of the random variable (E[X2]) is denoted
by R, then', '{"A": "R = 0", "B": "R < 0", "C": "R \u2265 0", "D": "R > 0"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('17a05735-b828-41b0-bfe9-32f97cc2bdba', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2011, 1, 'MCQ', 'Consider the matrix as given below Which one of the following provides the
CORRECT values of eigenvalues of the matrix?
[
1 2 3
0 4 7
0 0 3
]', '{"A": "1, 4, 3", "B": "3, 7, 3", "C": "7, 3, 2", "D": "1, 2, 3"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('22c58090-56f3-4e66-89d4-e3896bfac7a3', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2011, 1, 'MCQ', 'Given i=√−1what will be the evaluation of the definite integral∫
cos 𝑥+𝑖 𝑠𝑖𝑛𝑥
cos 𝑥−𝑖𝑠𝑖𝑛 𝑥
𝜋/2
0 dx ?', '{"A": "0    (b)2       (c)-i    (d)i"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('27030935-8544-47e8-838a-3d56c4717761', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2011, 1, 'MCQ', 'Consider a finite sequence of random values X = [x 1, x 2, …, xn]. Let μx be the
mean and σx be the standard deviation  of X. Let another finite sequence Y of
equal length be derived from this as yi = a * x i + b, where a and b are positive
constants. Let μy be the mean and σy be the standard deviation of this sequence.
Which one of the following statements is INCORRECT?
Y in Y.
of Y in Y.', '{"A": "Index position of mode of X in X is the same as the index position of mode of", "B": "Index position of median of X in X is the same as the index position of median", "C": "\u03bcy = a\u03bcx + b", "D": "\u03c3y = a\u03c3x + b"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('60ef1a73-3737-4a23-9667-cf2f3f2335a4', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2011, 1, 'MCQ', 'A deck of 5 cards (each carrying a distinct number from 1 to 5) is shuffled
thoroughly. Two cards are then removed one at a time from the deck. What is the
probability that the two cards are selected with the number on the first card
being one higher than the number on the second?', '{"A": "1/5    (b)4/25    (c)1/4   (d)2/5"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('f04f7de9-1103-4099-9b05-fba5c64edb1e', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'Consider the following logical inferences.
I1: If it rains then the cricket match will not be played.
The cricket match was played.
Inference: There was no rain.
I2: If it rains then the cricket match will not be played.
It did not rain.
Inference: The cricket match was played.
Which of the following is TRUE?
but I2 is a correct inference', '{"A": "Both I1 and I2 are correct inferences", "B": "I1 is correct but I2 is not a correct inference", "C": "I1 is not correct", "D": "Both I1 and I2 are not correct inferences                [Marks: 1][GATE:  2012]"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('90161fa3-c66c-4f7c-8c62-6b6bc7408d18', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'What is the correct translation of the  following statement into mathematical
logic?
“Some real numbers are rational”', '{"A": "\u2203x(real(x)\u2228rational(x))", "B": "\u2200x(real(x)\u2192rational(x))", "C": "\u2203x(real(x)\u2227rational(x))", "D": "\u2203x(rational(x)\u2192real(x))     [Marks:1][GATE:  2012]"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('0eb8a20f-76e8-40a6-b6f5-3ec27fdca65d', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2012, 1, 'MCQ', 'Let G be a simple undirected planar graph on 10 vertices with 15 edges. If G is a
connected graph, then the number of bounded faces in any embedding of G on
the plane is equal to', '{"A": "3   (b) 4   (c) 5   (d) 6"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('a89cf47d-6e4f-41c1-ac2a-fdce1e4b95a1', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2012, 2, 'MCQ', 'Which of the following graphs is isomorphic to', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('aec51475-1fd3-451e-bee0-9a2e0aed5fe4', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'Let G be a weighted graph with edge weights greater than one and G’ be the graph
constructed by squaring the weights of edges in G. Let T and T’ be the minimum
spanning trees of G and G’, respectively, with total weights t and t’. Which of the
following statements is TRUE?', '{"A": "T\u2019 = T with total weight t\u2019 = t2", "B": "T\u2019 = T with total weight t\u2019 < t2", "C": "T\u2019 != T but total weight t\u2019 = t2", "D": "None of the above                [Marks:2][GATE:  2012]"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('63bdfcd3-7a78-491b-9fa1-6c27098b9a2c', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2012, 2, 'MCQ', 'How many onto (or surjective) functions are there from an n-element (n >= 2) set
to a   2-element set?', '{"A": "2n     (b) 2n \u2013 1   (c) 2n \u2013 2  (d) 2(2n \u2013 2)"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('5dc183d0-fb11-4ff2-aff2-bff8834f263d', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2012, 2, 'MCQ', 'Let G be a complete undirected graph on 6 vertices. If vertices of G are labeled,
then the number of distinct cycles of length 4 in G is equal to', '{"A": "15    (b) 30                         (c) 90            (d) 360"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('e33c153f-cf68-4376-92da-6266eeafe7c6', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2012, 2, 'MCQ', 'Consider the directed graph shown in the figure below. There are multiple
shortest paths between vertices S and T. Which one will be reported by Dijkstra’s
shortest path algorithm? Assume that, in any iteration, the shortest path to a
vertex v is updated only when a strictly shorter path to v is
Discovered.', '{"A": "SDT    (B) SBDT    (C) SACDT   (D) SACET"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('ac1aa4a7-c25e-43e9-8c08-ff59d7f31df7', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2012, 1, 'MCQ', 'Consider the function f(x) = sin(x) in the interval x ∈ [π/4, 7π/4]. The number
and location(s) of the local minima of this function are', '{"A": "One, at \u03c0/2", "B": "One, at 3\u03c0/2", "C": "Two, at \u03c0/2 and 3\u03c0/2", "D": "Two, at \u03c0/4 and 3\u03c0/2"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('09625a22-cd8a-4eef-8368-8968778613a1', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2012, 1, 'MCQ', 'Let A be the 2×2 matrix with elements a11 = a12 = a21 = +1 and a22 = -1. Then the
eigenvalues of the matrix A19 are', '{"A": "1024 and -1024", "B": "1024\u221a2 and -1024\u221a2", "C": "4\u221a2 and -4\u221a2", "D": "512\u221a2 and -512\u221a2"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('e24c2d60-359a-4bc2-a3f8-f73a015ce3ae', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2012, 1, 'MCQ', 'Consider a random variable X that takes values +1 and −1 with probability 0.5
each. The values of the cumulative distribution function F(x) at x = −1 and +1
are', '{"A": "0 and 0.5", "B": "0 and 1", "C": "0.5 and 1", "D": "0.25 and 0.75"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('f957b576-6473-4cdb-b365-5f304d4cbdb4', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2012, 1, 'MCQ', 'Suppose a fair six-sided die is rolled once. If the value on the die is 1, 2, or 3,
the die is rolled a second time. What is the probability that the sum total of
values that turn up is at least 6?', '{"A": "10/21", "B": "5/12", "C": "2/3", "D": "1/6"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('a0c2df09-1e46-4e8e-9a44-494cd5256dad', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'A binary operation on a set of integers is defined as x  y = x2 + y2. Which one
of the following statements is TRUE about ?', '{"A": "Commutative but not associative", "B": "Both commutative and associative", "C": "Associative but not commutative", "D": "Neither commutative nor associative                       [Marks: 1][GATE: 2013]"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('39ad024a-5540-451b-8ed3-1e0a944040a3', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'Which of the following statements is/are TRUE for undirected graphs?
P: Number of odd degree vertices is even.
Q: Sum of degrees of all vertices is even.', '{"A": "P only", "B": "Q only", "C": "Both P and Q", "D": "Neither P nor Q            [Marks:1][GATE:  2013]"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('ec132aa6-5638-453f-8dbd-fcac5e0f4d13', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'The line graph L(G) of a simple graph G is defined as follows:
 There is exactly one vertex v(e) in L(G) for each edge e in G.
 For any two edges e and e’ in G, L(G) has an edge between v(e) and v(e’), if and
only if e and e’ are incident with the same vertex in G.
Which of the following statements is/are TRUE?
(P) The line graph of a cycle is a cycle.
(Q) The line graph of a clique is a clique.
(R) The line graph of a planar graph is planar.
(S) The line graph of a tree is a tree.', '{"A": "P only", "B": "P and R only", "C": "R only", "D": "P, Q and S only      [Marks:2][GATE:  2013]"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('8c17b41e-7508-4c22-8ebb-e0f5c3f43239', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'What is the logical translation of the following statement?
“None of my friends are perfect.”', '{"A": "\u2203x(F(x)\u2227\u00acP(x))", "B": "\u2203x(\u00acF(x)\u2227P(x))", "C": "\u2203x(\u00acF(x)\u2227\u00acP(x))", "D": "\u00ac\u2203x(F(x)\u2227P(x))                [Marks: 2][GATE: 2013]"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('0d6e347e-38c5-4a6c-a11d-edf11fd02b31', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2013, 2, 'MCQ', 'Which one of the following is NOT logically equivalent to ¬∃x(∀y(α)∧∀z(β)) ?', '{"A": "\u2200x(\u2203z(\u00ac\u03b2)\u2192\u2200y(\u03b1))    (b) \u2200x(\u2200z(\u03b2)\u2192\u2203y(\u00ac\u03b1))", "C": "\u2200x(\u2200y(\u03b1)\u2192\u2203z(\u00ac\u03b2))    (d) \u2200x(\u2203y(\u00ac\u03b1)\u2192\u2203z(\u00ac\u03b2"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('061a4f08-c288-4e8b-9a20-e2da44db3127', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2013, 1, 'MCQ', 'Suppose p is the number of cars per minute passing through a certain road
junction between 5 PM and 6 PM, and p has a Poisson distribution with mean 3.
What is the probability of observing fewer than 3 cars during any given minute
in this interval?', '{"A": "8/(2e3)   (b)9/(2e3)  (c)17/(2e3)  (d) 26 /(2e3)"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('cb0b6740-e3d4-4df1-b9ed-f8e2a5a29a1c', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2013, 1, 'MCQ', 'Which one of the following does NOT equal to?
|
1 𝑥 𝑥2
1 𝑦 𝑦2
1 𝑧 𝑧2
|
|
1 𝑥 (𝑥 + 1) 𝑥 + 1
1 𝑦 ( 𝑦 + 1) 𝑦 + 1
1 𝑧 (𝑧 + 1) 𝑧 + 1
|
|
1  (𝑥 + 1) 𝑥2 + 1
1 ( 𝑦 + 1) 𝑦2 + 1
1 (𝑧 + 1) 𝑧2 + 1
|
|
0 𝑥 − 𝑦 𝑥2 − 𝑦2
0 𝑦 − 𝑧 𝑦2 − 𝑧2
1 𝑧 𝑧2
|
|
2  (𝑥 + 𝑦) 𝑥2 + 𝑦2
2 ( 𝑦 + 𝑧) 𝑦2 + 𝑧2
1 𝑧 𝑧2
|', '{"A": "", "B": "", "C": "", "D": ""}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('08fb8759-c9f7-4fae-bb3b-ebf50fbf8bbe', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2013, 1, 'MCQ', 'Which one of the following functions is continuous at x = 3?

.', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('b9dfd159-777a-4abc-861c-a1420558ad2f', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'Consider the statement: "Not all that glitters is gold”
Predicate glitters(x) (x) is true if xx glitters and predicate gold(x) (x) is true
if xx is gold.  Which one of the following logical formulae represents the above
statement?', '{"A": "\u2200x: glitters(x)\u21d2\u00acgold(x)", "B": "\u2200x: gold(x)\u21d2glitters(x)", "C": "\u2203x: gold(x)\u2227\u00acglitters(x)", "D": "\u2203x: glitters(x)\u2227\u00acgold(x)                                 [Marks: 1][GATE:  2014][SET-1]"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('aaf333f7-d880-41b5-b033-9d905dad1639', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'Consider the directed graph below given.
Which one of the following is TRUE?', '{"A": "The graph does not have any topological ordering.", "B": "Both PQRS and SRQP are topological orderings.", "C": "Both PSRQ and SPRQ are topological orderings.", "D": "PSRQ is the only topological ordering         [Marks: 1][GATE:  2014][SET-1]"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('7071d4ac-f0e4-49d8-9eb4-e2ae8e6d75d4', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2014, 2, 'MCQ', 'A pennant is a sequence of numbers, each number being 1 or 2. An n -pennant
is a sequence of numbers with sum equal to n. For example, (1, 1, 2) is a 4-
pennant. The set of all possible 1 -pennants is {(1)}, the set of all possible 2 -
pennants is {(2), (1, 1)} and the set of all 3 -pennants is {(2, 1), (1, 1, 1), (1, 2)}.
Note that the pennant (1, 2) is not the same as the pennant (2, 1). The number
of 10-pennants is __________    [SET-1]', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('c8d6e07b-274c-400e-b1ac-882d02ef9d48', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2014, 2, 'MCQ', 'Let S denotes the set of all functions f :{ 0, 1}4→ {0, 1}. Denote by N the number
of functions from S to the set {0, 1}. The value of log2 log 2 N is ______
[SET-1]', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('7ad5ea94-0e33-484b-97fd-d89f105b7b6d', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2014, 2, 'MCQ', 'An ordered n-tuple (d1, d2, … , dn) with d1  d2 ⋯  dn is called graphic if
there exists a simple undirected graph with n vertices having degrees d 1, d2,
… , dn respectively. Which of the following 6 -tuples is NOT graphic?
[SET-1]', '{"A": "(1, 1, 1, 1, 1, 1)", "B": "(2, 2, 2, 2, 2, 2)", "C": "(3, 3, 3, 1, 0, 0)", "D": "(3, 2, 1, 1, 1, 0)"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('51dcd24c-373f-4e38-b058-fa08235c75a4', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'Which one of the following propositional logic formulas is TRUE when exactly two
of p, q and r are TRUE?
[Marks:2][GATE:
2014][SET-1]', '{"A": "((p \u2194 q) \u2227 r) \u2228 (p \u2227 q \u2227 \u223cr)", "B": "(\u223c(p \u2194 q) \u2227 r) \u2228 (p \u2227 q \u2227 \u223cr)", "C": "((p \u2192 q) \u2227 r) \u2228 (p \u2227 q \u2227 \u223cr)", "D": "(\u223c(p \u2194 q) \u2227 r) \u2227 (p \u2227 q \u2227 \u223cr)"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('956468e0-e91c-4c62-be1d-ae388dfde4d9', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2014, 2, 'MCQ', 'Let G = (V, E) be a directed graph where V is the set of vertices and E the set of
edges. Then which one of the following graphs has the same strongly connected
components as G?
[SET-1]', '{"A": "G1 = (V, E1) where E1 = {(u, v)|(u, v)\u2209E}", "B": "G2 = (V,E2 )where E2={(u, v)\u2502(u, v)\u2208E}", "C": "G3 = (V,E3) where E3={(u, v)|there is a path of length\u22642 from u to v in E}", "D": "G4 = (V4,E) where V4 is the set of vertices in G which are not isolated"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('183b9d5e-45d5-47ed-b511-cc2e19f05b00', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2014, 1, 'MCQ', 'The value of the dot product of the eigenvectors corresponding to any pair of
different eigenvalues of a 4 -by-4 symmetric positive definite m atrix is
_____________________.     [SET-1]', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('dffe435d-6598-4453-9906-ca8d5f89df60', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2014, 1, 'MCQ', 'Let the function
θ∈[
𝜋
6  ,
𝜋
3]and f′(θ) denote the derivative of f with respect to θ. Which of the
following statements is/are TRUE?
(I) There exists θ∈[
𝜋
6  ,
𝜋
3]such that f′(θ)=0
(II) There exists θ∈[
𝜋
6  ,
𝜋
3]such that f′(θ)≠0
[SET-1]', '{"A": "I only  (b)II only   (c) Both I and II      (d)Neither I nor II"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('e471070b-7014-42e1-a656-76adc46d4a84', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'The function f(x) = x sin x satisfies the following equation: f ''''(x) + f (x) + t cos x
= 0. The value of t is __________.                                   [Marks: ][GATE:
2014][SET-1]', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('dd47a16d-c33b-4cf1-bc4d-a6bb7d571b4d', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2014, 1, 'MCQ', 'A function f(x) is continuous in the interval [0, 2].
It is known that f(0) = f(2) = -1 and f(1) = 1.
Which one of the following statements must be true?
[SET-1]', '{"A": "There exists a y in the interval (0,1) such that f(y)=f(y+1)", "B": "For every y in the interval (0,1),f(y)=f(2 -y)", "C": "The maximum value of the function in the interva l (0,2) is 1", "D": "There exists a y in the interval (0, 1) such that f(y)= -f(2-y)"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('35f8c4c2-007e-4aec-b3a7-47469594ce26', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2014, 1, 'MCQ', 'Four fair six -sided dice are rolled. The probability that the sum of the results
being 22 is X⁄1296. The value of X is ___________.
[SET-1]', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('a678d3d9-75b2-44ab-a6de-3a43f676c832', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2014, 2, 'MCQ', 'Consider an undirected graph where self-loops are not allowed.
The vertex set of G is {(i, j): 1 ≤ i ≤ 12, 1 ≤ j ≤ 12}.
There is an edge between (a, b) and (c, d) if |a - c| ≤ 1 and |b - d| ≤ 1.
The number of edges in this graph is __________.
[SET-1]', '{"A": "506   (b)507   (c)508   (d)509"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('348ff746-ce76-4ff6-825a-5bacd79c1579', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'Consider the following relation on subsets of the set S of integers between 1 and
2014. For two distinct subsets U and V of S we say U < V if the minimum element
in the symmetric difference of the two sets is in U. Consider the following two
statements:
S1: There is a subset of S that is larger than every other subset.
S2: There is a subset of S that is smaller than every other subset.
Which one of the following is CORRECT?', '{"A": "Both S1 and S2 are true", "B": "S1 is true and S2 is false", "C": "S2 is true and S1 is false", "D": "Neither S1 nor S2 is true    [Marks: 1][GATE:  2014][SET-1]"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('5dbf95ac-1b8f-4313-b3db-2b0136ef0882', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2014, 1, 'MCQ', 'A cycle on n vertices is isomorphic to its complement. The value of n is _____.
[SET-2]', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('c05553af-2549-4559-87c4-572ce6d85022', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'The number of distinct minimum spanning trees for the weighted graph below is
_____
[Marks: 2][GATE:  201[SET-2]', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('a21f5384-6f6e-4bd9-bb7d-bb0b71e0d6e5', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2014, 2, 'MCQ', 'Which one of the following Boolean expressions is NOT a tautology?
(𝐵) (𝑎 → 𝑐) → (∼ 𝑏 → (𝑎 ∧ 𝑐))
(𝐶)(𝑎 ∧ 𝑏 ∧ 𝑐) → (𝑐 ∨ 𝑎)
(𝐷) 𝑎 → (𝑏 → 𝑎)      [SET-2]', '{"A": "((\ud835\udc4e \u2192 \ud835\udc4f) \u2227 (\ud835\udc4f \u2192 \ud835\udc50)) \u2192 (\ud835\udc4e \u2192 \ud835\udc50)"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('df4b82a0-e231-464d-84e3-b18415b324fd', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2014, 1, 'MCQ', 'The security system at an IT office is composed of 10 computers of which exactly
four are working. To check whether the system is functional, the officials inspect
four of the computers picked at random (without replacement). The system is
deemed functional if at least three of the four computers inspected are
working.  Let the probability that the system is deemed functional be denoted by
p. Then 100p =_____________.
[SET-1]', '{"A": "11.90   (b)11.91   (c)11.92  (d)11.93"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('9de287ab-3a01-4b7e-88bf-25ab2194de10', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2014, 1, 'MCQ', 'Each of the nine words in the sentence "The quick brown fox jumps over the lazy
dog" is written on a separate piece of paper. These nine pieces of paper are kept
in a box. One of the pieces is drawn at random from the box. The expected length
of the word drawn is _____________. (The answer should be rounded to one decimal
place.)
[SET-2]', '{"A": "3.9    (b)4.0    (c)4.1   (d)4.2"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('d09f98b0-d938-4aad-a58d-668799ecfd3e', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2014, 1, 'MCQ', 'The maximum number of edges in a bipartite graph on 12 vertices is ______.
[SET-2]', '{"A": "36    (b)37    (c)38   (d)39"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('6bfc6268-b6d8-4e79-a6aa-8a34b39d6758', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2014, 1, 'MCQ', 'If the matrix A is Such that
A=[
2
−4
7
] [1 9 5].
Then the determinant of A is equal to ___________________.
[SET-2]', '{"A": "0     (b)1   (c)2    (d)3"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('5f5b69f5-9bed-441b-9e56-fb14406f9369', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2014, 1, 'MCQ', 'A non-zero polynomial f(x) of degree 3 has roots at x = 1, x = 2 and x = 3.
Which one of the following must be TRUE?
[SET-2]', '{"A": "f(0)f(4) < 0    (b)f(0)f(4) > 0  (c)f(0) + f(4) > 0   (d)f(0) + f(4) < 0"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('f5ebad01-1d47-4135-b974-ff19ca9d7ce6', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2014, 1, 'MCQ', 'The product of the non-zero eigenvalues of the matrix is .____________
[SET-2]', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('b56d4a20-8594-42d0-8762-cf27f9a5c8bb', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2014, 1, 'MCQ', 'The probability that a given positive integer lying between 1 and 100 (both
inclusive) is NOT divisible by 2, 3 or 5 is ______ .
[SET-2]', '{"A": "0.259 to 0.261", "B": "0.260 to 0.262", "C": "0.261 to 0.263", "D": "0.262 to 0.264"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('5ee84361-7b9d-4ac5-bf9f-de7b66dcccf6', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2014, 1, 'MCQ', 'The number of distinct positive integral factors of 2014 is _________
[SET-2]', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('8c2ee092-bb2a-458f-bd9a-c69bfe079056', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2014, 1, 'MCQ', 'Consider the following statements:
P: Good mobile phones are not cheap
Q: Cheap mobile phones are not good
L: P implies Q
M: Q implies P
N: P is equivalent to Q
Which one of the following about L, M, and N is CORRECT?
[SET-3]', '{"A": "Only L is TRUE.", "B": "Only M is TRUE.", "C": "Only N is TRUE.", "D": "L, M and N are TRUE."}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('1d92e763-1254-4cf5-9f40-d49d079fa3be', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'Let X and Y be finite sets and f: X→Y be a function. Which one of the following
statements is TRUE?                                   [GATE:  2014][SET-3]', '{"A": "For any subsets \ud835\udc34 \ud835\udc4e\ud835\udc5b\ud835\udc51 \ud835\udc35 \ud835\udc5c\ud835\udc53 \ud835\udc4b, |\ud835\udc53(\ud835\udc34 \u222a \ud835\udc35)| = |\ud835\udc53(\ud835\udc34)| + |\ud835\udc53(\ud835\udc35)|", "B": "For any subsets \ud835\udc34 \ud835\udc4e\ud835\udc5b\ud835\udc51 \ud835\udc35 \ud835\udc5c\ud835\udc53 \ud835\udc4b, \ud835\udc53(\ud835\udc34 \u2229 \ud835\udc35) = \ud835\udc53(\ud835\udc34) \u2229 \ud835\udc53(\ud835\udc35)", "C": "For any subsets \ud835\udc34 \ud835\udc4e\ud835\udc5b\ud835\udc51 \ud835\udc35 \ud835\udc5c\ud835\udc53 \ud835\udc4b, |\ud835\udc53(\ud835\udc34 \u2229 \ud835\udc35)| = \ud835\udc5a\ud835\udc56\ud835\udc5b{|\ud835\udc53(\ud835\udc34)|, |\ud835\udc53(\ud835\udc35)|}", "D": "For any subsets \ud835\udc46 \ud835\udc4e\ud835\udc5b\ud835\udc51 \ud835\udc47 \ud835\udc5c\ud835\udc53 \ud835\udc4c, \ud835\udc53\u22121(\ud835\udc46 \u2229 \ud835\udc47) = \ud835\udc53\u22121(\ud835\udc46) \u2229 \ud835\udc53\u22121((\ud835\udc47)"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('935c54e9-b89e-4c11-b979-d06505945a72', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2014, 1, 'MCQ', 'Let G be a group with 15 elements. Let L be a subgroup of G. It is known that L
≠ G and that the size of L is at least 4. The size of L is __________.
[SET-3]', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('6c81c78d-0115-46a7-b3ac-1e7b8b48a0b0', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', '𝐶𝑜𝑛𝑠𝑖𝑑𝑒𝑟 𝑡ℎ𝑒 𝑠𝑒𝑡 𝑜𝑓 𝑎𝑙𝑙 𝑓𝑢𝑛𝑐𝑡𝑖𝑜𝑛𝑠 𝑓: {0, 1…2014} → {0, 1…2014} 𝑠𝑢𝑐ℎ 𝑡ℎ𝑎𝑡 𝑓(𝑓(𝑖)) =
𝑖, 𝑓𝑜𝑟 𝑎𝑙𝑙  0 ≤ 𝑖 ≤ 2014. 𝐶𝑜𝑛𝑠𝑖𝑑𝑒𝑟 𝑡ℎ𝑒 𝑓𝑜𝑙𝑙𝑜𝑤𝑖𝑛𝑔 𝑠𝑡𝑎𝑡𝑒𝑚𝑒𝑛𝑡𝑠:
𝑃. 𝐹𝑜𝑟 𝑒𝑎𝑐ℎ 𝑠𝑢𝑐ℎ 𝑓𝑢𝑛𝑐𝑡𝑖𝑜𝑛 𝑖𝑡 𝑚𝑢𝑠𝑡 𝑏𝑒 𝑡ℎ𝑒 𝑐𝑎𝑠𝑒 𝑡ℎ𝑎𝑡 𝑓𝑜𝑟 𝑒𝑣𝑒𝑟𝑦 𝑖, 𝑓(𝑖) = 𝑖.
𝑄. 𝐹𝑜𝑟 𝑒𝑎𝑐ℎ 𝑠𝑢𝑐ℎ 𝑓𝑢𝑛𝑐𝑡𝑖𝑜𝑛 𝑖𝑡 𝑚𝑢𝑠𝑡 𝑏𝑒 𝑡ℎ𝑒 𝑐𝑎𝑠𝑒 𝑡ℎ𝑎𝑡 𝑓𝑜𝑟 𝑠𝑜𝑚𝑒 𝑖, 𝑓(𝑖) = 𝑖.
𝑅. 𝐸𝑎𝑐ℎ 𝑓𝑢𝑛𝑐𝑡𝑖𝑜𝑛 𝑚𝑢𝑠𝑡 𝑏𝑒 𝑜𝑛𝑡𝑜.
𝑊ℎ𝑖𝑐ℎ 𝑜𝑛𝑒 𝑜𝑓 𝑡ℎ𝑒 𝑓𝑜𝑙𝑙𝑜𝑤𝑖𝑛𝑔 𝑖𝑠 𝐶𝑂𝑅𝑅𝐸𝐶𝑇?', '{"A": "\ud835\udc43, \ud835\udc44 \ud835\udc4e\ud835\udc5b\ud835\udc51 \ud835\udc45 \ud835\udc4e\ud835\udc5f\ud835\udc52 \ud835\udc61\ud835\udc5f\ud835\udc62\ud835\udc52", "B": "\ud835\udc42\ud835\udc5b\ud835\udc59\ud835\udc66 \ud835\udc44 \ud835\udc4e\ud835\udc5b\ud835\udc51 \ud835\udc45 \ud835\udc4e\ud835\udc5f\ud835\udc52 \ud835\udc61\ud835\udc5f\ud835\udc62\ud835\udc52", "C": "\ud835\udc42\ud835\udc5b\ud835\udc59\ud835\udc66 \ud835\udc43 \ud835\udc4e\ud835\udc5b\ud835\udc51 \ud835\udc44 \ud835\udc4e\ud835\udc5f\ud835\udc52 \ud835\udc61\ud835\udc5f\ud835\udc62\ud835\udc52", "D": "Only R is true       [Marks:2][GATE:  2014][SET-3]"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('e12db308-b21a-42a5-ab84-71d6f4746102', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2014, 2, 'MCQ', 'There are two elements x, y in a group (G,∗) such that every element in the
group can be written as a product of some number of x''s and y''s in some order.
It is known that x*x = y*y = x*y*x*y = y*x*y*x = e; where e is the identity
element. The maximum number of elements in such a group is ____.
[SET-3]', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('0208e7f0-3721-4083-8e5f-10ee1a9b38a3', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2014, 2, 'MCQ', 'If G is the forest with  n vertices and k connected components, how many edges
does G have?
[SET-3]', '{"A": "\u230an/k\u230b   (b)\u2308n/k\u2309  (c)n \u2013 k    (d) n \u2013 k + 1"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('f6710e4d-9c96-46cd-9f42-2f2b4491e6d8', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2014, 2, 'MCQ', 'Let d denote the minimum degree of a vertex in a graph. For all planar graphs
on n vertices with d ≥ 3, which one of the following is TRUE?
+ 2
n/(d+1)
[SET-3]', '{"A": "In any planar embedding, the number of faces is at least n/2 + 2", "B": "In any planar embedding, the number of faces is less than n/2 + 2", "C": "There is a planar embedding in which the number of faces is less than n/2", "D": "There is a planar embedding in which the number of faces is at most"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('4b898896-4ff8-4274-bf88-7d30a8fcabfb', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2014, 1, 'MCQ', 'Let δ denote the minimum degree of a vertex in a graph. For all planar graphs on
n vertices with δ ≥3, which one of the following is TRUE?
𝑛
2 +2
𝑛
2+2
𝑛
2+2
𝑛
δ+1
[SET-3]', '{"A": "In any planar embedding, the number of faces is at least", "B": "In any planar embedding, the number of faces is less than", "C": "There is a planar embedding in which the number of faces is less than", "D": "There is a planar embedding in which the number of faces is at most"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('925e8554-dbed-4cf4-bd31-e1fcea6c0b77', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'The CORRECT formula for the sentence, "not all Rainy days are Cold" is', '{"A": "\u2200\ud835\udc51(\ud835\udc45\ud835\udc4e\ud835\udc56\ud835\udc5b\ud835\udc66(\ud835\udc51) \u2227 ~\ud835\udc36\ud835\udc5c\ud835\udc59\ud835\udc51(\ud835\udc51))", "B": "\u2200\ud835\udc51(~\ud835\udc45\ud835\udc4e\ud835\udc56\ud835\udc5b\ud835\udc66(\ud835\udc51) \u2192 \ud835\udc36\ud835\udc5c\ud835\udc59\ud835\udc51(\ud835\udc51))", "C": "\u2203\ud835\udc51(~\ud835\udc45\ud835\udc4e\ud835\udc56\ud835\udc5b\ud835\udc66(\ud835\udc51) \u2192 \ud835\udc36\ud835\udc5c\ud835\udc59\ud835\udc51(\ud835\udc51))", "D": "\u2203\ud835\udc51(\ud835\udc45\ud835\udc4e\ud835\udc56\ud835\udc5b\ud835\udc66(\ud835\udc51) \u2227 ~\ud835\udc36\ud835\udc5c\ud835\udc59\ud835\udc51(\ud835\udc51))     [GATE:  2014][SET-3]"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('2235e675-c6a2-4520-8ead-e7816956e773', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2014, 1, 'MCQ', 'Which one of the following statements is TRUE about every n × n matrix with
only real eigenvalues?
negative, at least one of its eigenvalues is negative.
eigenvalues are positive.
[SET-3]', '{"A": "If the trace of the matrix is positive and the determinant of the matrix is", "B": "If the trace of the matrix is positive, all its eigenvalues are positive.", "C": "If the determinant of the matrix is positive, all its eigenvalues are positive.", "D": "If the product of the trace and determinant of the matrix is positive, all its"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('74f0e20c-62f2-400f-910b-f4ecfb376b7b', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'If V1 and V2 are 4-dimensional subspaces of a 6-dimensional vector space V, then
the smallest possible dimension of V1∩V2   is ______.
[GATE:  2014][SET-3]', '{"A": "2", "B": "3", "C": "4", "D": "5"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('27904679-c7da-443a-aa46-e92ed3f29692', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2014, 1, 'MCQ', 'If ∫ |𝑥 𝑠𝑖𝑛 𝑥|𝑑𝑥
2𝜋
0  = k𝜋, then the value of K is equal to _____________.
[SET-3]', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('0af40488-e74f-4757-80bf-c7f1556a5d82', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2014, 1, 'MCQ', 'The value of the integral given below is∫ 𝑥2𝜋
0  𝑐𝑜𝑠 𝑥𝑑𝑥
[SET-3]', '{"A": "-2\u03c0", "B": "\u03c0", "C": "- \u03c0", "D": "2 \u03c0"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('4b621663-dff9-40df-83fc-d330bdce0c28', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'Let S be a sample space and two mutually exclusive events A and B be such
that A∪B = S. If P(∙) denotes the probability of the event, the maximum value of
[GATE: 2014][SET-3]', '{"A": "0.25   (b)0.26  (c)0.27  (d)0.28", "B": "is __________."}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('4cb106a1-f662-4c03-ab06-d2d81bda34a0', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2014, 1, 'MCQ', 'Consider the set of all functions f:{0, 1 …2014}→{0, 1 … 2014} such that f(f(i)) =
i, for all  0 ≤ i ≤ 2014. Consider the following statements:
P. For each such function it must be the case that for every i, f(i) = i.
Q. For each such function it must be the case that for some i, f(i) = i.
R. Each function must be onto.
Which one of the following is CORRECT?
[SET-3]', '{"A": "P, Q and R are true", "B": "Only Q and R are true", "C": "Only P and Q are true", "D": "Only R is true"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('7f4cf1b3-034d-4a65-bb8a-5386c0c157e1', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'If g (X) =1− x and h (x) =
𝑥
𝑥−1, then
𝑔(ℎ(𝑥))
ℎ(𝑔(𝑥)) is
ℎ(𝑥)
𝑔(𝑥)
−1
𝑥
𝑔(𝑥)
ℎ(𝑥)
𝑥
(1−𝑥)2
[GATE:  2015][SET-1]', '{"A": "", "B": "", "C": "", "D": ""}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('7c766b6e-dee6-4434-a7a0-da848fb07e4c', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'Which one of the following is NOT equivalent to p ↔ q?
(𝑎)(¬𝑝 ∨ 𝑞) ∧ (𝑝 ∨ ¬𝑞)
(𝑏)(¬𝑝 ∨ 𝑞) ∧ (𝑞 → 𝑝)', '{"C": "(\u00ac\ud835\udc5d \u2227 \ud835\udc5e) \u2228 (\ud835\udc5d \u2227 \u00ac\ud835\udc5e)", "D": "(\u00ac\ud835\udc5d \u2227 \u00ac\ud835\udc5e) \u2228 (\ud835\udc5d \u2227 \ud835\udc5e)                    [GATE:  2015][SET-1]"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('f85fa0e6-c9a1-4c33-9205-dd2cc060e981', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'For a set  A, the power set of  A is denoted by  2A. If A = {5, {6}, {7}}, which of the
following options are TRUE?
I. ∅ ∈ 2𝐴  II. ∅ ⊆ 2𝐴      III.{5, {6}} ∈ 2𝐴  IV. {5, {6}} ⊆ 2𝐴', '{"A": "I and III only", "B": "II and III only", "C": "I, II and III only", "D": "I, II and IV only             [GATE:  2015][SET-1]"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('386a1a2b-3df6-4b2f-af82-49e00c00213a', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'The binary operator ≠ is defined by the following truth table.
Which one of the following is true about the binary operator ≠?', '{"A": "Both commutative and associative", "B": "Commutative but not associative", "C": "Not commutative but associative", "D": "Neither commutative nor associative  [Marks:][GATE:  2015][SET-1]"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('c8aa1873-5caa-4ed7-8d31-aeca6331b0e8', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'Suppose L={p, q, r, s, t} is a lattice represented by the following Hasse diagram:
For any x, y ∈ L, not necessarily distinct, x ∨ y and x ∧ y are join and meet of x,
y respectively. Let L 3 = {(x, y, z): x, y, z ∈ L} be the set of all ordered triplets of
the elements of L. Let p r be the probability that an element (x, y, z) ∈ L3 chosen
equiprobably satisfies x ∨ (y ∧ z) = (x ∨ y) ∧ (x ∨ z). Then
1
5  (d)
1
5< Pr< 1
[GATE:  2015][SET-1]', '{"A": "Pr = 0  (b) Pr = 1   (c) 0 < Pr \u2264"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('f6ea104f-2e94-4e84-93c6-03bc7fe111b2', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2015, 1, 'MCQ', 'Let G be a connected planar graph with 10 vertices. If the number of edges on
each face is three, then the number of edges in G is_______________.
[SET-1]', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('d7cbb84a-600e-4ac1-ac4b-5d278b4659b4', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2015, 1, 'MCQ', 'The graph shown below has 8 edges with distinct integer edge weights. The
minimum spanning tree (MST) is of weight 36 and contains the edges:
{(A, C), (B, C), (B, E), (E, F), (D, F)}. The edge weights of only those edges which
are in the MST are given in the figure shown below. The minimum possible sum
of weights of all 8 edges of this graph is_______________.
[SET-1]', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('2c4fd0b4-0a52-4eea-a842-b605e90e6cd9', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2015, 1, 'MCQ', 'The cardinality of the power set of {0, 1, 2, …, 10} is _________.
[SET-1]', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('3ee27ea2-a14c-4c3c-97d3-7b514755b6b2', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2015, 1, 'MCQ', 'In the LU decomposition of the matrix [2 2
4 9], if the diagonal elements of U are
both 1, then the lower diagonal entry l22 of L is ____________
[SET-1]', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('02d5c81a-0223-422a-ac77-d54da3218f41', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'Consider the following 2 × 2 matrix A where two elements are unknown and are
marked by a and b. The eigenvalues of this matrix are –1 and 7. What are the
values of a and b?
𝑨 = [𝟏 𝟒
𝒃 𝒂]', '{"A": "a = 6, b = 4", "B": "a = 4, b = 6", "C": "a = 3, b = 5", "D": "a = 5, b = 3      [Marks:][GATE:  2015][SET-1]"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('bfa92cd0-4eb3-4eac-91a5-7db6fb964947', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2015, 1, 'MCQ', 'Let G = (V, E) be a simple undirected graph, and s be a particular vertex in it
called the source.  For x ∈V, let d(x) denote the shortest distance in G from s to
x. A breadth first search (BFS) is performed starting at s. Let T be the resultant
BFS tree. If (u, v) is an edge of G that is not in T, then which one of the following
cannot be the value of d(u) - d(v) ?
[SET-1]', '{"A": "-1                 (b)0        (c)1   (d)2"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('69226f91-e9d2-409b-93dc-aceb6ee35e06', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2015, 1, 'MCQ', '∫
𝑐𝑜𝑠 (
1
𝑥)
𝑥2
2/𝜋
1/𝜋
𝑑𝑥 = ____________
[SET-1]', '{"A": "-1               (b)-2      (c)-3   (d)-4"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('4fc1302b-cc69-4226-9c67-daaf5094087d', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2015, 1, 'MCQ', '∑ 1
𝑥(𝑥+1)
99
𝑋=1 _______________________
[SET-1]', '{"A": "0.99      (b)1   (c)2   (d)3"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('fa0cdb3b-3ed5-4e3a-b9b1-90bbf62a5379', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2015, 1, 'MCQ', 'Let 𝑅 be the relation on the set of positive integers such that 𝑎Rb if and only if 𝑎
and 𝑏 are distinct and have a common divisor other than 1. Which one of the
following statements about 𝑅 is true?
[SET-2]
.', '{"A": "\ud835\udc45 is symmetric and reflexive but not transitive", "B": "\ud835\udc45 is reflexive but not symmetric and not transitive", "C": "\ud835\udc45 is transitive but not reflexive and not symmetric", "D": "\ud835\udc45 is symmetric but not reflexive and not transitive"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('1fb4d015-e9e3-4493-abf2-b24bbbfbd5b7', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2015, 1, 'MCQ', 'The number of onto functions (surjective functions) from set 𝑋 = {1, 2, 3, 4} to set
𝑌 = {𝑎, b, c} is __________                                   [SET-2]', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('6b016bd9-f048-4e41-9315-87dede0ed2a6', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2015, 1, 'MCQ', 'Let 𝑋 and 𝑌 denote the sets containing 2 and 20 distinct objects respectively and
𝐹 denotes the set of all possible functions defined from 𝑋 to 𝑌. Let 𝑓 be randomly
chosen from 𝐹. The probability of 𝑓 being one-to-one is ________.
[SET-2]', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('c4be0e15-70bc-4e2c-862c-fe7086154472', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'A graph is self-complementary if it is isomorphic to its complement. For all self -
complementary graphs on 𝑛 vertices, 𝑛 is', '{"A": "A multiple of 4", "B": "Even", "C": "Odd", "D": "Congruent to 0 \ud835\udc5aod 4, or, 1 \ud835\udc5aod 4.                              [GATE:  2015][SET-2]"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('6029eac8-ee25-4c5b-b416-8006faeb0b21', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2015, 1, 'MCQ', 'In a connected graph, a bridge is an edge whose removal disconnects a graph.
Which one of the following statements is true?
subgraph of a graph)
[SET-2]', '{"A": "A tree has no bridges", "B": "A bridge cannot be part of a simple cycle", "C": "Every edge of a clique with size \u2265 3 is a  bridge (A clique is any complete", "D": "A graph with bridges cannot have a cycle"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('e4709705-3fb1-46e9-9955-505383da0a8b', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2015, 1, 'MCQ', 'Consider the following statements:
S1: if a candidate is known to be corrupt, then he will not be elected .
S2 : if a candidate is kind , he will be elected
Which one the following statement following form S1 and S2 per sound
inference rules logic?
[SET-2]', '{"A": "If a person is known to corrupt, he is kind", "B": "If a person is not known to be corrupt, he is not kind", "C": "If a person is kind, he is not known to be corrupt", "D": "If a person is not kind, he is not known to be corrupt"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('5380cbb5-264e-4816-b920-f08b38b24e85', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2015, 1, 'MCQ', 'The larger of the eigenvalues of the matrix [4 5
2 1] is __________
[SET-2]', '{"A": "6    (b)7    (c)8    (d)9"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('aed23633-2116-4bca-8ac9-8cddd9e35348', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'The number of divisors of 2100 is ______.
[GATE:  2015][SET-2]', '{"A": "36    (b)37    (c)38    (d)39"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('580797f3-bf5d-4b1c-9097-1124b10c24c7', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'Perform the following operations on the matrix
[
3 4 45
7 9 105
13 2 195
]
(I) add the third row to the second row
(II) Subtract the third column from the first column
The determinant of the resultant matrix is ____________[GATE:  2015][SET-2]', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('c7571043-177d-4e43-9907-6be621e0cb70', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2015, 1, 'MCQ', 'Which one of the following well formed formulae is a tautology?
[SET-2]', '{"A": "\u2200x \u2203y R(x, y)\u2194\u2203y \u2200x R(x, y)", "B": "(\u2200x [\u2203y R(x, y)\u2192S(x, y)])\u2192\u2200x\u2203y S(x, y)", "C": "[\u2200x \u2203y (P(x, y)\u2192R(x, y)]\u2194[\u2200x \u2203y ( \u00ac P(x, y)\u2228R(x, y)]", "D": "\u2200x \u2200y P(x, y)\u2192\u2200x \u2200y P(y, x)"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('638f97a2-12a3-422e-ac91-a44fe419f5bc', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2015, 1, 'MCQ', 'Let 𝑓(𝑥) = 𝑥(−1/3) and A denote the area of the region bounded by f(x) and the     X-
axis, when x varies from -1 to 1. Which of the following statements is/are TRUE?
I) f is continuous in [-1,1]
II) f is not bounded in [-1,1]
III) A is nonzero and finite
[SET-2]', '{"A": "II only    (b)III only   (c)II and III only   (d)I, II and III"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('9e5b0399-37bb-41ff-a7eb-3d3775c28c5e', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2015, 1, 'MCQ', 'Suppose 𝑈 is the power set of the set 𝑆 = {1, 2, 3, 4, 5, 6}. For any 𝑇∈𝑈, let | 𝑇|
denote the number of elements in 𝑇 and 𝑇′ denote the complement of 𝑇. For any
𝑇∈𝑈, let 𝑇∖𝑅  be the set of all elements in 𝑇 which are not in 𝑅. Which one of the
following is true?
(𝑏) ∃𝑋 ∈ 𝑈 ∃𝑌 ∈ 𝑈 (|𝑋| = 5, |𝑌| = 5 𝑎𝑛𝑑 𝑋 ∩ 𝑌 = ∅)
(𝑐) ∀𝑋 ∈ 𝑈 ∀𝑌 ∈ 𝑈 (|𝑋| = 2, |𝑌| = 3 𝑎𝑛𝑑 𝑋 ∖ 𝑌 = ∅)
(𝑑) ∀𝑋 ∈ 𝑈 ∀𝑌 ∈ 𝑈 (𝑋 ∖ 𝑌 = 𝑌′ ∖ 𝑋′)   [SET-3]', '{"A": "\u2200\ud835\udc4b \u2208 \ud835\udc48 (|\ud835\udc4b| = |\ud835\udc4b\u2032|)"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('1e94abd4-f5c5-436f-9f1a-95baebb3ae18', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'Let # be a binary operator defined as X # Y = X ′ + Y′; where X and Y are
Boolean variables.
Consider the following two statements:
S1: (P # Q) # R = P # (Q # R)
S2: Q # R = R # Q
Which of the following is/are true for the Boolean variables P, Q and R?', '{"A": "Only S1 is True", "B": "Only S2 is True", "C": "Both S1 and S2 are True", "D": "Neither S1 nor S2 are True       [Marks:][GATE:  2015][SET-3]"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('406bb880-5d2e-4ff1-a78f-27b386da8704', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'Consider a binary tree T that has 200 leaf nodes. Then, the number of nodes in
T that have exactly two children are _________. [GATE:  2015][SET-3]', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('92aa2928-e21c-4f84-84c4-786745148e61', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'In a room there are only two types of people, namely Type 1 and Type 2. Type
1 people always tell the truth and Type 2 people always lie. You give a fair coin
to a person in that room, without knowing which type he is from and tell him to
toss it and hide the result from you till you ask for it. Upon asking the person
replies the following
"The result of the toss is head if and only if I am telling the truth"
Which of the following options is correct?', '{"A": "The result is head", "B": "The result is tail", "C": "If the person is of Type 2, then the result is tail", "D": "If the person is of Type 1, then the result is tail          [GATE:  2015][SET-3]"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('d9425113-454b-4ea9-bd0e-d954c92032e9', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2015, 1, 'MCQ', 'Let G be connected undirected graph of 100 vertices and 300 edges. The weight
of a minimum spanning tree of G is 500. When the weight of each edge of G is
increased by five, the weight of a minimum spanning tree becomes ________
[SET-3]', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('f4029ee5-cb5f-45d5-bcbd-db9cff3c656f', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2015, 1, 'MCQ', 'Let R be a relation on the set of ordered pairs of positive integers such that
((p, q), (r, s)) ∈ R if and only if p–s = q–r.
Which one of the following is true about R?
[SET-3]', '{"A": "Both reflexive and symmetric", "B": "Reflexive but not symmetric", "C": "Not reflexive but symmetric", "D": "Neither reflexive nor symmetric"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('40cab31e-2440-4371-a85e-322509db6f40', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2015, 1, 'MCQ', 'The number of 4 digit numbers having their digits in non-decreasing order (from
left to right) constructed by using the digits belonging to the set {1, 2, 3} is _____
.
[SET-3]', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('c2b9e99f-4c97-4f0f-ac08-d113c5cda60c', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2015, 1, 'MCQ', 'In the given matrix [
1 −1 2
0 1 0
1 2 1
], one of the eigenvalues is 1. The eigenvector
corresponding to the eigenvalues  1 are
[SET-3]', '{"A": "{\u03b1(4, 2, 1) | \u03b1 \u2260 0, \u03b1 \u2208 R}", "B": "{\u03b1(-4, 2, 1) | \u03b1 \u2260 0, \u03b1 \u2208 R}", "C": "{\u03b1(2, 0, 1) | \u03b1 \u2260 0, \u03b1 \u2208 R}", "D": "{\u03b1(-2, 0, 1) | \u03b1 \u2260 0, \u03b1 \u2208 R}"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('60497948-5231-47e1-ab14-b417a540c6b6', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2015, 1, 'MCQ', '[SET-3]', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('aed11a03-4a1e-49f0-ab4f-1f3b81e83e14', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2015, 1, 'MCQ', 'If the following system has non-trivial solution,
px + qy + rz = 0
qx + ry + pz = 0
rx + py + qz = 0
Then which one of the following options is True?
[SET-3]', '{"A": "p \u2013 q + r = 0 or p = q = -r", "B": "p + q-r = 0 or p = -q = r", "C": "p + q + r = 0 or p = q = r", "D": "p \u2013 q + r = 0 or p = -q = -r"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('8850d8b4-6c5d-47ed-bb92-477fadc92348', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2016, 2, 'MCQ', '[SET-1]', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('e0d7d7cb-670d-4fa8-ad77-1711f9620ad9', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2016, 2, 'MCQ', 'Let G be a weighted connected undirected graph with distinct positive edge
weights. If every edge weight is increased by the same value, then which of the
following statements is/are TRUE?
 P: Minimum spanning tree of G does not change.
 Q: Shortest path between any pair of vertices does not change.
[SET-1]', '{"A": "P only", "B": "Q only", "C": "Neither P nor Q", "D": "Both P and Q"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('49e3dfce-17a2-4103-a97d-99c8f5384afb', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2016, 2, 'MCQ', 'A function f : N+→N+ , defined on the set of positive integers  N+, satisfies the
following properties:
f(n)=f(n/2)   if n is even
f(n)=f(n+5)  if n is odd
Let R={i∣∃j:f(j)=i} be the set of distinct values that f takes. The maximum possible
size of R is ___________.                                  [SET-1]', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('ad4bbbf6-8dc9-40fc-aa57-8257e5059515', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2016, 2, 'MCQ', 'Consider the weighted undirected graph with 4 vertices, where the weight of
edge {i,j} is.
given by the entry Wij in the matrix W
The largest possible integer value of x, for which at least one shortest path
between some pair of vertices will contain the edge with weight x is ___________.
[SET-1]', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('1bb4f474-e891-4dc0-81c0-ed30d292fd83', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2016, 1, 'MCQ', 'Let G be a complete undirected graph on 4 vertices, having 6 edges with weights
being 1,2,3,4,5, and 6. The maximum possible weight that a minimum weight
spanning tree of G can have is __________
[SET-1]', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('373c6146-c543-4de5-8855-87b8e57640f5', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2016, 2, 'MCQ', 'G = (V, E) is an undirected simple graph in which each edge has a distinct weight,
and e is a particular edge of  G. Which of the following statements about the
minimum spanning trees (MSTs) of G is/are TRUE?
I. If e is the lightest edge of some cycle in G, then every MST of G includes e.
II. If e is the heaviest edge of some cycle in G, then every MST of G excludes e.
[SET-1]', '{"A": "I only.                                     (b)II only.", "C": "Both I and II.            (d)Neither I nor II."}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('d2cbd724-18f4-40b3-a849-788044e9a246', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2016, 1, 'MCQ', 'Let p,q,r,s represent the following propositions.
p: x ∈ {8,9,10,11,12}
q: x is a composite number
r: x is a perfect square
s: x is a prime number
The integer x≥2 which satisﬁes ¬((p ⇒ q) ∧ (¬r ∨¬s))  is _________.
[SET-1]', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('295d1331-425d-47cc-a8b5-0785fb1afe32', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2016, 1, 'MCQ', 'Let an be the number of n-bit strings that do NOT contain two consecutive 1s.
Which one of the following is the recurrence relation for an?
[SET-1]', '{"A": "an = a(n-1) + 2a(n-2)", "B": "an = a(n-1) + a(n-2)", "C": "an = 2a(n-1) + a(n-2)", "D": "an = 2a(n-1) + 2a(n-2)"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('2d7c1ff3-a8cd-4624-8eaf-3b5b6b64108d', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2016, 1, 'MCQ', '[SET-1]', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('a7edc47c-ee17-471c-841a-6517c91997b4', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2016, 1, 'MCQ', 'A probability density function on the interval [a,1] is given by 1/x 2 and outside
this interval the value of the function is zero. The value of a is _________..
[SET-1]', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('baa22f6d-bd46-4b75-8768-6ce8cd2d5db2', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2016, 1, 'MCQ', 'Two eigenvalues of a 3 × 3 real matrix P are (2 + √ -1) and 3. The determinant of
P is __________
[SET-1]', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('f03b10de-0cee-434c-9ddc-7302f6d51537', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2016, 2, 'MCQ', 'Consider the recurrence relation a 1 = 8, an = 6n2 + 2n + an-1. Let a99 = K × 10 4.
The value of K is ___________.
[SET-]', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('96e6b74a-8497-41c5-8870-15a1eb553096', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2016, 2, 'MCQ', 'The coefficient of x12 in (x3 + x4 + x5 + x6 + ...)3 is _________.
[SET-]', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('86d9197c-88f4-4de3-9d3b-2d65f664ab86', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2016, 2, 'MCQ', 'Consider the following experiment.
Step1. Flip a fair coin twice.
Step2. If the outcomes are (TAILS, HEADS) then output Y and stop.
Step3. If the outcomes are either (HEADS, HEADS) or (HEADS, TAILS), then
output N and stop.
Step4. If the outcomes are (TAILS, TAILS), then go to Step 1.
The probability that the output of the experiment is Y is (up to two decimal places)
_____
[SET-]', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('ec297b34-9912-426d-b278-bdb82e9868f1', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2016, 1, 'MCQ', 'Consider the following expressions:
i. false
ii. QQ
iii. true
iv. P∨Q
v. ¬Q∨P
The number of expressions given above that are logically implied by P∧(P⇒Q) is
___________.
[SET-2]', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('d158af90-4df0-4538-bad9-3eae60e93084', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2016, 1, 'MCQ', 'The minimum number of colours that is sufficient to vertex -colour any planar
graph is ________.
[SET-2]', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('d891feaa-ff38-49ea-9754-7b2a9820c0bf', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2016, 2, 'MCQ', 'A binary relation  R on N×N is defined as follows:  (a,b)R(c,d) if a≤c or b≤d.
Consider the following propositions:
 P: R is reflexive.
 Q: R is transitive.
Which one of the following statements is TRUE?
A. Both P and Q are true.
B. P is true and Q is false.
C. P is false and Q is true.
D. Both P and Q are false.
[SET-2]', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('fd630522-1edd-471d-9b19-63d6f1f7201d', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2016, 2, 'MCQ', 'Which one of the following well -formed formulae in predicate calculus
is NOT valid ?
A. (∀𝑥𝑝(𝑥) ⟹ ∀𝑥𝑞(𝑥)) ⟹ (∃𝑥¬𝑝(𝑥) ∨ ∀𝑥𝑞(𝑥))
B. (∃𝑥𝑝(𝑥) ∨ ∃𝑥𝑞(𝑥)) ⟹ ∃𝑥(𝑝(𝑥) ∨ 𝑞(𝑥))
C. ∃𝑥(𝑝(𝑥) ∧ 𝑞(𝑥)) ⟹ (∃𝑥𝑝(𝑥) ∧ ∃𝑥𝑞(𝑥))
D. ∀𝑥(𝑝(𝑥) ∨ 𝑞(𝑥)) ⟹ (∀𝑥𝑝(𝑥) ∨ ∀𝑥𝑞(𝑥))
[SET-2]', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('10a6572e-2c8d-4e9b-818a-b97bb618640c', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2016, 2, 'MCQ', 'Consider a set  U of 23 different compounds in a chemistry lab. There is a
subset S of U of 9 compounds, each of which reacts with exactly  3 compounds
of U. Consider the following statements:
I. Each compound in U \ S reacts with an odd number of compounds.
II. At least one compound in U \ S reacts with an odd number of compounds.
III. Each compound in U \ S reacts with an even number of compounds.
Which one of the above statements is  ALWAYS TRUE ?
[SET-2]', '{"A": ")Only I   (b) Only II   (c) Only III   (d)None"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('698cc736-8fd7-458c-9895-c86f213e1cb4', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2016, 2, 'MCQ', 'Let f(x) be a polynomial and g(x) = f''(x) be its derivative. If the degree of (f(x) + f(-
x)) is 10, then the degree of (g(x) - g(-x)) is __________.
[SET-2]', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('36ca9d80-4b46-46f4-b32e-e6441411bb2e', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2016, 2, 'MCQ', 'Consider the systems, each consisting of m linear equations in n variables.
I. If m < n, then all such systems have a solution
II. If m > n, then none of these systems has a solution
III. If m = n, then there exists a system which has a solution
Which one of the following is CORRECT?
[SET-2]', '{"A": "I, II and III are true", "B": "Only II and III are true", "C": "Only III is true", "D": "None of them is true"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('7ff92776-f66c-4189-9d98-e861985915d5', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2016, 2, 'MCQ', 'Suppose that a shop has an equal number of LED bulbs of two different types.
The probability of an LED bulb lasting more than 100 hours given that it is of
Type 1 is 0.7, and given that it is of Type 2 is 0.4. The probability that an LED
bulb chosen uniformly at random lasts more than 100 hours is _________.
[SET-2]', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('8928a20e-d605-4d1a-8e40-1606cfcddb20', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2016, 2, 'MCQ', 'Suppose that the eigenvalues of matrix A are 1, 2, 4. The determinant of (A-1)T is
_________
[SET-2]', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('feacd749-246a-452f-b757-167de98a9181', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2016, 2, 'MCQ', 'The value of the expression 1399(mod 17), in the range 0 to 16, is ________.
[SET-2]', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('352bc6fa-e9c9-4ad3-bef4-888ab48f5229', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2017, 1, 'MCQ', 'The statement (¬ p) → (¬ q) is logically equivalent to which of the statements
below?
I. p → q       II. q → p
III. (¬ q) ∨ p      IV. (¬ p) ∨ q
[SET-1]', '{"A": "I only       (b) I and IV only", "C": "II only       (d) II and III only"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('4b4df4d1-9fa1-4460-8683-573233b013a5', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2017, 1, 'MCQ', 'Consider the first -order logic sentence
F: ∀ x (∃ y R(x,y)).
Assuming non-empty logical domains, which of the sentences below are implied
by F?
I. ∃y (∃x R(x,y))      II. ∃y (∀x R(x,y))
III. ∀y (∃x R(x,y))      IV. ∼∃x (∀y R(x,y))
[SET-1]', '{"A": "IV only       (b) I and IV only", "C": "II only       (d) II and III only"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('44a5e894-242b-4b4c-a48a-e4f646a1bdf5', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2017, 2, 'MCQ', 'Let G = (V, E) be any connected undirected edge -weighted graph. The weights of
the edges in E are positive any distinct. Consider the following statements:
I. Minimum Spanning Tree of G is always unique.
II. Shortest path between any two vertices of G is always unique.
Which of the above statements is/are necessarily true?
[SET-1]', '{"A": "I only", "B": "II only", "C": "both I and II", "D": "neither I and II"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('7b36520c-ee94-4c25-b7e5-d604094d86c1', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2017, 2, 'MCQ', 'Let p, q, and r  be the propositions and the expression (p -> q) -> r be a
contradiction. Then, the expression (r -> p)-> q is
[SET-1]', '{"A": "a tautology", "B": "a contradiction", "C": "always TRUE when p is FALSE", "D": "always TRUE when q is TRUE"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('70be29b0-6bad-4e99-ae19-245e3d422b13', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2017, 2, 'MCQ', 'The number of integers between 1 and 500 (both inclusive) that are divisible by
3 or 5 or 7 is ______.
[SET-1]', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('cfeaa4b2-faac-4ad1-b247-bfe537fcd3dd', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2017, 1, 'MCQ', 'Let c1, cn be scalars not all zero. Such that the following expression holds:∑ 𝑐𝑖𝑎𝑖
𝑛
𝑖=1
where ai is column vectors in R n. Consider the set of linear equations. Ax = B.
where A = [a1.......an] and  𝑏 = ∑ 𝑎𝑖
𝑛
𝑖=1 Then, Set of equations has
[SET-1]', '{"A": "a unique solution at x = Jn where Jn denotes a n-dimensional vector of all 1", "B": "no solution", "C": "infinitely many solutions", "D": "finitely many solutions"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('2de288a0-97cf-4010-8db2-60a017e87368', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2017, 1, 'MCQ', 'Let X be a Gaussian random variable with mean 0 and variance σ2. Let Y =
max(X, 0) where max(a, b) is the maximum of a and b. The median of Y is
__________.
[SET-1]', '{"A": "0     (b)1   (c)2    (d)3"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('983ef994-1bcd-427c-aebf-2699a6729211', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2017, 1, 'MCQ', 'The value oflim
𝑋→1
𝑥7−2𝑥5+1
𝑥3−3𝑥2+2
[SET-1]', '{"A": "is0     (b)is-1  (c)is1", "D": "dose not exist"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('e5f9540f-b9e3-4f57-a77f-71d361936a1f', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2017, 1, 'MCQ', 'Let p, q and r be prepositions and the expression (p → q) → r be a contradiction.
Then, the expression (r → p) → q is.
[SET-1]', '{"A": "a tautology", "B": "a contradiction", "C": "always TRUE when p is FALSE", "D": "always TRUE when q is TRUE"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('72dc98fd-faba-491a-a1ca-2ac701cd9762', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2017, 1, 'MCQ', 'Let u and v be two vectors in R2 whose Euclidean norms satisfy ||u||=2||v||.
What is the value of α such that w = u + αv bisects the angle between u and v?
[SET-1]', '{"A": "2     (b)1/2  (c)1   (d)-1/2"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('a0e33e95-7521-4c71-97fd-1c84ad21198a', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'Let A be m×n real valued square symmetric matrix of rank 2 with expression
given below.
∑ ∑ 𝐴2
𝑖𝑗
𝑛
𝑗=1
𝑛
𝑖=𝑗
Consider the following statements
(i)  One of the eigenvalues must be in [ -5, 5].
(ii) The eigenvalues with the largest magnitude must be strictly greater than 5.
Which of the above statements about eigenvalues of A is/are necessarily
CORRECT?', '{"A": "Both (I) and (II)", "B": "(I) only", "C": "(II) only", "D": "Neither (I) nor (II)"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('42efc385-44dd-488f-a2e0-7448d105abfc', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'The number of integers between 1 and 500 (both inclusive) that are divisible by
3 or 5 or 7 is _____.', '{"A": "271", "B": "272", "C": "273", "D": "274"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('b461b9b4-c352-405f-9b5e-373c4f094f88', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2017, 1, 'MCQ', 'Let p, q, r denote the statement “It is raining”, “It is cold”, and “It is pleasant”,
respectively. Then the statement “It is not raining and it is pleasant, and it is
not pleasant only if it is raining and it is cold” is represented by:
[SET-2]', '{"A": "(\u00ac p \u2227 r) \u2227 ((\u00ac r \u2192 (p \u2227 q))", "B": "(\u00ac p \u2227 r) \u2227 ((p \u2227 q) \u2192 \u00ac r)", "C": "(\u00ac p \u2227 r) \u2228 ((p \u2227 q) \u2192 \u00ac r)", "D": "(\u00ac p \u2227 r) \u2228 ((r \u2192 (p \u2227 q))"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('15905d07-e27c-44a8-b9de-20246b561983', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2017, 2, 'MCQ', 'Consider the set  X={a,b,c,d,e}  under partial ordering
R={(a,a),(a,b),(a,c),(a,d),(a,e),(b,b),(b,c),(b,e),(c,c),(c,e),(d,d),(d,e),(e,e)}
The Hasse diagram of the partial order (X,R) is shown below.
The minimum number of ordered pairs that need to be added to R to make (X,R)
a lattice is ______
[SET-2]', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('57f2c3b6-7a4f-48a2-a8da-3c652e4ee51c', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2017, 2, 'MCQ', 'G is undirected graph with n vertices and 25 edges such that each vertex has
degree at least 3. Then the maximum possible value of n is __ ______
[SET-2]', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('da2f3be5-267b-4123-92a3-81e6132ef4ee', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2017, 1, 'MCQ', 'If f (x) =Rsin(𝜋𝑥/2)+S,f(1/2)=√2 and ∫
1
0 f(x)dx=
2𝑅
𝜋 , then the constants R and S
are , respectively
2
𝜋and
16
𝜋     (b)
2
𝜋and 0
4
𝜋and 0    (d)
4
𝜋and
16
𝜋
[SET-2]', '{"A": "", "C": ""}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('5fa5b10d-6453-414e-9eb9-afbd608a9f88', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2017, 1, 'MCQ', 'For any discrete random variable  X, with probability mass
functionP(X=j)=pj,pj≥0,j∈{0,…,N}, and  ∑ 𝑝𝑗
𝑁
𝑗=0 = 1 define the polynomial
function 𝑔𝑥(𝑧) = ∑ 𝑝𝑗
𝑁
𝑗=0 𝑧𝑖For a certain discrete random variable  Y, there exists a
scalar β∈[0,1] such that 𝑔𝑦(𝑧)=(1−β+βz)N. The expectation of Y is
of NN and ββ alone
[SET-2]', '{"A": "N\u03b2(1\u2212\u03b2)N\u03b2(1\u2212\u03b2)    (b) N\u03b2(1\u2212\u03b2)N\u03b2(1\u2212\u03b2)", "C": "N(1\u2212\u03b2)N(1\u2212\u03b2)     (d) Not expressible in terms"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('ab213ae5-f6c2-416c-9af4-4e517c0b3ced', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2017, 1, 'MCQ', '[SET-2]', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('fa13c630-7e7c-488d-9713-a2bd3a0ef3b2', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2017, 1, 'MCQ', 'P and Q are considering to apply for job. The probability that p applies for job is
1/4. The probability that P applies for job given that Q applies for the job 1/2 and
The probability that Q applies for job given that P applies for the job 1/3.The
probability that P does not apply for job given that Q does not apply for the job
4
5    (b)
5
6    (c)
7
8    (d)
11
12
[SET-2]', '{"A": ""}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('63d6690f-badd-4221-8d07-f45f34b96779', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2017, 1, 'MCQ', 'If a random variable X has a Poisson distribution with mean 5, then the
expectation E[(X + 2)2] equals _________.
[SET-2', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('ea9e5ec6-419e-4a6a-85a7-113507294889', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2017, 1, 'MCQ', '[SET-2]', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('de84af9f-412f-49c6-a88a-5c2158bcb66a', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'If the characteristic polynomial of a 3 × 3 matrix M over R (the set of real numbers)
is λ3 - 4λ2 + aλ + 30, a ∈ℝ, and one eigenvalue of M is 2, then the largest among
the absolute values of the eigenvalues of M is ________.', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('a8349236-4955-40c3-b150-48407e7134f1', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2018, 1, 'MCQ', 'The chromatic number of the following graph is _______.', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('1affc0b8-6732-4efc-88a0-3ed94a480ffa', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2018, 1, 'MCQ', 'Let G be a finite group on 84 elements. The size of a largest possible proper
subgroup of G is ________.', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('cdb576cd-386f-44e2-86a0-d35affacf080', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2018, 2, 'MCQ', 'L et G be a simple undirected graph. Let TD be a depth first search tree of G.
Let TB be a breadth first search tree of G. Consider the following statements.
(I) No edge of G is a cross edge with respect to TD. (A cross edge in G is between
two
Nodes neither of which is an ancestor of the other in TD.)
(II) For every edge (u, v) of G, if u is at depth i and v is at depth j in TB, then
|𝑖−𝑗| = 1.
Which of the statements above must necessarily be true?', '{"A": "I only      (b) II only", "C": "Both I and II     (d) Neither I nor II"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('122ffa9f-58d1-4b17-919b-ba0e3385d15a', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2018, 2, 'MCQ', 'Consider the first-order logic sentence
𝜑 ≡ ∃𝑠∃𝑡∃𝑢∀𝑣∀𝑤∀𝑥∀𝑦 𝜓(𝑠, 𝑡, 𝑢, 𝑣, 𝑤, 𝑥, 𝑦)
whereψ(s,t,u,v,w,x,y) is a quantifier-free first-order logic formula using only
predicate symbols, and possibly equality, but no function symbols. Suppose φ
has a model with a universe containing 7 elements.
Which one of the following statements is necessarily true?
3.', '{"A": "There exists at least one model of \u03c6 with universe of size less than or equal to", "B": "There exists no model of \u03c6 with universe of size less than or equal to 3.", "C": "There exists no model of \u03c6 with universe of size greater than 7.", "D": "Every model of \u03c6 has a universe of size equal to 7"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('33870bfc-c41e-4a14-825a-79fc2731f7bd', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2018, 2, 'MCQ', 'Let G be a graph with 100! Vertices, with each vertex labelled by a distinct
permutation of the numbers 1, 2, … , 100. There is an edge between vertices 𝑢
and 𝑣 if and only if the label of 𝑢 can be obtained by swapping two adjacent
numbers in the label of 𝑣. Let 𝑦 denote the degree of a vertex in G, and 𝑧 denote
the number of connected components in G. Then, 𝑦 + 10𝑧 = _____.', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('d1871c5d-492b-4d5e-9926-f57bd8f02e26', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2018, 1, 'MCQ', 'Consider the following undirected graph G:
Choose a value for x that will maximize the number of minimum weight
spanning trees (MWSTs) of G. The number of MWSTs of G for this value of x is
______.', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('559bde40-e13b-4386-81be-71bc76fa85fb', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'Consider a matrix A = uv T where u =(1
2), v =(1
2). Note that v T denotes the
transpose of V. The largest eigenvalue of A is __________________
[Mark: 1][GATE: 2018]', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('c347d770-3aaf-4347-a429-9f85c3bd4070', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2018, 1, 'MCQ', 'Two people, P and Q, decide to independently roll two identical dice, each with
6 faces, numbered 1 to 6. The person with the lower number wins. In case of a
tie, they roll the dice repeatedly until there is no tie. Define a trial as a throw
of the dice by P and Q. Assume that all 6 numbers on each dice are equi -
probable and that all trials are independent. The probability (rounded to 3
decimal places) that one of them wins on the third trial is __________', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('27b46481-cb12-49e6-bf8b-d8eaa54d8a11', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2018, 1, 'MCQ', 'Which one of the following is a closed form expression for the generating
function of the sequence {a n}, where an = 2n+3 for all n = 0, 1, 2, …?', '{"A": "3/(1-x)2   (b)3x/(1-x)2 (c)2-x/(1-x)2  (d)3-x/(1-x)2"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('d60a2959-5779-4bf7-9e3a-f960dc4f567c', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'The value of ∫ 𝑥 cos (𝑥2)
𝜋/4
0  dx correct to three decimal places is
(Assuming that 𝜋 =3.14)', '{"A": "0.289   (b)0.298  (c)0.28 (d)0.29         [GATE: 2018]"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('f2a0ac30-7d43-4054-aaa6-bee005d5bb14', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2018, 1, 'MCQ', 'Consider Guwahati (G) and Delhi (D) whose temperatures can be classified as
high (H), medium (M) and low (L). Let P(HG) denote the probability that Guwahati
has high temperature. Similarly, P(M G) and P(L G) denotes the probability of
Guwahati having medium and low temperatures respe ctively. Similarly, we use
P(HD), P(MD) and P(LD) for Delhi.
The following table gives the conditional probabilities for Delhi’s temperature
given Guwahati’s temperature
Consider the first row in the table above. The first entry denotes that if Guwahati
has high temperature (H G) then the probability of Delhi also having a high
temperature (HD) is 0.40; i.e., P(HD∣ HG) = 0.40. Similarly, the next two entries are
P(MD∣ HG) = 0.48 and P(LD∣ HG) = 0.12. Similarly for the other rows.
If it is known that P(H G) = 0.2, P(MG) = 0.5, and P(L G) = 0.3, then the probability
(correct to two decimal places) that Guwahati has high temperature given that
Delhi has high temperature is ______', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('672001b3-5988-493d-8cdd-7f5ee5760cbc', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2018, 1, 'MCQ', 'Let N be the set of natural numbers. Consider the following sets,
P: Set of Rational numbers (positive and negative)
Q: Set of functions from {0, 1} to N
R: Set of functions from N to {0, 1}
S: Set of finite subsets of N
Which of the above sets are countable?', '{"A": "Q and S only      (b)P and S only", "C": "P and R only                                        (d)P, Q and S only"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('4ddc947f-699e-40f9-9e3b-08c892e276f2', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'Consider a matrix P whose only eigenvectors are the multiples of [1
4].
Consider the following statements.
(I) P does not have an inverse
(II) P has a repeated eigenvalue
(III) P cannot be diagonalized
Which one of the following options is correct?', '{"A": "Only I and III are necessarily true", "B": "Only II is necessarily true", "C": "Only I and II are necessarily true", "D": "Only II and III are necessarily true   [Marks:  ][GATE: 2018]"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('d0728bef-07b2-4cb2-9fc0-3597b9838241', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2019, 1, 'MCQ', 'Let U = {1,2,...,n}. Let A = {(x,X)|x ∈ X, X ⊆ U}. Consider the following two
statements on |A|.
(I)  |A|=n. 2 n-1
(II) |A| =∑ 𝑘. (𝑛
𝑘)𝑛
𝑘=1
Which of the above statements is/are TRUE?', '{"A": "Only I                                           (b) Only II", "C": "Both I and II                                 (d) Neither I nor II"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('0f1eed29-73e8-419f-ba5f-a461198f885e', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2019, 1, 'MCQ', 'Let G be an arbitrary group. Consider the following relations on G:
R1: ∀a b∈ G, aR1 b if and only if ∃g ∈ G such that a = g–1bg
R2: ∀a b∈ G, aR1 b if and only if a = b–1
Which of the above is/are equivalence relation/relations?', '{"A": "R1 and R2    (b) R1 only", "C": "R2 only      (d) Neither R1 nor R2"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('7dd4bad0-743a-420a-b2e6-5e48b8f85790', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2019, 2, 'MCQ', 'Let G be an undirected complete graph, on n vertices, where n > 2. Then, the
number of different Hamiltonian cycles in G is equal to', '{"A": "n !    (b) (n \u2013 1)!   (c) 1 (d)   ( 1)(n-1)!/2"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('4f443708-03c3-4873-a79b-ac57904b87a5', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2019, 2, 'MCQ', 'Consider the first order predicate formula ϕ  :
∀x[(∀z z⏐x ⇒ ((z = x) ∨ (z = 1))) ⇒∃w (w > x) ∧ (∀z z⏐w ⇒ ((w = z) ∨ (z = 1)))]
Here ‘a ⏐b’ denotes that ‘a divides b ’, where a and b are integers. Consider the
following sets:
S1 : {1, 2, 3, ..., 100}
S2: Set of all positive integers
S3: Set of all integers
Which of the above sets satisfy ϕ?', '{"A": "S1and S3       (b) S2and S3", "C": "S2and S3              (d) S1, S2 and S3"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('c5c0f69f-57ba-4523-802f-cd29b0d5fd92', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2019, 2, 'MCQ', 'Let G be any connected, weighted, undirected graph:
I. G has a unique minimum spanning tree, if no two edges of G have the same
weight.
II. G has a unique minimum spanning tree, if for every cut G, there is a unique
minimum
weight edge crossing the cut.
Which of the above two statements is/are TRUE?', '{"A": "Neither I nor II    (b) I only", "C": "II only      (d) Both I and II"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('91b6c9a4-08e4-49f4-a6bb-ead3f4418c70', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'Compute lim
𝑥→3
𝑥4−81
2𝑥2−5𝑥−3', '{"A": "1      (b)Limit does not exist", "C": "53/12     (d)108/7         [Marks: ][GATE:2019]"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('db5d035c-80eb-4213-98b7-db91b995499b', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'Let X be a square matrix. Consider the following two statements on X
I. X is invertible.
II. Determinant of X is non-zero.
Which one of the following is TRUE?', '{"A": "I implies II; II does not imply I.", "B": "II implies I; I does not imply II.", "C": "I and II are equivalent statements.", "D": "I does not imply II; II does not imply I.   [Marks:  ][GATE:2019]"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('2ab28ac7-e647-4a82-af03-17ab80ec5f6d', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2019, 1, 'MCQ', 'Suppose Y is distributed uniformly in the open interval (1, 6). The probability
that the polynomial 3x2 + 6xY + 3Y + 6 has only real roots is (rounded off to 1
decimal place) _________.', '{"A": "0.3    (b)0.9   (c)0.1    (d)0.8"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('29b6148c-d181-4a6a-ae05-771cbf90b225', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2019, 1, 'MCQ', 'The absolute value of the product of Eigenvalues of R is ______.
𝑅 = [
1 2 4 8
1 3 9 27
1 4 16 64
1 5 25 125
]', '{"A": "12    (b)17   (c)10    (d)8"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('d4b606b6-4f9b-4037-80eb-2f774f14c096', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'Let G be a group of 35 elements. Then the largest possible size of a subgroup of
G other than G itself is ______.', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('49def3b5-c34c-4207-a1f4-6200477efc4e', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'Let R be the set of all binary relations on the set {1,2,3}. Suppose a relation is
chosen from R at random. The probability that the chosen relation is reflexive
(round off to 3 decimal places) is _____.', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('60fbb733-020e-4cc7-8627-fa40f8c76dbb', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'Consider the functions
I. I. 𝑒−𝑥
II. II. 𝑥2 − 𝑠𝑖𝑛 𝑥
III. III√𝑥3 + 1
Which of the above functions is/are increasing everywhere in [0, 1]?', '{"A": "II and III only  (b) III only  (c) II only  (d) I and III only"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('4c059f4e-49d6-44f1-8c9a-9ee0e2646298', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 2, 'MCQ', 'For n > 2, let a {0, 1} n be a non-zero vector. Suppose that x is chosen uniformly
at random from {0, 1} n. Then the probability that ∑ 𝑎𝑖𝑋𝑖
𝑛
𝑖=1  is an odd number is
._____________', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('9b1da86e-8552-4e8d-bdef-a73b8fe4a4c9', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 2, 'MCQ', 'Graph G is obtained by adding vertex s to K3,4 and making s adjacent to every
vertex of K3,4. The minimum number of colours required to edge-colour G is
_____.', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('b56a16e0-2933-4829-b809-49dde3afff05', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'Which one of the following predicate formulae is NOT logically valid? Note that
W is a predicate formula without any free occurrence of x.', '{"A": "\u2200x(p(x)\u2228W)\u2261\u2200x(px)\u2228W    (b) \u2203x(p(x)\u2227W)\u2261\u2203xp(x)\u2227W", "C": "\u2200x(p(x)\u2192W)\u2261\u2200xp(x)\u2192W     (d) \u2203x(p(x)\u2192W)\u2261\u2200xp(x)\u2192W"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('978aac70-83b3-4642-ae7d-4442cf8b718a', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'The number of permutations of the characters in LILAC so that no character
appears in its original position, if the two L’s are indistinguishable, is _______.', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution not parsed from OCR yet.'),
  ('d16b104e-9451-4e8c-8f5b-fad1d0c03424', 'ef85032b-b527-4fd1-9e59-bcfb661899b7', 2020, 1, 'MCQ', 'Let A and B be two n×n matrices over real numbers. Let rank(M) and det(M)
denote the rank and determinant of a matrix M, respectively. Consider the
following statements,
Which of the above statements are TRUE?', '{"A": "I and II only", "B": "I and IV only", "C": "II and III only", "D": "III and IV only"}', '"A"', 'Detailed solution not parsed from OCR yet.')
ON CONFLICT (id) DO NOTHING;
