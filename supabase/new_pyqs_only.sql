-- Delete old misassigned questions, keep any the user has already answered
DELETE FROM questions WHERE id NOT IN (SELECT question_id FROM user_progress);

INSERT INTO questions (id, subject_id, gate_year, marks, question_type, question_stem, options_json, correct_key, detailed_solution) VALUES
  ('c9dbdc2c-1f11-421a-954e-abbf1b12de0b', (SELECT id FROM subjects WHERE name ILIKE '%Operating Systems%' LIMIT 1), 2009, 1, 'MCQ', 'In the following process state transition diagram for a uni -processor system,
assume that there are always some processes in the ready state: Now consider
the following statements:
I. If a process makes a transition D, it would result in another process making
transition Aimmediately.
II. A process P2 in blocked state can make transition E while another process
P1 is in runningstate.
III. The OS uses preemptive scheduling.
IV. The OS uses non-preemptive scheduling.
Which of the above statements are TRUE?', '{"A": "I and II", "B": "I and III", "C": "II and III", "D": "II and IV"}', '"A"', 'Detailed solution pending.'),
  ('c09bc7b4-1369-4bd7-b665-a6c402ea5c40', (SELECT id FROM subjects WHERE name ILIKE '%Operating Systems%' LIMIT 1), 2010, 1, 'MCQ', 'Which of the following statements are true?
I. Shortest remaining time first scheduling may cause starvation
II. Pre-emptive scheduling may cause starvation
III. Round robin in better than FCFS in terms of response time', '{"A": "I only         (b) I and III only", "C": "II and III only        (d) I, II and III"}', '"A"', 'Detailed solution pending.'),
  ('54d1124c-aee9-43c1-ad81-a7f9b2e8e0bb', (SELECT id FROM subjects WHERE name ILIKE '%Operating Systems%' LIMIT 1), 2011, 1, 'MCQ', 'A thread is usually defined  as a “light weight process” because an operating
system (OS) maintains smaller data structures for a thread than for a process.
In relation to this, which of the following is TRUE?', '{"A": "On per-thread basis, the OS maintains only CPU register state", "B": "The OS does not maintain a separate stack for each thread", "C": "On per-thread basis, the OS does not maintain virtual memory state", "D": "On per -thread basis, the OS maintains only scheduling and accounting"}', '"A"', 'Detailed solution pending.'),
  ('93156315-b966-4e17-a13b-843b665ec51d', (SELECT id FROM subjects WHERE name ILIKE '%Operating Systems%' LIMIT 1), 2011, 2, 'MCQ', 'The time taken to switch betwee n user and kernel modes of execution be t1
while the time taken to switch between two processes be t2.Which of the
following is TRUE?', '{"A": "t1> t2", "B": "t1 = t2", "C": "t1< t2", "D": "nothing can be said about the relation between t1 and t2"}', '"A"', 'Detailed solution pending.'),
  ('5f8a2e79-8c5b-4714-b9c4-ace35459d0f9', (SELECT id FROM subjects WHERE name ILIKE '%Operating Systems%' LIMIT 1), 2011, 2, 'MCQ', 'Consider the following table of arrival time and burst time for three processes
P0, P1 and P2.
P0             0 ms            9 ms
P1             1 ms            4 ms
P2             2 ms            9 ms
The pre-emptive shortest job first scheduling algorithm is used. Scheduling is
carried out only at arrival or completion of processes. What is the average
waiting time for the three processes?', '{"A": "5.0 ms   (b) 4.33 ms   (c) 6.33  (d) 7.33"}', '"A"', 'Detailed solution pending.'),
  ('de9e6af5-d189-4dfd-8a7b-9dcb0b9b9e03', (SELECT id FROM subjects WHERE name ILIKE '%Operating Systems%' LIMIT 1), 2012, 1, 'MCQ', 'A process executes the code
fork();
fork();
fork();
The total number of child processes created is', '{"A": "3    (b) 4    (c) 7   (d)8"}', '"A"', 'Detailed solution pending.'),
  ('df9cf72a-a367-49c8-b326-9c78c0b61a5b', (SELECT id FROM subjects WHERE name ILIKE '%Operating Systems%' LIMIT 1), 2020, 1, 'MCQ', 'Consider the 3 processes, P1, P2 and P3 shown in the table.
The completion order of the 3 processes under  the policies FCFS and RR2
(round robin scheduling with CPU quantum of 2 time units) are', '{"A": "FCFS: P1, P2, P3 RR2: P1, P2, P3", "B": "FCFS: P1, P3, P2 RR2: P1, P3, P2", "C": "FCFS: P1, P2, P3 RR2: P1, P3, P2", "D": "FCFS: P1, P3, P2 RR2: P1, P2, P3   [Marks:2][GATE:  2012]"}', '"A"', 'Detailed solution pending.'),
  ('a5d077e9-a0c4-4582-b7e7-64b370525540', (SELECT id FROM subjects WHERE name ILIKE '%Operating Systems%' LIMIT 1), 2013, 1, 'MCQ', 'A scheduling algorithm assigns priority proportional to the waiting time of a
scheduler re-evaluates the process priorities every T time units and decides the
next process to schedule. Which one of the following is TRUE if the processes
have no I/O operations and all arrive at time zero?', '{"A": "This algorithm is equivalent to the first-come-first-serve algorithm", "B": "This algorithm is equivalent to the round-robin algorithm.", "C": "This algorithm is equivalent to the shortest-job-first algorithm..", "D": "This algorithm is equivalent to the shortest-remaining-time-first algorithm"}', '"A"', 'Detailed solution pending.'),
  ('40caec51-9550-4c82-be03-80d1e2771620', (SELECT id FROM subjects WHERE name ILIKE '%Operating Systems%' LIMIT 1), 2014, 1, 'MCQ', 'Which one of the following is FALSE?
blocked.
switching between kernel level threads.', '{"A": "User level threads are not scheduled by the kernel.", "B": "When a user level thread is blocked, all other threads of its process are", "C": "Context switching between user level threads is faster than context", "D": "Kernel level threads cannot share the code segment."}', '"A"', 'Detailed solution pending.'),
  ('6c453548-4139-4ed7-8896-23d50cc148dc', (SELECT id FROM subjects WHERE name ILIKE '%Operating Systems%' LIMIT 1), 2014, 2, 'MCQ', 'Consider the following set of processes that need to be scheduled on a single
CPU. All the times are given in milliseconds.
Using the shortest remaining time first  scheduling algorithm, the average', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('4e85f280-234c-4126-b21f-2cd5e120cc05', (SELECT id FROM subjects WHERE name ILIKE '%Operating Systems%' LIMIT 1), 2014, 2, 'MCQ', 'Three processes A, B and C each execute a loop of 100 iterations. In each
iteration of the loop, a process performs a single computation that requires
tc CPU milliseconds and then initiates a single I/O operation that lasts for t io
milliseconds. It is assumed that the computer where the processes execute
has sufficient number of I/O devices and the OS o f the computer assigns
different I/O devices to each process. Also, the scheduling overhead of the
OS is negligible. The processes have the following characteristics:
A 100 ms 500 ms
B 350 ms 500 ms
C 200 ms 500 ms
The processes A, B,  and C are started at times 0, 5 and 10 milliseconds
respectively, in a pure time sharing system (round robin scheduling) that
uses a time slice of 50 milliseconds. The time in milliseconds at which process
C would complete its first I/O operation is _____ ______.', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('ec5ea5ea-9dde-440d-87d0-ff274448c0a3', (SELECT id FROM subjects WHERE name ILIKE '%Operating Systems%' LIMIT 1), 2014, 2, 'MCQ', 'An operating system uses shortest remaining time first scheduling algorithm
for pre -emptive scheduling of processes. Consider the following set of
The
average waiting time (in milliseconds) of the processes is _________.', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('e68b5aa0-0ce5-424e-ac99-16b8ff0a4a65', (SELECT id FROM subjects WHERE name ILIKE '%Operating Systems%' LIMIT 1), 2015, 2, 'MCQ', 'Consider a uniprocessor system executing three tasks T1, T2 and T3, each
of which is composed of an infinite sequence of jobs (or instances) which
arrive periodically at intervals of 3, 7 and 20 milliseconds, respectively. The
priority of each task is the inverse of its period and the available tasks are
scheduled in order  of priority, with the highest priority task scheduled first.
Each instance of T1, T2 and T3 requires an execution time of 1, 2 and 4
milliseconds, respectively. Given that all tasks initially arrive at the beginning
of the 1st milliseconds and task preemp tions are allowed, the first instance
of T3 completes its execution at the end of ______________ milliseconds.', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('52e042b3-8ea9-45cc-9a97-13c55f1d6160', (SELECT id FROM subjects WHERE name ILIKE '%Operating Systems%' LIMIT 1), 2020, 1, 'MCQ', 'For the processes listed in the following table, which of the following
scheduling schemes will give the lowest average turnaround time?
3]', '{"A": "First Come First Serve", "B": "Non-preemptive Shortest Job First", "C": "Shortest Remaining Time", "D": "Round Robin with Quantum value two     [Marks: 2][GATE:  2015][SET-"}', '"A"', 'Detailed solution pending.'),
  ('f332c7ab-8a10-4fc2-9c81-1cadc95d3f01', (SELECT id FROM subjects WHERE name ILIKE '%Operating Systems%' LIMIT 1), 2015, 1, 'MCQ', 'The maximum number of processes that can be in Ready state for a computer
system with n CPUs is', '{"A": "n    (b) n2    (c) 2n         (d) Independent of n"}', '"A"', 'Detailed solution pending.'),
  ('c8b310ad-156b-4985-b799-6541eeb2df08', (SELECT id FROM subjects WHERE name ILIKE '%Operating Systems%' LIMIT 1), 2016, 1, 'MCQ', 'Consider an arbitrary set of CPU -bound processes with unequal CPU burst
lengths submitted at the same time to a computer system. Which one of the
following process scheduling algorithms would minimize the average waiting
time in the ready queue?', '{"A": "Shortest remaining time first", "B": "Round-robin with time quantum less than the shortest CPU burst", "C": "Uniform random", "D": "Highest priority first with priority proportional to CPU burst length"}', '"A"', 'Detailed solution pending.'),
  ('9300ba40-e2d5-4287-809f-0b002a08cc4c', (SELECT id FROM subjects WHERE name ILIKE '%Operating Systems%' LIMIT 1), 2016, 2, 'MCQ', 'Consider the following processes, with the arrival time and the length of the
CPU burst given in milliseconds. The scheduling algorithm used is
preemptive shortest rema ining-time first.
The average turnaround time of these processes is ________________________
milliseconds.', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('b6c2f150-e386-4927-a930-bd61dd23ebf9', (SELECT id FROM subjects WHERE name ILIKE '%Operating Systems%' LIMIT 1), 2017, 1, 'MCQ', 'Threads of a process share', '{"A": "Global variables but not heap.", "B": "Heap but not global variables.", "C": "Neither global variables nor heap.", "D": "Both heap and global variables."}', '"A"', 'Detailed solution pending.'),
  ('6e091317-d56e-4dea-b2d5-2ecd9dad4ff7', (SELECT id FROM subjects WHERE name ILIKE '%Operating Systems%' LIMIT 1), 2017, 1, 'MCQ', 'Consider the following CPU processes with arrival times (in milliseconds) and
length of CPU bursts (in milliseconds) as given below:
If the pre-emptive shortest remaining time first scheduling algorithm is used
to schedule the processes, then the average waiting time across all processes
is __________ milliseconds.', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('bbbc683c-9adc-4106-bd48-e80f9854b620', (SELECT id FROM subjects WHERE name ILIKE '%Operating Systems%' LIMIT 1), 2017, 1, 'MCQ', 'Which of the following is/are shared by all th e threads in a process?
I. Program Counter   II.  Stack
III. Address space   IV. Registers', '{"A": "I and II only   (b) III only", "C": "IV only   (d) III and IV only"}', '"A"', 'Detailed solution pending.'),
  ('76e17f7a-27bd-4707-94bf-5a052ada592a', (SELECT id FROM subjects WHERE name ILIKE '%Operating Systems%' LIMIT 1), 2017, 2, 'MCQ', 'Consider the set of processes with arrival time (in milliseconds), CPU burst
time (in milliseconds), and priority (0 is the highest priority) shown below.
None of the processes have I/O burst time.
The average waiting time (in milliseconds) of all the processes using preemptive
priority scheduling algorithm is __________.', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('419720a8-0c69-4631-9bb6-d21eb8b2818c', (SELECT id FROM subjects WHERE name ILIKE '%Operating Systems%' LIMIT 1), 2019, 1, 'MCQ', 'The following C program is executed on a Unix/Linux system
#include <unistd.h>
int main ()
{
int i;
for(i = 0; i < 10; i++)
if (i%2 == 0) fork ();
return 0;
}
The total number of child processes created is _________.', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('d16a00f3-3155-4119-ab58-74ed5b6d4910', (SELECT id FROM subjects WHERE name ILIKE '%Operating Systems%' LIMIT 1), 2019, 1, 'MCQ', 'The following C program is executed on a Unix/Linux system
#include <unistd.h>
int main ()
{
int i;
for(i = 0; i < 10; i++)
if (i%2 == 0) fork ();
return 0;
}
The total number of child processes created is _________.', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('8395948b-a243-42b1-b9bb-0925097790d7', (SELECT id FROM subjects WHERE name ILIKE '%Operating Systems%' LIMIT 1), 2020, 1, 'MCQ', 'Consider the following statements about process state transitions for a system
using preemptive scheduling.
I. A running process can move to ready state.
II. A ready process can move to running state.
III. A blocked process can move to running state.
IV. A blocked process can move to ready state.
Which of the above statements are TRUE?', '{"A": "II and III only     (b) I, II and III only", "C": "I, II, III and IV     (d) I, II and IV only"}', '"A"', 'Detailed solution pending.'),
  ('bec58fb9-c005-4559-97a2-a0a7c0b257dd', (SELECT id FROM subjects WHERE name ILIKE '%Operating Systems%' LIMIT 1), 2020, 1, 'MCQ', 'RR, assume that the processes are scheduled in the order P1, P2, P3, P4.
If the time quantum for RR is 4 ms, then the absolute value of the difference
between the average turnaround times (in ms) of SJF and RR (round off to 2', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('65d5fd4a-d9d3-4a36-a5dc-24422fdcd042', (SELECT id FROM subjects WHERE name ILIKE '%Operating Systems%' LIMIT 1), 2020, 1, 'MCQ', 'Consider a system with 4 types of resources R1 (3 units), R2 (2 units), R3 (3
units), R4 (2 units). A non-preemptive resource allocation policy is used. At any
given instance, a request is not entertained if it cannot be completely satisfied.
Three processes P1, P2, P3 request the sources as follows if executed
independently.
t=0: requests 2 units of R2
t=1: requests 1 unit of R3
t=3: requests 2 units of R1
t=5: releases 1 unit of R2
and 1 unit of R1.
t=7: releases 1 unit of R3
t=8: requests 2 units of R4
t=10: Finishes
t=0: requests 2 units of R3
t=2: requests 1 unit of R4
t=4: requests 1 unit of R1
t=6: releases 1 unit of R3
t=8: Finishes
t=0: requests 1 unit of R4
t=2: requests 2 units of R1
t=5: releases 2 units of R1
t=7: requests 1 unit of R2
t=8: requests 1 unit of R3
t=9: Finishes', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('a37aa700-8a1f-4850-a108-865d94e3d392', (SELECT id FROM subjects WHERE name ILIKE '%Operating Systems%' LIMIT 1), 2009, 1, 'MCQ', 'The enter_CS () and leave_CS () functions to implement critical section of a
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
Which of the above statements is TRUE?', '{"A": "I only", "B": "I and II", "C": "II and III", "D": "IV only"}', '"A"', 'Detailed solution pending.'),
  ('806b6620-1165-4040-b0dc-3590981e98ae', (SELECT id FROM subjects WHERE name ILIKE '%Operating Systems%' LIMIT 1), 2010, 1, 'MCQ', 'Consider the methods used by processes P1 and P2 for accessing their critical
sections whenever needed, as given below. The initial values of shared Boolean
variables S1 and S2 are randomly assigned.
Method used by P1 Method used by P2
While (S1 == S2);
Critical Section
S1= S2;
While (S1 != S2);
Critical Section
S2 = not (S1)
While one of the following statements describes properties achieved?', '{"A": "Mutual exclusion but not progress", "B": "Progress but not mutual exclusion", "C": "Neither mutual exclusion nor progress", "D": "Both mutual exclusion and progress"}', '"A"', 'Detailed solution pending.'),
  ('2e8634a5-b0d6-46c1-a66f-779ac64065a7', (SELECT id FROM subjects WHERE name ILIKE '%Operating Systems%' LIMIT 1), 2020, 2, 'MCQ', 'Each of a set of n processes executes the following code using two semaphores
a and b initialized to 1 and 0, respectively. Assume that count is a shared
variable initialized to 0 and not used in CODE SECTION P.
CODE SECTION P
wait (a); count = count + 1;
if (count == n) signal (b);
signal (a); wait (b); signal (b);
CODE SECTION Q
What does the code achieve?
has finished CODE SECTION P', '{"A": "It ensures that all processes execute CODE SECTION P mutually exclusively", "B": "It ensures that at most two processes are in CODE SECTION Q at any time.", "C": "It ensures that no process executes CODE SECTION Q before every process", "D": "It ensures that at most n-1 processes are in CODE SECTION P at any time."}', '"A"', 'Detailed solution pending.'),
  ('c4c442e3-b939-497a-a4f5-70f2f84a7da0', (SELECT id FROM subjects WHERE name ILIKE '%Operating Systems%' LIMIT 1), 2010, 2, 'MCQ', 'The following program consists of 3 concurrent processes and 3 binary
semaphores. The semaphores are initialized as S0 = 1, S1 = 0, S2 = 0:
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
How many times will process P0 print ‘0’?', '{"A": "At least twice", "B": "Exactly twice", "C": "Exactly thrice", "D": "Exactly once"}', '"A"', 'Detailed solution pending.'),
  ('f458e44d-5b0d-41a6-bb30-2656b4bdb617', (SELECT id FROM subjects WHERE name ILIKE '%Operating Systems%' LIMIT 1), 2012, 2, 'MCQ', 'Fetch_And_Add(X,i) is an atomic Read -Modify-Write instruction that reads the
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
This implementation', '{"A": "fails as L can overflow", "B": "fails as L can take on a non-zero value when the lock is actually available", "C": "works correctly but may starve some processes", "D": "works correctly without starvation"}', '"A"', 'Detailed solution pending.'),
  ('72bacaa9-3d43-4b27-aa0d-709a364994a9', (SELECT id FROM subjects WHERE name ILIKE '%Operating Systems%' LIMIT 1), 2020, 1, 'MCQ', 'Three concurrent processes X, Y, and Z execute three different code segments
that access and update certain shared variables. Process X executes the P
operation (i.e., wait) on semaphores a, b and c; process Y executes the P operation
on semaphores b, c and d; process Z executes the P operation on semaphores c,
d, and a before entering the respective code segments. After completing the
execution of its code segment, each process invokes the V operation (i.e., signal)
on its three semaphores. All sem aphores are binary semaphores initialized to
one. Which one of the following represents a deadlock -free order of invoking the
P operations by the processes?', '{"A": "X: P(a)P(b)P(c) Y: P(b)P(c)P(d) Z: P(c)P(d)P(a)", "B": "X: P(b)P(a)P(c) Y: P(b)P(c)P(d) Z: P(a)P(c)P(d)", "C": "X: P(b)P(a)P(c) Y: P(c)P(b)P(d) Z: P(a)P(c)P(d)", "D": "X: P(a)P(b)P(c) Y: P(c)P(b)P(d) Z: P(c)P(d)P(a)  [Marks: 1][GATE: 2013]"}', '"A"', 'Detailed solution pending.'),
  ('c5db1bab-11af-48b3-806d-288c1a09de67', (SELECT id FROM subjects WHERE name ILIKE '%Operating Systems%' LIMIT 1), 2013, 2, 'MCQ', 'A certain computation generates two arrays a and b such that a[i]=f(i) for 0 ≤ i <
n and b[i]=g(a[i]) for 0 ≤ i < n. Suppose this computation is decomposed into two
concurrent processes X and Y such that X computes the array a and Y computes
the array b. The processes employ two binary semaphores R and S, both
initialized to zero. The array a is shared by the two processes. The structures of
the processes are shown below.
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
(a)
ExitX(R,S) {
P(R);
V(S);
}
EntryY(R,S) {
P(S);
V(R);
}
(b)
ExitX(R,S) {
V(R);
V(S);
}
EntryY(R,S) {
P(R);
P(S);
}
(c)
ExitX(R,S) {
P(S);
V(R);
}
EntryY(R,S) {
V(S);
P(R);
}
(d)
ExitX(R,S) {
V(R);
P(S);
}
EntryY(R,S) {
V(S);
P(R);
}', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('eaa6e79b-0f43-4202-8eac-ad47dabc50df', (SELECT id FROM subjects WHERE name ILIKE '%Operating Systems%' LIMIT 1), 2020, 1, 'MCQ', 'A shared variable x, initialized to zero, is operated on by four concurrent
the processes Y and Z reads x from memory, decrements by two, stores it to
operation (i.e., wait) on a counting semaphore S and invokes the V operation (i.e.,
signal) on the semaphore S after storing x to memory. Semaphore S is initialized
to two. What is the maximum possible value of x after all processes complete
execution?', '{"A": "-2", "B": "-1", "C": "1", "D": "2         [Marks: 2][GATE:  2013]"}', '"A"', 'Detailed solution pending.'),
  ('d1b8de79-6e7f-43bd-a924-9c901a176bfb', (SELECT id FROM subjects WHERE name ILIKE '%Operating Systems%' LIMIT 1), 2014, 2, 'MCQ', 'Consider the procedure below for the Producer -Consumer problem which uses
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
Which one of the following statements is TRUE if all three processes run
concurrently starting at time t=0?', '{"A": "All processes will finish without any deadlock", "B": "The consumer will remove no more than one item from the buffer.", "C": "Deadlock occurs if the consumer succeeds in acquiring semaphore s when the", "D": "The starting value for the semaphore n must be 1 and not 0 for deadlock-free"}', '"A"', 'Detailed solution pending.'),
  ('defc32f1-bffa-455a-85e7-8f220c610f2b', (SELECT id FROM subjects WHERE name ILIKE '%Operating Systems%' LIMIT 1), 2015, 1, 'MCQ', 'The following two functions P1 and P2 that share a variable B with an initial
value of 2 execute concurrently.
The number of distinct values that B can possibly take after the execution is', '{"A": "3", "B": "2", "C": "5", "D": "4"}', '"A"', 'Detailed solution pending.'),
  ('7053003c-f86c-4fc2-8c7e-7d6ba639f4ab', (SELECT id FROM subjects WHERE name ILIKE '%Operating Systems%' LIMIT 1), 2015, 1, 'MCQ', 'Two processes X and Y need to access a critical section. Consider the following
Here, varP and varQ are shared variables and both are initialized to false. Which
one of the following statements is true?
exclusion
exclusion', '{"A": "The proposed solution prevents deadlock but fails to guarantee mutual", "B": "The proposed solution guarantees mutual exclusion but fails to prevent", "C": "The proposed solution guara ntees mutual exclusion and prevents deadlock", "D": "The proposed solution fails to prevent deadlock and fails to guarantee mutual"}', '"A"', 'Detailed solution pending.'),
  ('491910b5-2c14-43f3-823b-348ce5cfa4df', (SELECT id FROM subjects WHERE name ILIKE '%Operating Systems%' LIMIT 1), 2016, 2, 'MCQ', 'Consider the following proposed solution for the critical section problem. There
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
Which one of the following is TRUE about the above solut ion?', '{"A": "At most one process can be in the critical section at any time", "B": "The bounded wait condition is satisfied", "C": "The progress condition is satisfied", "D": "It cannot cause a deadlock"}', '"A"', 'Detailed solution pending.'),
  ('2364be32-9116-49a4-933a-521e46dd12f0', (SELECT id FROM subjects WHERE name ILIKE '%Operating Systems%' LIMIT 1), 2016, 2, 'MCQ', 'Consider the following two -process synchronization solution.
Entry: loop while (turn == 1);
(critical section)
Exit: turn = 1;
Entry: loop while (turn == 0);
(critical section)
Exit: turn = 0;
The shared variable turn is initialized to zero. Which one of the following is
TRUE?', '{"A": "This is a correct two -process synchronization solution.", "B": "This solution violates mutual exclusion requirement.", "C": "This solution violates progress requirement.", "D": "This solution violates bounded wait requirement."}', '"A"', 'Detailed solution pending.'),
  ('f5e60fb1-e7b4-40c5-8c80-206586ceca9f', (SELECT id FROM subjects WHERE name ILIKE '%Operating Systems%' LIMIT 1), 2016, 2, 'MCQ', 'Consider a non-negative counting semaphore S. The operation P(S) decrements
S, and V(S) increments S. During an execution, 20 P(S) operations and 12 V(S)
operations are issued in some order. The largest initial value of S for which at
least one P(S) operation will remain Blocked is ___________', '{"B": "Only P1 and P2 will be in deadlock."}', '"A"', 'Detailed solution pending.'),
  ('8c8147cb-4659-4b30-9da3-77f8e361a4bf', (SELECT id FROM subjects WHERE name ILIKE '%Operating Systems%' LIMIT 1), 2018, 2, 'MCQ', 'Consider the following solution to the producer -consumer synchronization
problem. The shared buffer size is N. Three semaphores  empty,
full and mutex are defined with respective initial  values of 0, N and 1.
Semaphore empty denotes the number of available slots in the buffer, for the
consumer to read from. Semaphore  full denotes the number of available slots
in the buffer, for the producer to write to. The place holder variables, denoted
by P, Q, R and S, in the code below can be assigned either  empty or full. The
valid semaphore operations are: wait () and signal ().
Which one of the following assignments to P, Q, R and S will yield the correct
solution?', '{"A": "P: full, Q: full, R: empty, S: empty", "B": "P: empty, Q: empty, R: full, S: full", "C": "P: full, Q: empty, R: empty, S: full", "D": "P: empty, Q: full, R: full, S: empty"}', '"A"', 'Detailed solution pending.'),
  ('3844d693-df2c-4a8f-8d08-f28a0093b4c9', (SELECT id FROM subjects WHERE name ILIKE '%Operating Systems%' LIMIT 1), 2019, 1, 'MCQ', 'Consider three concurrent processes P1, P2 and P3 as shown below, which
access a shared variable D that has been initialized to 100.
The processes are executed on a uniprocessor system running a time -shared
operating system. If the minimum and maximum possible values of D after the
three processes have completed execution are X and Y respectively, t hen the', '{"C": "Only P1 and P3 will be in a deadlock.", "D": "All three processes will be in deadlock   [Marks: 2][GATE:  2009]"}', '"A"', 'Detailed solution pending.'),
  ('1c25dae7-a78e-465f-a4bd-05f27e2471c5', (SELECT id FROM subjects WHERE name ILIKE '%Operating Systems%' LIMIT 1), 2010, 2, 'MCQ', 'A system has n resources R 0,…,Rn-1,and k processes P 0,…, Pk-1.The
implementation of the resource request logic of each process Pi is as follows:
if (i % 2 == 0) {
if (i < n) request R i
if (i+2 < n) request R i+2
}
else {
if (i < n) request R n-i
if (i+2 < n) request R n-i-2
}
In which one of the following situations is a deadlock possible?', '{"A": "n=40, k=26     (b) n=21, k=12", "C": "n=20, k=10     (d) n=41, k=19"}', '"A"', 'Detailed solution pending.'),
  ('90367e44-e1fd-45a7-96d4-ccd2b9923bef', (SELECT id FROM subjects WHERE name ILIKE '%Operating Systems%' LIMIT 1), 2014, 2, 'MCQ', 'An operating system uses the Banker’s algorithm for deadlock avoidance when
managing the allocation of three resource  types X, Y, and Z to three processes
P0, P1, and P2. The table given below presents the current system state. Here,
the Allocation matrix shows the current number of resources of each type
allocated to each process and the Max matrix shows the maximum num ber of
resources of each type required by each process during its execution.
Allocation Max
X Y Z X Y Z
P0 0 0 1 8 4 3
P1 3 2 0 6 2 0
P2 2 1 1 3 3 3
There are 3 units of type X, 2 units of type Y and 2 units of type Z still available.
The system is currently in a safe state. Consider the following independent
requests for additional resources in the current state:
REQ1: P0 requests 0 units of X, 0 units of Y and 2 units of Z
REQ2: P1 requests 2 units of X, 0 units of Y and 0 units of Z
Which one of the following is TRUE?', '{"A": "Only REQ1 can be permitted.", "B": "Only REQ2 can be permitted.", "C": "Both REQ1 and REQ2 can be permitted.", "D": "Neither REQ1 nor REQ2 can be permitted"}', '"A"', 'Detailed solution pending.'),
  ('8a872df3-cf9b-4994-81e5-095bf0d31888', (SELECT id FROM subjects WHERE name ILIKE '%Operating Systems%' LIMIT 1), 2014, 2, 'MCQ', 'A system contains three programs and each requires th ree tape units for its
operation. The minimum number of tape units which the system must have
such that deadlocks never arise is_____________', '{"A": "6    (b) 7    (c) 8    (d) 9"}', '"A"', 'Detailed solution pending.'),
  ('cc7f9b97-855f-4460-b794-d953af1351cd', (SELECT id FROM subjects WHERE name ILIKE '%Operating Systems%' LIMIT 1), 2015, 1, 'MCQ', 'A system has 6 identical resources and N processes competing for them. Each
N could lead to a deadlock?', '{"A": "1    (b) 2    (c) 3   (d) 6"}', '"A"', 'Detailed solution pending.'),
  ('44c6548d-1633-407f-88a5-568dbd40c525', (SELECT id FROM subjects WHERE name ILIKE '%Operating Systems%' LIMIT 1), 2015, 2, 'MCQ', 'Consider the following policies for preventing deadlock in a system with
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
(a)Any one of I and III but not II or IV
(b)Any one of I, III, and IV but not II
(c)Any one of II and III but not I or IV
(d)Any one of I, II, III, and IV', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('886ffac5-af8d-41c1-b35b-def61d6e1344', (SELECT id FROM subjects WHERE name ILIKE '%Operating Systems%' LIMIT 1), 2017, 2, 'MCQ', 'A multithreaded program P executes with x number of threads and uses y
number of locks for ensuring mutual exclusion while operating on shared
holds a lock l, then it cannot re -acquire lock l without releasing it. If a thread
is unable to acquire a lock, it blocks until the lock becomes available. The
minimum value of x and the minimum value of y together for which execution
of P can result in a deadlock are:', '{"A": "x=1,y=2", "B": "x=2,y=1", "C": "x=2,y=2", "D": "x=1,y=1"}', '"A"', 'Detailed solution pending.'),
  ('fc8fcc78-0a49-4435-8e32-c5ea11699811', (SELECT id FROM subjects WHERE name ILIKE '%Operating Systems%' LIMIT 1), 2017, 2, 'MCQ', 'A system shares 9 tape drives. The current allocation and maximum
requirement of tape drives for 3 processes are shown below:
Which of the following best describes the current state of the system?', '{"A": "Safe, Deadlocked", "B": "Safe, Not Deadlocked", "C": "Not Safe, Deadlocked", "D": "Not Safe, Not Deadlocked"}', '"A"', 'Detailed solution pending.'),
  ('17fdb41f-a07d-44a5-85f8-678f88b9895e', (SELECT id FROM subjects WHERE name ILIKE '%Operating Systems%' LIMIT 1), 2018, 2, 'MCQ', 'In a system, there are three types of resources: E, F and G. Four processes P0,
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
G were available', '{"A": "The system is in safe state", "B": "The system is not in  safe state, but would be safe if one more instance of", "C": "The system is not in  safe state, but would be safe if one more instance of", "D": "The system is not in  safe state, but would be safe if one more instance of"}', '"A"', 'Detailed solution pending.'),
  ('bd14bd99-8969-4716-9fb4-979fb18e1b03', (SELECT id FROM subjects WHERE name ILIKE '%Operating Systems%' LIMIT 1), 2018, 1, 'MCQ', 'Consider a system with 3 processes that share 4 instances of the same resource
type. Each process can request a maximum of K instances. Resource instances
can be requested and released only one at a time. The largest value of K th at', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('1d8d52e7-6160-42f3-b2e1-107539ef7048', (SELECT id FROM subjects WHERE name ILIKE '%Operating Systems%' LIMIT 1), 2019, 2, 'MCQ', 'Consider the following snapshot of a system running n concurrent processes.
instances of R are currently in use. Further, for all i, process i can place a
request for at most Yi additional instances of R while holding the Xt instances
it already has. Of the n processes, there are exactly two processes p and q
such that Yp = Yq = 0. Which one of the following con ditions guarantees that
no other process apart from p and q can complete execution?
(a)Min (Xp, Xq) ≥ Min {Yk | 1 ≤ k ≤ n, k ≠ p, k ≠ q}
(b)Xp + Xq< Max {Yk | 1 ≤ k ≤ n, k ≠ p, k ≠ q}
(c)Min (Xp, Xq) ≤ Max {Yk | 1 ≤ k ≤ n, k ≠ p, k ≠ q}
(d)Xp + Xq< Min {Yk | 1 ≤ k ≤ n, k ≠ p, k ≠ q}', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('cd869989-4984-4588-8e16-2ec8826e9a9e', (SELECT id FROM subjects WHERE name ILIKE '%Operating Systems%' LIMIT 1), 2009, 1, 'MCQ', 'In which one of the following page replacement policies, Belady’s anomaly may
occur?
MRU', '{"A": "FIFO    (b) Optimal   (c) LRU    (d)"}', '"A"', 'Detailed solution pending.'),
  ('b83d71a1-641f-4aef-8a5b-2d7a401242f5', (SELECT id FROM subjects WHERE name ILIKE '%Operating Systems%' LIMIT 1), 2020, 1, 'MCQ', 'The essential content(s) in each entry of a page table is / are.', '{"A": "Virtual page number", "B": "Page frame number", "C": "Both virtual page number and page frame number", "D": "Access right information     [Marks: 1][GATE: 2009]"}', '"A"', 'Detailed solution pending.'),
  ('b9b2d765-9362-4953-92e6-59a2617ce231', (SELECT id FROM subjects WHERE name ILIKE '%Operating Systems%' LIMIT 1), 2009, 1, 'MCQ', 'A multilevel page table is preferred in comparison to a single level page table
for translating virtual address to physical address because
address space of a process.
algorithms', '{"A": "It reduces the memory access time to read or write a memory location.", "B": "It helps to reduce the size of page table needed to implement the virtual", "C": "It is required by the translation look aside buffer.", "D": "It helps to reduce the number of page faults in page replacement"}', '"A"', 'Detailed solution pending.'),
  ('6cb9a709-f50c-4d6a-8fe1-3f5376e87f28', (SELECT id FROM subjects WHERE name ILIKE '%Algorithms%' LIMIT 1), 2020, 1, 'MCQ', 'A system uses FIFO policy for page replacement. It has 4 page frames with no
pages loaded to begin with. The system first accesses 100 distinct pages in
some order and then access the same 100 pages but now in the reverse order.
How many page faults will occur?________', '{"A": "196", "B": "192", "C": "197", "D": "195        [Marks: 1][GATE:2010]"}', '"A"', 'Detailed solution pending.'),
  ('a6746d3b-c379-4ed6-9798-45ddc9d8c66d', (SELECT id FROM subjects WHERE name ILIKE '%Algorithms%' LIMIT 1), 2020, 1, 'MCQ', 'Let the page fault service ti me be 10ms in a computer with average memory
access time being 20ns. If one page fault is generated for every 10^6 memory
accesses, what is the effective access time for the memory?', '{"A": "21ns", "B": "30ns", "C": "23ns", "D": "35ns        [Marks: 1][GATE: 2011]"}', '"A"', 'Detailed solution pending.'),
  ('5c5b3724-21bc-4d9e-a454-861f0736e3c0', (SELECT id FROM subjects WHERE name ILIKE '%Algorithms%' LIMIT 1), 2012, 2, 'MCQ', 'Consider the virtual page reference string
1, 2, 3, 2, 4, 1, 3, 2, 4, 1
On a demand paged virtual memory system running on a computer system that
main memory size of 3 pages frames which are initially empty. Let LRU, FIFO
and OPTIMAL denote the number of page faults under the corresponding page
replacements policy. Then', '{"A": "OPTIMAL < LRU < FIFO    (b) OPTIMAL < FIFO < LRU", "C": "OPTIMAL = LRU     (d) OPTIMAL = FIFO"}', '"A"', 'Detailed solution pending.'),
  ('fc7966a0-1c61-46bd-bd93-ec0ea4dcff8e', (SELECT id FROM subjects WHERE name ILIKE '%Algorithms%' LIMIT 1), 2013, 2, 'MCQ', 'A computer uses 46-bit virtual address, 32-bit physical address, and a three-
level paged page table organization. The page table base register stores the base
address of the first-level table (T1), which occupies exactly one page. Each entry
of T1 stores the base address of a page of the second-level table (T2). Each entry
of T2 stores the base address of a page of the third-level table (T3). Each entry
of T3 stores a page table entry (PTE). The PTE is 32 bits in size. The processor
used in the computer has a 1 MB 16 -way set associative virtually indexed
page in KB in this computer?', '{"A": "2    (b) 4    (c) 8    (d) 16"}', '"A"', 'Detailed solution pending.'),
  ('39e9746c-1720-4be3-a187-02fbfc1dc281', (SELECT id FROM subjects WHERE name ILIKE '%Algorithms%' LIMIT 1), 2013, 2, 'MCQ', 'A computer uses 46-bit virtual address, 32-bit physical address, and a three -
level paged page table organization. The page table base register stores the base
address of the first-level table (T1), which occupies exactly one page. Each entry
of T1 stores the base address of a page of the second-level table (T2). Each entry
of T2 stores the base address of a page of the third-level table (T3). Each entry
of T3 stores a page table entry (PTE). The PTE is 32 bits in size. The processor
used in the computer has a 1 MB 16 -way set associative virtually indexed
data as above question. What is the minimum number of page colors needed to
guarantee that no two synonyms map to different sets in the processor cache
of this computer?', '{"A": "2    (b) 4    (c) 8    (d) 16"}', '"A"', 'Detailed solution pending.'),
  ('28322c57-8c84-4e02-ab55-57a25a5a50fb', (SELECT id FROM subjects WHERE name ILIKE '%Algorithms%' LIMIT 1), 2014, 2, 'MCQ', 'Assume that there are 3 page frames which are initially empty. If the page
reference string is 1, 2, 3, 4, 2, 1, 5, 3, 2, 4, 6, the number of page faults using
the optimal replacement policy is__________.', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('46713847-18f9-444f-94e3-a34b56949a66', (SELECT id FROM subjects WHERE name ILIKE '%Algorithms%' LIMIT 1), 2014, 2, 'MCQ', 'A computer has twe nty physical page frames which contain pages numbered
101 through 120. Now a program accesses the pages numbered 1, 2, …, 100
in that order, and repeats the access sequence THRICE. Which one of the
following page replacement policies experiences the same number of page faults
as the optimal page replacement policy for this program?', '{"A": "Least-recently-used", "B": "First-in-first-out", "C": "Last-in-first-out", "D": "Most-recently-used"}', '"A"', 'Detailed solution pending.'),
  ('92c2da58-d749-4b26-9cf9-eea16ccea2ac', (SELECT id FROM subjects WHERE name ILIKE '%Algorithms%' LIMIT 1), 2014, 2, 'MCQ', 'A system uses 3 page frames for storing process pages in main memory. It uses
the Least Recently Used (LRU) page replacement policy. Assume that all the
page frames are initially empty. What is the total number of page faults that
will occur while processing the page reference string given below?
4, 7, 6, 1, 7, 6, 1, 2, 7, 2', '{"A": "4    (b) 5    (c) 6    (d) 7"}', '"A"', 'Detailed solution pending.'),
  ('87088a38-16a6-4cde-b5b1-56c71b1b7e6a', (SELECT id FROM subjects WHERE name ILIKE '%Algorithms%' LIMIT 1), 2014, 2, 'MCQ', 'Consider a paging hardware with a TLB. Assume that the entire page table and
all the pages are in the physical memory. It takes 10 milliseconds to search the
TLB and 80 milliseconds to access the physical memory. If the TLB hit ratio is
0.6, the effective memory access time (in milliseconds) is _________.', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('8c26c061-05be-4b8c-b3ce-7b853ba58022', (SELECT id FROM subjects WHERE name ILIKE '%Algorithms%' LIMIT 1), 2015, 1, 'MCQ', 'Consider a system with byte -addressable memory, 32 bit logical addresses, 4
kilobyte page size and page table entries of 4 bytes each. The size of the page
table in the system in megabytes is_____________', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('a49d8b06-33bd-4136-8374-319063a1795d', (SELECT id FROM subjects WHERE name ILIKE '%Algorithms%' LIMIT 1), 2020, 1, 'MCQ', 'Consider a main memory with five page frames and the following sequence of
page references: 3,  8, 2, 3, 9, 1, 6, 3, 8, 9, 3, 6, 2, 1, 3. Which one of the
following is true with respect to page replacement policies First -In-First Out
(FIFO) and Least Recently Used (LRU)?', '{"A": "Both incur the same number of page faults", "B": "FIFO incurs 2 more page faults than LRU", "C": "LRU incurs 2 more page faults than FIFO", "D": "FIFO incurs 1 more page faults than LRU[Marks: 2][GATE:  2015][SET-1]"}', '"A"', 'Detailed solution pending.'),
  ('18360e00-5c40-43b8-8dd7-78cace29c1c5', (SELECT id FROM subjects WHERE name ILIKE '%Algorithms%' LIMIT 1), 2015, 1, 'MCQ', 'A computer system implements a 40 bit virtual address, page size of 8 kilobytes,
and a 128-entry translation look-aside buffer (TLB) organized into 32 sets each
having four ways. Assume that the TLB tag does not store any process id. The
minimum length of the TLB tag in bits is _________', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('f291515b-75be-4fff-a0ec-9e5abd50176c', (SELECT id FROM subjects WHERE name ILIKE '%Algorithms%' LIMIT 1), 2015, 2, 'MCQ', 'Consider six memory partitions of size 200 KB, 400 KB,  600 KB, 500 KB, 300
KB, and 250 KB, where KB refers to kilobyte. These partitions need to be
allotted to four processes of sizes 357 KB, 210 KB, 468 KB and 491 KB in that
order. If the best fit algorithm is used, which partitions are NOT allotted to any', '{"A": "200 KB and 300 KB", "B": "200 KB and 250 KB", "C": "250 KB and 300 KB", "D": "300 KB and 400 KB"}', '"A"', 'Detailed solution pending.'),
  ('b06954e9-2180-43a6-aadd-363197e51f6a', (SELECT id FROM subjects WHERE name ILIKE '%Algorithms%' LIMIT 1), 2015, 2, 'MCQ', 'A Computer system implements 8 kilobyte pages and a 32-bit physical address
space. Each page table entry contains a valid bit, a  dirty bit three permission
bits, and the translation. If the maximum size of the page table of a process is
24 megabytes, the length of the virtual address supported by the system is
_______________bits
2]', '{"A": "36    (b) 32    (c) 28    (d) 40"}', '"A"', 'Detailed solution pending.'),
  ('af018095-c87b-46ae-a172-ff735df097ba', (SELECT id FROM subjects WHERE name ILIKE '%Algorithms%' LIMIT 1), 2016, 2, 'MCQ', 'Consider a computer system with 40 -bit virtual addressing and page size of
sixteen kilobytes. If the computer system has a one-level page table per process
and each page table entry requires 48 bits, then the size of the per-process page
table is __________________megabytes.', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('fd14a0b5-d149-4103-bfc8-f73441babab0', (SELECT id FROM subjects WHERE name ILIKE '%Algorithms%' LIMIT 1), 2016, 2, 'MCQ', 'Consider a computer system with ten physical page frames. The system is
provided with an access sequence (a1, a2, ..., a20, a1, a2, ..., a20), where each
ai is a distinct virtual page number. The difference in the number of page faults
between the last -in-first-out page replacement policy and the optimal page', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('de2b29a1-4b6a-4ff0-aa67-6fb71a99877e', (SELECT id FROM subjects WHERE name ILIKE '%Algorithms%' LIMIT 1), 2016, 1, 'MCQ', 'In which one of the following page replacement algorithms it is possible for the
page fault rate to increase even when the number of allocated frames increases?', '{"A": "LRU (Least Recently Used)", "B": "OPT (Optimal Page Replacement)", "C": "MRU (Most Recently Used)", "D": "FIFO (First In First Out)"}', '"A"', 'Detailed solution pending.'),
  ('ffd972e2-d382-45da-81e2-423a4f541eb6', (SELECT id FROM subjects WHERE name ILIKE '%Algorithms%' LIMIT 1), 2017, 2, 'MCQ', 'Recall that Belady''s anomaly is that the page -fault rate may  increase as the
number of allocated frames increases. Now, consider the following statements:
S1: Random page replacement algorithm (where a page chosen at random is
replaced) suffers from Belady’s anomaly.
S2: LRU page replacement algorithm suffers from Belady’s anomaly.', '{"A": "S1 is true, S2 is true", "B": "S1 is true, S2 is false", "C": "S1 is false, S2 is true", "D": "S1 is false, S2 is false"}', '"A"', 'Detailed solution pending.'),
  ('3a5484a5-1a95-4d3f-b705-6b5522cb76b7', (SELECT id FROM subjects WHERE name ILIKE '%Algorithms%' LIMIT 1), 2018, 1, 'MCQ', 'Consider a process executing on an operating system that uses demand paging.
The average time for a memory access in the system is  M units if the
corresponding memory page is available in memory, and D units if the memory
access causes a page fault. It has been experimentally measured that the
average time taken for a memory access in the process is  X units. Which one
of the following is the correct expression for the page fault rate experienced by
the process?', '{"A": "(D \u2013 M) / (X \u2013 M)    (b) (X \u2013 M) / (D \u2013 M)", "C": "(D \u2013 X) / (D \u2013 M)    (d) (X \u2013 M) / (D \u2013 X)"}', '"A"', 'Detailed solution pending.'),
  ('0a4563d4-a62b-4b1b-91d3-7889dfa71545', (SELECT id FROM subjects WHERE name ILIKE '%Algorithms%' LIMIT 1), 2019, 2, 'MCQ', 'Assume that in a certain computer, the virtual addresses are 64 bits long and
the physical addresses are 48 bits long. The memory is word addressable. The
page size is 8KB and the word size is 4 bytes. The Translation Look -aside
Buffer (TLB) in the address translation path has 128 valid entries. At most
how many distinct virtual addresses can be translated without any TLB miss?
(a)16 x 210  (b) 256 x 210  (c) 4 x 220   (d) 8 x 220', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('eb3ba3e9-a139-47c3-ac3b-a1d0cd3c1c50', (SELECT id FROM subjects WHERE name ILIKE '%Algorithms%' LIMIT 1), 2020, 1, 'MCQ', 'Consider allocation of memory to a new process. Assume that none of the
existing holes in the memory will exactly fit the process’s memory requirement.
Hence, a new hole of smaller size will be created if allocation is made in any of
the existing holes. Which one of the following statements is TRUE?
fit.', '{"A": "The hole created by worst fit is always larger than the hole created by first", "B": "The hole created by best fit is never larger than the hole created by first fit.", "C": "The hole created by first fit is always larger than the hole created by next fit.", "D": "The hole created by next fit is never larger than the hole created by best fit."}', '"A"', 'Detailed solution pending.'),
  ('52242df5-9dee-4705-a943-964c450a374b', (SELECT id FROM subjects WHERE name ILIKE '%Algorithms%' LIMIT 1), 2020, 2, 'MCQ', 'Consider a paging system that uses a 1 -level page table residing in main
100 ns and TLB lookup takes 20 ns. Each page transfer to/from the disk takes
5000 ns. Assume that the TLB hit ratio is 95%, page fault rate is 10%. Assume
that for 20% of the total page faults, a dirty page has to be written back to disk
before the required page is read in from disk. TLB update time is negligible. The
average memory access time in ns (round off to 1 decimal places) is _________.', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('e05ea080-590b-4fc4-b278-6e4c9e1cd9e3', (SELECT id FROM subjects WHERE name ILIKE '%Algorithms%' LIMIT 1), 2009, 2, 'MCQ', 'Consider a disk system with 100 cylinders. The requests to access the cylinders
occur in following sequence: 4, 34, 10, 7, 19, 73, 2, 15, 6, 20 Assuming that
the head is currently at cylinder 50, what is the time taken to satisfy all
requests if it takes 1ms to move from one cylinder to adjacent one and shortest
seek time first policy is used?', '{"A": "95 ms   (b)119 ms    (c)233 ms   (d) 276 ms"}', '"A"', 'Detailed solution pending.'),
  ('9459efbb-a176-443a-94dc-870eb2c4d484', (SELECT id FROM subjects WHERE name ILIKE '%Algorithms%' LIMIT 1), 2012, 2, 'MCQ', 'A file system with 300 Gbytes disk uses a file descriptor with 8 direct block
addresses, 1 indirect block address and 1 doubly indirect block address. The
size of each disk block is 128 Bytes and the size of each disk block address is
8 Bytes. The maximum possible file size in this file system is', '{"A": "3 Kbytes      (b) 35 Kbytes", "C": "280 Bytes     (d) Dependent on the size of the disk"}', '"A"', 'Detailed solution pending.'),
  ('dcb8b27f-071a-45e3-884b-f7c0f46c23b3', (SELECT id FROM subjects WHERE name ILIKE '%Algorithms%' LIMIT 1), 2014, 1, 'MCQ', 'Suppose a disk has 201 cylinders, numbered from 0 to 200. At some time the
disk arm is at cylinder 100, and there is a queue of disk access requests for
cylinders 30, 85, 90, 100, 105, 110, 135 and 145. If Shortest -Seek Time First
(SSTF) is being used for scheduling the disk access, the request for cylinder 90
is serviced after servicing ____________ number of requests.', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('9031430f-2e68-4fd9-84a4-c3d15242e990', (SELECT id FROM subjects WHERE name ILIKE '%Algorithms%' LIMIT 1), 2014, 1, 'MCQ', 'A FAT (file allocation table) based fi le system is being used and the total
overhead of each entry in the FAT is 4 bytes in size. Given a 100×106 bytes disk
on which the file system is stored and data block size is  103 bytes, the
maximum size of a file that can be stored on this disk in units of 106 bytes is
_________.', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('255148e1-5769-4d70-8b6b-37a80bd0a8f7', (SELECT id FROM subjects WHERE name ILIKE '%Algorithms%' LIMIT 1), 2015, 2, 'MCQ', 'Suppose the following disk request sequence (track numbers) for a disk with
100 tracks is given: 45, 20, 90, 10, 50, 60, 80, 25, 70. Assume that the initial
position of the R/W head is on track 50. The additional distance that will be
traversed by the R/W head when the Shortest Seek Time First (SSTF) algorithm
is used compared to the SCAN (Elevator) algorithm (assuming that SCAN
algorithm moves towards 100 when it starts execution) is _________ tracks', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('b94e6ed8-61d8-4505-a719-0e40d09d4442', (SELECT id FROM subjects WHERE name ILIKE '%Algorithms%' LIMIT 1), 2016, 2, 'MCQ', 'Consider a disk queue with requests for I/O to blocks on cylinders 47, 38, 121,
191, 87, 11, 92, 10. The C -LOOK scheduling algorithm is used. The head is
initially at cylinder number 63, moving towards larger cylinder numbers on its
servicing pass. The cylinders are numbered from 0 to 199. The total head
movement (in number of cylinders) incurred while servicing these requests
is:____________', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('63241aee-ee8b-4d87-bc27-924a4d85da4d', (SELECT id FROM subjects WHERE name ILIKE '%Algorithms%' LIMIT 1), 2020, 1, 'MCQ', 'In a file allocation system, which of the following allocation scheme(s) can be
used if no external fragmentation is allowed?
I. Contiguous    II. Linked       III. Indexed
2]', '{"A": "I and III only", "B": "II only", "C": "III only", "D": "II and III only      [Marks: 1][GATE: 2017][SET-"}', '"A"', 'Detailed solution pending.'),
  ('68b130b0-d688-4de6-9e3f-9846352623b6', (SELECT id FROM subjects WHERE name ILIKE '%Algorithms%' LIMIT 1), 2018, 2, 'MCQ', 'Consider a storage disk with 4 platters (numbered as 0, 1, 2 and 3), 200
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
requests using the Shortest Seek Time First disk scheduling algorithm is ______', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('ccbe1e98-2290-435e-a22d-4c591b936c9f', (SELECT id FROM subjects WHERE name ILIKE '%Algorithms%' LIMIT 1), 2019, 2, 'MCQ', 'The index node (Inode) of a Unix -like file system has 12 direct, one single -
indirect and one double -indirect pointer. The disk block size is 4 kB and the
disk block addresses 32-bits long. The maximum possible file size is (rounded
off to 1 decimal place) __________ GB.', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('bb895064-61d2-451d-ac1d-90e83db9f003', (SELECT id FROM subjects WHERE name ILIKE '%Algorithms%' LIMIT 1), 2020, 2, 'MCQ', 'Consider the following five disk access requests of the form (request id, cylinder
number) that are present in the disk scheduler queue at a given time.
(P, 155), (Q, 85), (R, 110), (S, 30), (T, 115)
Assume the head is positioned at cylinder 100. The scheduler follows Shortest
Seek Time First scheduling to service the requests. Which one of the following
statements is FALSE?
Operating System', '{"A": "The head reverses its direction of movement between servicing of Q and P.", "B": "T is serviced before P.", "C": "R is serviced before P.", "D": "Q is serviced after S, but before T."}', '"A"', 'Detailed solution pending.'),
  ('63d5de28-c630-47ee-a2ad-72d992267592', (SELECT id FROM subjects WHERE name ILIKE '%Computer Networks%' LIMIT 1), 2009, 2, 'MCQ', 'In the following pairs of OSI protocol layer/sub -layer and its functionality, the
INCORRECT pair is
Answer: (b)
DATA LINK LAYER ERROR CONTROL
Q1.
Let G(x) be the generator polynomial used for CRC checking. What is the condition
that should be satisfied by G(x) to detect odd number of bits in error?', '{"A": "G(x) contains more than two terms", "B": "G(x) does not divide 1+xk, for any k not exceeding the frame length", "C": "1+x is a factor of G(x)", "D": "G(x) has an odd number of terms"}', '"A"', 'Detailed solution pending.'),
  ('bd2d7e06-0328-4a72-b4a0-c4d2baeba3e3', (SELECT id FROM subjects WHERE name ILIKE '%Computer Networks%' LIMIT 1), 2014, 2, 'MCQ', 'A bit-stuffing based framing protocol uses an 8-bit delimiter pattern of 01111110.
If the output bit-string after stuffing is 01111100101, then the input bit-string is', '{"A": "0111110100                               (b) 0111110101", "C": "0111111101    (d) 0111111111"}', '"A"', 'Detailed solution pending.'),
  ('a0cfb33c-67b9-4970-973d-b744dfec68fb', (SELECT id FROM subjects WHERE name ILIKE '%Computer Networks%' LIMIT 1), 2017, 1, 'MCQ', 'A computer network uses polynomials over GF (2) for error checking with 8 bits as
information bits and uses x 3 + x + 1 as the generator polynomial to generate the
check bits. In this network, the message 01011011 is transmitted as
(a)01011011010
(b)01011011011
(c)01011011101', '{"D": "01011011100"}', '"A"', 'Detailed solution pending.'),
  ('908c2347-e7de-4857-97cc-dbcc76773e49', (SELECT id FROM subjects WHERE name ILIKE '%Computer Networks%' LIMIT 1), 2017, 2, 'MCQ', 'Consider a binary code that consist only four valid code words as given below.
00000, 01011, 10101, 11110
Let minimum Hamming distance of code be p and maximum number of erroneous
bits that can be corrected by the code be q. The value of p and q are:
DATA LINK LAYER FLOW CONTROL', '{"A": "p = 3 and q = 1", "B": "p = 3 and q = 2", "C": "p = 4 and q = 1", "D": "p = 4 and q = 2"}', '"A"', 'Detailed solution pending.'),
  ('232e7495-8661-4032-b410-be49c8b83b37', (SELECT id FROM subjects WHERE name ILIKE '%Computer Networks%' LIMIT 1), 2010, 2, 'MCQ', 'Frames of 1000 bits are sent over a 10 6 bps duplex link between two hosts. The
propagation time is 25ms. Frames are to be transmitted into this link to maximally
pack them in transit (within the link). What is the minimum number of bits (l) that
will be required to represent the sequence number s distinctly? Assume that no
time gap needs to be given between transmission of two frames', '{"A": "I = 2    (b) I = 3    (c) I = 4   (d) I = 5"}', '"A"', 'Detailed solution pending.'),
  ('0a8d19e5-c19b-4496-84e6-c12465aae49c', (SELECT id FROM subjects WHERE name ILIKE '%Computer Networks%' LIMIT 1), 2010, 2, 'MCQ', 'Frames of 1000 bits are sent over a 10 6 bps duplex link between two hosts. The
propagation time is 25ms. Frames are to be transmitted into this link to maximally
pack them in transit (within the link). Suppose that the sliding window protocol is
used with the sender window size of 2 l, where l is the number of bits identified in
the earlier part and acknowledgements are always piggy backed. After sending 2 l
frames, what is the minimum time the sender will have to wait before starting
transmission of the next frame? (Identify the closest choice ig noring the frame', '{"A": "16ms    (b) 18ms    (c) 20ms    (d) 22ms"}', '"A"', 'Detailed solution pending.'),
  ('d082ba4e-cc0f-4f52-95b3-6635be7598ac', (SELECT id FROM subjects WHERE name ILIKE '%Computer Networks%' LIMIT 1), 2014, 2, 'MCQ', 'Consider a selective repeat sliding window protocol that uses a frame size of 1 KB
to send data on a 1.5 Mbps link with a one -way latency of 50 msec. To achieve a
sequence number field is ________.', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('e333dd28-877c-4360-a18d-fcd2cce79335', (SELECT id FROM subjects WHERE name ILIKE '%Computer Networks%' LIMIT 1), 2015, 2, 'MCQ', 'Suppose that the stop -and-wait protocol is used on a link with a bit rate of 64
kilobits per second and 20 milliseconds propagation delay. Assume that the
transmission time for the acknowledgment and the processing time at nodes are
negligible. Then the minimum frame size in bytes to achieve a link utilization of at', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('f841bbff-92a1-4767-99c4-d4b16404d928', (SELECT id FROM subjects WHERE name ILIKE '%Computer Networks%' LIMIT 1), 2015, 1, 'MCQ', 'A link has a transmission speed of 106 bits/sec. It uses data packets of size 1000
bytes each. Assume that the acknowledgment has negligible transmission delay,
and that its propagation delay is the same as the data propagation  delay. Also
assume that the processing delays at nodes are negligible. The efficiency of the
stop-and-wait protocol in this setup is exactly 25%. The value of the one -way', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('dc97baa1-9e98-48e8-ae35-29fe93345775', (SELECT id FROM subjects WHERE name ILIKE '%Computer Networks%' LIMIT 1), 2015, 2, 'MCQ', 'Consider a network connecting two systems located 8000 kilometers apart. The
bandwidth of the network is 500 × 10^6 bits per second. The propagation speed of
the media is 4 × 10^6 meters per second. It is needed to design a Go-Back-N sliding
window protocol  for this network. The average packet size is 10^7 bits. The
are negligible. Then, the minimum size in bits of the sequence number field has to
be ___________.', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('808ead97-5bd3-4b92-9a3a-2fc1b2473353', (SELECT id FROM subjects WHERE name ILIKE '%Computer Networks%' LIMIT 1), 2016, 2, 'MCQ', 'A sender uses the Stop-and-Wait ARQ protocol for reliable transmission of frames.
Frames are of size 1000 bytes and the transmission rate at the sender is 80 Kbps
(1Kbps = 1000 bits/second). Size of an acknowledgement is 100 bytes and the
transmission rate at the receiver is 8 Kbps. The one-way propagation delay is 100
milliseconds. Assuming no frame is lost, the sender throughput is __________
bytes/second.', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('0fb45f84-daa1-4460-9dd3-89936fe4d775', (SELECT id FROM subjects WHERE name ILIKE '%Computer Networks%' LIMIT 1), 2016, 2, 'MCQ', 'Consider a 128×10 3 bits/second satellite comm unication link with one -way
propagation delay of 150 milliseconds. Selective retransmission (repeat) protocol
is used on this link to send data with a frame size of 1 kilobyte. Neglect the
transmission time of acknowledgment. The minimum number of bits req uired for
the sequence number field to achieve 100% utilization is ___________', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('a19ca610-565b-49ce-b843-18f2d011a935', (SELECT id FROM subjects WHERE name ILIKE '%Computer Networks%' LIMIT 1), 2017, 2, 'MCQ', 'The values of parameters for the Stop-and-Wait ARQ protocol are as given below.
Bit rate of the transmission channel = 1 Mbps
Propagation delay from sender to receiver = 0.75 ms
Time to process a frame = 0.25 ms
Number of bytes in the information frame = 1980
Number of bytes in the acknowledge frame = 20
Number of overhead bytes in the information frame = 20
Assume that there are no transmission errors. Then the transmission efficiency
(expressed in percentage) of the Stop -and – Wait ARQ protocol for the above
parameters is _________ (correct to 2 decimal place).', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('3ae7e057-6fdd-47d6-8e44-41fafe55aa4e', (SELECT id FROM subjects WHERE name ILIKE '%Computer Networks%' LIMIT 1), 2017, 2, 'MCQ', 'Consider two hosts X and Y, connected by a single direct link of rate 10^6 bits/sec.
The distance between the two hosts is 10,000 km and the propagation speed along
the link is 2 x 10^8 m/s. Hosts X send a file of 50,000 bytes as one large message
to hosts Y continuously. Let the transmission and propagat ion delays be p
milliseconds and q milliseconds, respectively. Then the vales of p and q are:
DATA LINK LAYER MEDIUM ACCESS  CONTROL', '{"A": "p = 50 and q = 100    (b) p = 50 and q = 400", "C": "p = 100 and q = 50    (d) p = 400 and q = 50"}', '"A"', 'Detailed solution pending.'),
  ('c076e584-a7ad-435c-adb1-04b3850137fc', (SELECT id FROM subjects WHERE name ILIKE '%Computer Networks%' LIMIT 1), 2013, 2, 'MCQ', 'Determine the maximum length of the cable (in km) for transmitting data at a rate
of 500 Mbps in an Ethernet LAN with frames of size 10,000 bits. Assume the signal
speed in the cable to be 2,00,000 Km/s.', '{"A": "1    (b) 2   (c) 2.5   (d) 5"}', '"A"', 'Detailed solution pending.'),
  ('d2be588e-9691-4736-961f-1cab02d0bcf1', (SELECT id FROM subjects WHERE name ILIKE '%Computer Networks%' LIMIT 1), 2015, 2, 'MCQ', 'Consider a LAN with four nodes S1, S2, S3 and S4. Time is divided into fixed-size
slots, and a node can begin its transmission only at the beginning of a slot. A
collision is said to have occurred if more than one node transmit in the same slot.
The probabilities of generation of a frame in a time slot by S1, S2, S3 and S4 are
0.1, 0.2, 0.3 and 0.4, respectively. The probability of sending a frame in the first
slot without any collision by any of these four stations is _________.', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('25a28f4f-9f2c-4af3-ad63-d43aad29eb0c', (SELECT id FROM subjects WHERE name ILIKE '%Computer Networks%' LIMIT 1), 2015, 1, 'MCQ', 'Consider a CSMA/CD network that transmits data at a rate of 100 Mbps (10^8
bits per second) over a 1 km (kilometer) cable with no repeaters. If the minimum
frame size required for this network is 1250 bytes, what is the signal s peed
(km/sec) in the cable?', '{"A": "8000   (b) 10000   (c) 16000   (d) 20000"}', '"A"', 'Detailed solution pending.'),
  ('4d16bc5f-2dc7-4728-a43c-4dda5141713b', (SELECT id FROM subjects WHERE name ILIKE '%Computer Networks%' LIMIT 1), 2015, 2, 'MCQ', 'Two hosts are connected via a packet switch with 10^7 bits per second links. Each
packet 35 microseconds after it receives the same. If 10000 bits of data are to be
transmitted between the two hosts using a packet size of 5000 bits, the time
elapsed between the transmission of the first bit of data and the reception of the
last bit of the data in microseconds is _________.', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('72be3884-4793-4cac-b6f8-ec6f3bc22f33', (SELECT id FROM subjects WHERE name ILIKE '%Computer Networks%' LIMIT 1), 2016, 1, 'MCQ', 'In an Ethernet local area network, which one of the following statements is TRUE?
the minimum frame size.', '{"A": "A station stops to sense the channel once it starts transmitting a frame.", "B": "The purpose of the jamming signal is to pad the frames that are smaller than", "C": "A station continues to transmit the packet even after the collision is detected.", "D": "The exponential backoff mechanism reduces the probability of collision  on"}', '"A"', 'Detailed solution pending.'),
  ('df738efa-75e8-4081-9e69-f4af2f162a61', (SELECT id FROM subjects WHERE name ILIKE '%Computer Networks%' LIMIT 1), 2016, 2, 'MCQ', 'A network has a data transmission bandwidth of 20 × 10^6 bits per second. It uses
CSMA/CD in the MAC layer. The maximum signal propagation time from one Node
to another node is 40 microseconds. The minimum size of a frame in the Network', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('482b9c08-1eb8-4b19-b1a7-26ace15568e2', (SELECT id FROM subjects WHERE name ILIKE '%Computer Networks%' LIMIT 1), 2018, 2, 'MCQ', 'Consider a simple communication system where multiple nodes are connected by
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
successfully avoid a col lision between its proposed transmission and P’s ongoing', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('de0039af-a903-4174-bca2-ba1ce9fab46d', (SELECT id FROM subjects WHERE name ILIKE '%Computer Networks%' LIMIT 1), 2019, 2, 'MCQ', 'Consider that 15 machines need to be connected in a LAN using 8 -port Ethernet
switches. Assume that these switches do not have any separate up link ports. The
minimum number of switches needed is ___________.', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('f4fe8092-9cb3-4dc3-8c5c-ceafe2631cb3', (SELECT id FROM subjects WHERE name ILIKE '%Computer Networks%' LIMIT 1), 2020, 1, 'MCQ', 'One of the header fields in an IP datagram is the Time-to-Live (TTL) field. Which of
the following statements best explains the need for this field?', '{"A": "It can be used to prioritize packets", "B": "It can be used to reduce delays", "C": "It can be used to optimize throughput", "D": "It can be used to prevent packet looping  [Marks: 1 ][GATE:  2010]"}', '"A"', 'Detailed solution pending.'),
  ('4e1e3541-87d0-4c90-bfdd-395b3b9012dc', (SELECT id FROM subjects WHERE name ILIKE '%Computer Networks%' LIMIT 1), 2020, 1, 'MCQ', 'Mark:2            GATE: 2010
Suppose computers A and B have IP addresses 10.105.1.113 and 10.105.1.91
respectively and they both use the same netmask N. Which of the values of N given
below should not be used if A and B should belong to the same network?', '{"A": "225.255.255.0    (b) 255.255.255.128", "C": "255.255.255.192    (d) 255.255.255.224"}', '"A"', 'Detailed solution pending.'),
  ('f85f62a7-3de6-41c7-a0ec-a42179602b1d', (SELECT id FROM subjects WHERE name ILIKE '%Computer Networks%' LIMIT 1), 2020, 1, 'MCQ', 'Mark: 2           GATE: 2010
Consider a network with 6 routers R1 and R6 connected with links having weights
as shown in the following diagram
All the routers use the distance vector based routing algorithm to update their
routing tables. Each starts with its routing table initialized to contain an entry for
each neighbour with the weight of the respective connecting link. After all the
routing tables stabilize, how many links in the network will never be used for
carrying any?
Data?', '{"A": "4        (b) 3", "C": "2        (d) 1"}', '"A"', 'Detailed solution pending.'),
  ('5e81d13b-4cf6-4172-8aba-df770f2cd738', (SELECT id FROM subjects WHERE name ILIKE '%Computer Networks%' LIMIT 1), 2020, 1, 'MCQ', 'Mark: 2           GATE: 2010
Consider a network with 6 routers R1 and R6 connected with links Having weights
as shown in the following diagram
Suppose the weights of all unused links in the previous question are changed to 2
and the distance vector algorithm is used again until all routing tables stabilize.
How many links will now remain unused?', '{"A": "0", "B": "1", "C": "2", "D": "3"}', '"A"', 'Detailed solution pending.'),
  ('08d4b79c-ee0e-491a-825e-299ed264b1e8', (SELECT id FROM subjects WHERE name ILIKE '%Computer Networks%' LIMIT 1), 2020, 1, 'MCQ', 'Mark:2           GATE: 2011
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
what will be the new distance vector at node, N3?', '{"A": "(3, 2, 0, 2, 5)      (b) (3, 2, 0, 2, 6)", "C": "(7, 2, 0, 2, 5)      (d) (7, 2, 0, 2, 6)"}', '"A"', 'Detailed solution pending.'),
  ('346bb78c-4455-4134-9de2-ef73c3ef0251', (SELECT id FROM subjects WHERE name ILIKE '%Computer Networks%' LIMIT 1), 2020, 1, 'MCQ', 'Mark:2           GATE: 2011
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
of update, what will be cost to N1 in the distance vector of N3?', '{"A": "3", "B": "9", "C": "10", "D": "Infinite"}', '"A"', 'Detailed solution pending.'),
  ('1a4ee400-f448-4ae7-a0c8-16e595e6edeb', (SELECT id FROM subjects WHERE name ILIKE '%Computer Networks%' LIMIT 1), 2020, 1, 'MCQ', 'Mark:1          GATE: 2012
In the IPv4 addressing format, the number of networks allowed under Class C
addresses is', '{"A": "2 14   (b) 2 7   (c) 2 21   (d) 2 24"}', '"A"', 'Detailed solution pending.'),
  ('9cf1dd16-9013-499e-a6b2-39ed44a09872', (SELECT id FROM subjects WHERE name ILIKE '%Computer Networks%' LIMIT 1), 2020, 1, 'MCQ', 'Mark:2           GATE: 2012
Consider a source computer(S) transmitting a file of size 106 bits to a destination
computer(D)over a network of two routers (R1 and R2) and three links(L1, L2, and
L3). L1connects S to R1; L2 connects R1 to R2; and L3 connects R2 to D. Let each
meters per second. Assume that the link bandwidth on each link is 1Mbps. Let the
of transmission and propagation delays in transmitting the file from S to D?', '{"A": "1005 ms", "B": "1010 ms", "C": "3000 ms", "D": "3003 ms"}', '"A"', 'Detailed solution pending.'),
  ('8e02349e-d253-46a8-bdae-60ce60e0c3f8', (SELECT id FROM subjects WHERE name ILIKE '%Computer Networks%' LIMIT 1), 2020, 1, 'MCQ', 'Mark:2          GATE: 2012
An Internet Service Provider (ISP) has the following chunk of CIDR -based IP
addresses available with it: 245.248.128.0/20. The  ISP wants to give half of this
chunk of addresses to Organization A, and a quarter to Organization B, while
retaining the remaining with itself. Which of the following is a valid allocation of
addresses to A and B?', '{"A": "245.248.136.0/21 and 245.248.128.0/22", "B": "245.248.128.0/21 and 245.248.128.0/22", "C": "245.248.132.0/22 and 245.248.132.0/21", "D": "245.248.136.0/24 and 245.248.132.0/21"}', '"A"', 'Detailed solution pending.'),
  ('9aef1c95-800e-4a7d-97e9-ae3616f3eee5', (SELECT id FROM subjects WHERE name ILIKE '%Computer Networks%' LIMIT 1), 2020, 1, 'MCQ', 'Mark:1            GATE: 2013
Assume that source S and destination D are connected through two intermediate
routers labeled R. Determine how many times each packet has to visit the network
layer and the data link layer during a transmission from S to D', '{"A": "Network layer \u2013 4 times and Data link layer \u2013 4 times", "B": "Network layer \u2013 4 times and Data link layer \u2013 3 times", "C": "Network layer \u2013 4 times and Data link layer \u2013 6 times", "D": "Network layer \u2013 2 times and Data link layer \u2013 6 times"}', '"A"', 'Detailed solution pending.'),
  ('d83a84ec-2a55-4149-ae15-c30d8cc9945d', (SELECT id FROM subjects WHERE name ILIKE '%Computer Networks%' LIMIT 1), 2020, 1, 'MCQ', 'Mark:2           GATE: 2013
In an IPv4 datagram, the M bit is 0, the value of HLEN is 10, the value of total
length is 400 and the fragment offset value is 300. The position of the datagram,
the sequence numbers of the first and the last bytes of the payload, respectively
are', '{"A": "Last fragment, 2400 and 2789", "B": "First fragment, 2400 and 2759", "C": "Last fragment, 2400 and 2759", "D": "Middle fragment, 300 and 689"}', '"A"', 'Detailed solution pending.'),
  ('4408346f-4663-4bfd-9892-a578b1cf8f77', (SELECT id FROM subjects WHERE name ILIKE '%Computer Networks%' LIMIT 1), 2020, 1, 'MCQ', 'Mark:1            GATE: 2014 Set -1
Consider the following three statements about link state and distance vector
routing protocols, for a large network with 500 network nodes and 4000 links.
[S1] The computational overhead in link state protocols is higher than in distance
vector protocols.
[S2] A distance vector protocol (with split horizon) avoids persistent routing loops,
but not a link state protocol.
[S3] After a topology change, a link state protocol will converge faster than a
distance vector protocol.
Which one of the following is correct about S1, S2, and S3?', '{"A": "S1, S2, and S3 are all true.", "B": "S1, S2, and S3 are all false.", "C": "S1 and S2 are true, but S3 is false.", "D": "S1 and S3 are true, but S2 is false."}', '"A"', 'Detailed solution pending.'),
  ('a9a0967c-d373-48c8-97dd-2a5a999b0b6f', (SELECT id FROM subjects WHERE name ILIKE '%Computer Networks%' LIMIT 1), 2020, 1, 'MCQ', 'Mark:1          GATE: 2014 Set -2
Which one of the following is TRUE about interior Gateway routing protocols –
Routing Information Protocol (RIP) and Open Shortest Path First (OSPF)', '{"A": "RIP uses distance vector routing and OSPF uses link state routing", "B": "OSPF uses distance vector routing and RIP uses link state routing", "C": "Both RIP and OSPF use link state routing", "D": "Both RIP and OSPF use distance vector routing"}', '"A"', 'Detailed solution pending.'),
  ('86011232-e5b2-4678-8ff7-9ae572b869d8', (SELECT id FROM subjects WHERE name ILIKE '%Computer Networks%' LIMIT 1), 2020, 1, 'MCQ', 'Mark:1         GATE: 2014 Set -2
In the diagram shown below L1 is an Ethernet LAN and L2 is a Token -Ring LAN.
An IP pa cket originates from sender S and traverses to R, as shown. The links
within each ISP, and across two ISPs, are all point to point optical links. The initial
value of TTL is 32. The maximum possible value of TTL field when R receives the
datagram is', '{"A": "25    (b) 24    (c) 26    (d) 28"}', '"A"', 'Detailed solution pending.'),
  ('d83778c7-939c-4e36-978c-a445b660d3e5', (SELECT id FROM subjects WHERE name ILIKE '%Computer Networks%' LIMIT 1), 2020, 1, 'MCQ', 'Mark:2         GATE: 2014 Set -2
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
second and third case respectively. Which one of the following is CORRECT?', '{"A": "T1 < T2 < T3    (b) T1 > T2 > T3", "C": "T2 = T3, T3 < T1   (d) T1 = T3, T3 > T2"}', '"A"', 'Detailed solution pending.'),
  ('39a309b7-f8e7-4ec6-bea9-f4f12c7cd083', (SELECT id FROM subjects WHERE name ILIKE '%Computer Networks%' LIMIT 1), 2020, 1, 'MCQ', 'Mark:1         GATE: 2014 Set -3
Host A (on TCP/IP v4 network A) sends an IP datagram D to host B (also on
TCP/IPv4 network B). Assume that no error occurred during the transmission of
D. When D reaches B,  which of the following IP header field(s) may be different
from that of the original datagram D?
I. TTL
II. Checksum
III. Fragment Offset', '{"A": "(i) only     (b) (i) and (ii) only", "C": "(ii) and (iii) only   (d) (i), (ii) and (iii)"}', '"A"', 'Detailed solution pending.'),
  ('493a9952-d5ef-4655-b167-49eb3bf5ab43', (SELECT id FROM subjects WHERE name ILIKE '%Computer Networks%' LIMIT 1), 2020, 1, 'MCQ', 'Mark:2         GATE: 2014 Set -3
Classless Inter -domain Routing (CIDR) receives a packet with address
131.23.151.76. The router’s routing table has the following entries:
Prefix   Output Interface Identifier
131.16.0.0/12          3
131.28.0.0/14           5
131.19.0.0/16              2
131.22.0.0/15   1
The identifier of the output interface on which this packet will be forwarded is___.', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('45f8b508-e57f-40a5-9e2d-dd57d2987e55', (SELECT id FROM subjects WHERE name ILIKE '%Computer Networks%' LIMIT 1), 2020, 1, 'MCQ', 'Mark:2         GATE: 2014 Set -3
Every host in an IPv4 network has a 1 -second resolution real -time clock with
battery backup. Each host needs to generate up to 1000 unique identifiers per
second. Assume that each host has a globally unique IPv4 address. Design a 50 -
bit globally unique ID for this purpose. After what period (in seconds) will the
identifiers generated by a host wrap around?________________', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('24403f36-df75-4983-baa1-7f9ae9a05876', (SELECT id FROM subjects WHERE name ILIKE '%Computer Networks%' LIMIT 1), 2020, 1, 'MCQ', 'Mark:2         GATE: 2014 Set -3
An IP router with a Maximum Transmission Unit (MTU) of 1500 bytes has received
an IP packet of size 4404 bytes with an IP header of length 20 bytes. The values of
the relevant fields in the header of the third IP fragment generated by  the router
for this packet are', '{"A": "MF bit: 0, Datagram Length: 1444; offset: 370", "B": "MF bit: 1, Datagram Length: 1424; offset: 185", "C": "MF bit: 1, Datagram Length: 1500; offset: 37", "D": "MF bit: 0, Datagram Length: 1424; offset: 2960"}', '"A"', 'Detailed solution pending.'),
  ('1a742b27-2b35-435b-b3be-8adc8a559493', (SELECT id FROM subjects WHERE name ILIKE '%Computer Networks%' LIMIT 1), 2020, 1, 'MCQ', 'Mark:1         GATE: 2015 Set -1
Which one of the following fields of an IP header is NOT modified by a typical IP
router?', '{"A": "Checksum", "B": "Source address", "C": "Time to Live (TTL)", "D": "Length"}', '"A"', 'Detailed solution pending.'),
  ('3694ef2f-cfe8-4743-8fe2-6f536ba4895f', (SELECT id FROM subjects WHERE name ILIKE '%Computer Networks%' LIMIT 1), 2020, 1, 'MCQ', 'Mark:2         GATE: 2015 Set -2
Host A sends a UDP datagram containing 8880 bytes of user data to host B over
an Ethernet LAN. Ethernet frames may carry data up to 1500 bytes (i.e. MTU =
1500 bytes). Size of UDP header is 8 bytes and size of IP header is 20 bytes. There
is no opti on field in IP header. How may total number of IP fragments will be
transmitted and what will be the contents of offset field in the last fragment?', '{"A": "6 and 925", "B": "6 and 7400", "C": "7 and 1110", "D": "7 and 8880"}', '"A"', 'Detailed solution pending.'),
  ('2af1bcb5-b343-4fff-97e0-ca59df8ebbbd', (SELECT id FROM subjects WHERE name ILIKE '%Computer Networks%' LIMIT 1), 2020, 1, 'MCQ', 'Mark:2         GATE: 2015 Set -2
Consider the following routing table at an IP router
For each IP address in Group -I identify the correct choice of the next hop from
Group-II Using the entries from the routing table above.', '{"A": "i-a, ii-c, iii-e, iv-d", "B": "i-a, ii-d, iii-b, iv-e", "C": "i-b, ii-c, iii-d, iv-e", "D": "i-b, ii-c, iii-e, iv-d"}', '"A"', 'Detailed solution pending.'),
  ('6ccf9c5f-6b66-4eb5-a2ce-bc09c38b7906', (SELECT id FROM subjects WHERE name ILIKE '%Computer Networks%' LIMIT 1), 2020, 1, 'MCQ', 'Mark:2         GATE: 2015 Set -3
In the network 200.10.11.144/27, the fourth octet (in decimal) of the last IP
address of the network which can be assigned to a host is ________', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('4086144c-f479-4978-9724-87a852cf8cdb', (SELECT id FROM subjects WHERE name ILIKE '%Computer Networks%' LIMIT 1), 2020, 1, 'MCQ', 'Mark:2         GATE: 2016 Set -1
An IP datagram of size 1000 bytes arrives at a router. The router has to forward
this packet on a link whose MTU (maximum transmission unit) is 100 bytes.
Assume that the size of the IP header is 20 bytes. The number of fragments that
the IP datagram will be divided into for transmission is :_____________________', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('7a590ee1-19b8-4a20-87c4-3c07189b9c47', (SELECT id FROM subjects WHERE name ILIKE '%Computer Networks%' LIMIT 1), 2020, 1, 'MCQ', 'Mark:2         GATE: 2016 Set -1
For a host machine that uses the token bucket algorithm for congestion control,
the token bucket has a capacity of 1 megabyte and the maximum output r ate is
20 megabytes per second. Tokens arrive at a rate to sustain output at a rate of 10
megabytes per second. The token bucket is currently full and the machine needs
to send 12 megabytes of data. The minimum time required to transmit the data is
_________________ seconds.', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('0a2645ec-573d-4a09-856f-d232d61bf7ee', (SELECT id FROM subjects WHERE name ILIKE '%Computer Networks%' LIMIT 1), 2020, 1, 'MCQ', 'Mark:1         GATE: 2017 Set -2
Consider the following statements about the routing protocols, Routing
Information Protocol (RIP) and Open Shortest Path First (OSPF) in an IPv4 network.
I. RIP uses distance vector routing
II. RIP packets are sent using UDP
III. OSPF packets are sent using TCP
IV. OSPF operation is based on link-state routing
Which of the following above are CORRECT?', '{"A": "I and IV only", "B": "I, II and III only", "C": "I, II and IV only", "D": "II, III and IV only"}', '"A"', 'Detailed solution pending.'),
  ('cd86b204-02a6-4ef5-abe8-d39193faa1f9', (SELECT id FROM subjects WHERE name ILIKE '%Computer Networks%' LIMIT 1), 2020, 1, 'MCQ', 'Mark: 1         GATE: 2017 Set -2
The maximum number of IPv4 router address addresses that can be listed in the
record route (RR) option field of an IPv4 header is ____.', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('a601cdb7-3c69-465a-be88-05448398c5d3', (SELECT id FROM subjects WHERE name ILIKE '%Computer Networks%' LIMIT 1), 2020, 1, 'MCQ', 'Mark: 2          GATE: 2018
Consider an IP packet with a length of 4,500 bytes that includ es a 20 -byte IPv4
header and 40 -byte TCP header. The packet is forwarded to an IPv4 router that
supports a Maximum Transmission Unit (MTU) of 600 bytes. Assume that the
length of the IP header in all the outgoing fragments of this packet is 20 bytes.
Assume that the fragmentation offset value stored in the first fragment is 0. The
fragmentation offset value stored in the third fragment is ______ .', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('3b276d07-14ba-4545-a1b6-13551f87bd44', (SELECT id FROM subjects WHERE name ILIKE '%Computer Networks%' LIMIT 1), 2020, 1, 'MCQ', 'Mark: 2          GATE: 2019
Suppose that in an IP-over-Ethernet network, a machine X wishes to find the MAC
address of another machine Y in its subnet. Which one of the following techniques
can be used for this?
finds the MAC address of Y and sends to X
finds the MAC address of Y and sends to X', '{"A": "X sends an ARP request packet with broadcast IP address in its local subnet", "B": "X sends an ARP request packet to the local gateway\u2019s MAC address which then", "C": "X sends an ARP request packet with broadcast MAC address in its local subnet", "D": "X sends an ARP request packet to the local gateway\u2019s IP address which then"}', '"A"', 'Detailed solution pending.'),
  ('b4bc2c51-fe76-4a7c-92ce-ef74c3f6805a', (SELECT id FROM subjects WHERE name ILIKE '%Computer Networks%' LIMIT 1), 2020, 1, 'MCQ', 'Mark: 2          GATE: 2019
Consider three machines M, N and P with IP addresses 100.10.5.2, 100.10.5.5 and
100.10.5.6 respectively. The subnet mask is set to 255.255.255.252 for all the
three machines. Which one of the following is true?', '{"A": "M, N and P all belong to the same subnet", "B": "Only N and P belong to the same subnet", "C": "M, N, and P belong to three different subnets", "D": "Only M and N belong to the same subnet"}', '"A"', 'Detailed solution pending.'),
  ('6d5e90ea-092e-4223-a303-6274dfb64866', (SELECT id FROM subjects WHERE name ILIKE '%Computer Networks%' LIMIT 1), 2020, 1, 'MCQ', 'Mark:1          GATE: 2020
Consider the following statements about the functionality of an IP based router.
I. A router does not modify the IP packets during forwarding.
II. It is not necessary for a router to implement any routing protocol.
III. A router should reassemble IP fragments if the MTU of the outgoing link is
larger than the size of the incoming IP packet.
Which of the above statements is/are TRUE?', '{"A": "I and II only", "B": "I  only", "C": "II and III only", "D": "II only"}', '"A"', 'Detailed solution pending.'),
  ('13aa7c1d-6032-411c-945c-2d7f2dd2cec8', (SELECT id FROM subjects WHERE name ILIKE '%Computer Networks%' LIMIT 1), 2020, 1, 'MCQ', 'Mark: 2          GATE: 2020
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
IV. 202.61.144.0/ 21', '{"A": "I and II only", "B": "II and III only", "C": "III and IV only", "D": "I and IV only"}', '"A"', 'Detailed solution pending.'),
  ('35f733d0-14a4-460d-b545-18ec9f82c57e', (SELECT id FROM subjects WHERE name ILIKE '%Computer Networks%' LIMIT 1), 2009, 2, 'MCQ', 'While opening a TCP connection, the initial sequence number is to be derived using
a time-of-day (ToD) clock that keeps running even when the host is down. The low
order 32 bits of the counter of the ToD clock is to be used for the initial sequence
numbers. The clock counters increments once per millisecond. The maximum
packet lifetime is given to be 64s. Which one of  the choices given below is closest
to the minimum permissible rate at which sequence numbers used for packets of
a connection can increase?', '{"A": "0.015/s      (b) 0.064/s", "C": "0.135/s      (d) 0.327/s"}', '"A"', 'Detailed solution pending.'),
  ('87f449e8-cd4f-4378-990c-3e21b1e6db20', (SELECT id FROM subjects WHERE name ILIKE '%Computer Networks%' LIMIT 1), 2020, 1, 'MCQ', 'Mark:2           GATE: 2012
Consider an instance of TCP’s Additive Increase Multiplicative Decrease (AIMD)
algorithm where the window size at the start of the slow start phase is 2 MSS and
the threshold at the start of the first transmission is 8 MSS. Assume that a timeout
occurs during the fifth transmission. Find the congestion window size at the end
of the tenth transmission.', '{"A": "8 MSS", "B": "14 MSS", "C": "7 MSS", "D": "12 MSS"}', '"A"', 'Detailed solution pending.'),
  ('2c54b619-02b0-4696-8ade-139208c0d065', (SELECT id FROM subjects WHERE name ILIKE '%Computer Networks%' LIMIT 1), 2020, 1, 'MCQ', 'Mark:2  GATE: 2014 Set -1
Let the size of congestion window of a TCP connection be 32 KB when a timeout
occurs. The round trip time of the connection is 100 msec and the maximum
segment size used is 2 KB. The time taken (in msec) by the TCP connection to get
back to 32 KB congestion window is _________.', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('b4aae902-271e-4121-941b-d846e2baf617', (SELECT id FROM subjects WHERE name ILIKE '%Computer Networks%' LIMIT 1), 2020, 1, 'MCQ', 'Mark:1         GATE: 2014 Set -2
Which one of the following socket API functions converts an unconnected active
TCP socket into a passive socket.', '{"A": "Connect", "B": "bind", "C": "listen", "D": "accept"}', '"A"', 'Detailed solution pending.'),
  ('26b9891b-b539-4c6b-ac8b-f0542383e52d', (SELECT id FROM subjects WHERE name ILIKE '%Computer Networks%' LIMIT 1), 2020, 1, 'MCQ', 'Mark: 1         GATE: 2015 Set -1
Suppose two hosts use a TCP connection to transfer a large file. Which of the
following statements is/are False with respect to the TCP connection?
1. If the sequence number of a segment is m, then the sequence number of the
Subsequent segment is always m+1.
2. If the estimated round trip time at any given point of time is t sec, the value of
the retransmission timeout is always set to greater than or equal to t sec.
3. The size of the advertised window never changes during the course of the TCP
connection.
4. The number of unacknowledged bytes at the sender is always less than or equal
to the advertised window', '{"A": "3 only", "B": "1 and 3 only", "C": "1 and 4 only", "D": "2 and 4 only"}', '"A"', 'Detailed solution pending.'),
  ('7d07480e-aeb2-47f6-99a3-e3794228c09c', (SELECT id FROM subjects WHERE name ILIKE '%Computer Networks%' LIMIT 1), 2020, 1, 'MCQ', 'Mark: 1         GATE: 2015 Set -2
Identify the correct order in which a server process must invoke the function calls
accept, bind, listen, and recv according to UNIX socket API.', '{"A": "Listen, accept, bind recv", "B": "Bind, listen, accept, recv", "C": "Bind, accept, listen, recv", "D": "Accept, listen, bind, recv"}', '"A"', 'Detailed solution pending.'),
  ('8969c34c-aee2-4397-b529-b40cc847851f', (SELECT id FROM subjects WHERE name ILIKE '%Computer Networks%' LIMIT 1), 2020, 1, 'MCQ', 'Mark: 2         GATE: 2015 Set -2
Assume that the bandwidth for a TCP connection is 1048560 bits/sec. Let α be
the value of RTT in milliseconds (rounded off to the nearest integer) after which
the TCP window scale option is needed. Let β be the maximum possible window
size with window scale option. Then the values of α and β are.', '{"A": "63 milliseconds 65535 \u00d7 214", "B": "63 milliseconds 65535 \u00d7 216", "C": "500 milliseconds 65535 \u00d7 214", "D": "500 milliseconds 65535 \u00d7 216"}', '"A"', 'Detailed solution pending.'),
  ('70ba8357-8b78-416d-aa6b-84c3fce13c9d', (SELECT id FROM subjects WHERE name ILIKE '%Computer Networks%' LIMIT 1), 2020, 1, 'MCQ', 'Mark: 1            GATE: 2015 Set -3
Consider the following statements.
I. TCP connections are full duplex.
II. TCP has no option for selective acknowledgment
III. TCP connections are message streams.', '{"A": "Only I is correct", "B": "Only I and II are correct", "C": "Only II and III are correct", "D": "All of I, II and III are correct"}', '"A"', 'Detailed solution pending.'),
  ('b6a0ff39-a5c6-4994-bbbb-492f15f66b63', (SELECT id FROM subjects WHERE name ILIKE '%Computer Networks%' LIMIT 1), 2020, 1, 'MCQ', 'Mark: 1         GATE: 2017 Set -1
Consider a TCP client and a TCP server running on two different machines. After
completing data transfer, the TCP client calls close to terminate the connection
and a FIN segment is sent to the TCP server. Server-side TCP responds by sending
an ACK which is received by the client-side TCP. As per the TCP connection state
diagram (RFC 793), in which state does the client side TCP connection wait for the
FIN from the server-side TCP?', '{"A": "LAST-ACK    (b) TIME-WAIT", "C": "FIN-WAIT-1    (d) FIN-WAIT-2"}', '"A"', 'Detailed solution pending.'),
  ('af723caa-c04f-4cef-affb-b82718829bb5', (SELECT id FROM subjects WHERE name ILIKE '%Computer Networks%' LIMIT 1), 2020, 1, 'MCQ', 'GATE: 2017 Set -2
Consider a socket API on Linux machine that supports UDP socket. A connected
UDP socket is a UDP socket on which connect function has already been called.
Which of the following statements is/are correct?
1. A connected UDP socket can  be used to communicate with multiple peers
simultaneously.
2. A process can successfully call connect function again for an already connected
UDP socket.', '{"A": "I only     (b) II only", "C": "Both I and II only   (d) Neither I nor II"}', '"A"', 'Detailed solution pending.'),
  ('ad6ed0e6-c120-4cdb-aa7b-754808038a74', (SELECT id FROM subjects WHERE name ILIKE '%Computer Networks%' LIMIT 1), 2020, 1, 'MCQ', 'Mark: 1          GATE: 2018
Consider a long -lived TCP session with an end -to-end bandwidth of 1 Gbps
(= 109 bits-per-second). The session starts with a sequence number of 1234. The
minimum time (in seconds, rounded to the closest integer) before thi s sequence
number can be used again is _______.', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('ec19769c-dadb-4ffe-af93-f35317d385dd', (SELECT id FROM subjects WHERE name ILIKE '%Computer Networks%' LIMIT 1), 2020, 1, 'MCQ', 'Mark: 1          GATE: 2018
Match the following:
Field       Length in bits
P. UDP Header’s Port Number  I. 48
Q. Ethernet MAC Address    II. 8
R. IPv6 Next Header     III. 32
S. TCP Header’s Sequence Number  IV. 16', '{"A": "P-III, Q-IV, R-II, S-I    (b) P-II, Q-I, R-IV, S-III", "C": "P-IV, Q-I, R-II, S-III    (d) P-IV, Q-I, R-III, S-II"}', '"A"', 'Detailed solution pending.'),
  ('e672cdd4-d2c4-41a4-841c-da3c6bbac731', (SELECT id FROM subjects WHERE name ILIKE '%Computer Networks%' LIMIT 1), 2020, 1, 'MCQ', 'Mark:2         GATE: 2020
Consider a TCP connection between a client and a server with the following
specifications; the round trip time is 6 ms, the size of the receiver advertised
window is 50 KB, slow -start threshold at the client is 32 KB, and the maximum
segment size is 2 KB. The connection is established at time t = 0. Assume that
there ar e no timeouts and errors during transmission. Then the size of the
congestion window (in KB) at time t + 60 ms after all acknowledgem ents are', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('d9981dd1-909a-42d1-8a8b-8888a1209efd', (SELECT id FROM subjects WHERE name ILIKE '%Computer Networks%' LIMIT 1), 2020, 1, 'MCQ', 'Mark:1           GATE: 2010
Which one of the following is not a client-server application?', '{"A": "Internet chat   (b) Web browsing", "C": "E-mail     (d) Ping"}', '"A"', 'Detailed solution pending.'),
  ('489efec6-a440-44b7-9297-154926417859', (SELECT id FROM subjects WHERE name ILIKE '%Computer Networks%' LIMIT 1), 2020, 1, 'MCQ', 'Mark:1          GATE: 2011
Consider different activities related to email:
m1: Send an email from a mail client to a mail server
m2: Download an email from mailbox server to a mail client
m3: Checking email in a web browser
Which is the application level protocol used in each activity?', '{"A": "m1: HTTP m2: SMTP m3: POP", "B": "m1: SMTP m2: FTP m3: HTTP", "C": "m1: SMTP m2: POP m3: HTTP", "D": "m1: POP m2: SMTP m3: IMAP"}', '"A"', 'Detailed solution pending.'),
  ('71410679-9837-4962-863d-643939257856', (SELECT id FROM subjects WHERE name ILIKE '%Computer Networks%' LIMIT 1), 2020, 1, 'MCQ', 'Mark:1           GATE: 2011
A layer-4 firewall (a device that can look at all protocol headers up to the
the same IP address
and 5:00AM', '{"A": "Block entire HTTP traffic during 9:00PM and 5:00AM", "B": "Block all ICMP traffic", "C": "Stop incoming traffic from a specific IP address but allow outgoing traffic to", "D": "Block TCP traffic from a specific user on a multi-user system during 9:00PM"}', '"A"', 'Detailed solution pending.'),
  ('e37dfe2f-a2cb-4e3a-82c9-3be945ef4f2b', (SELECT id FROM subjects WHERE name ILIKE '%Computer Networks%' LIMIT 1), 2020, 1, 'MCQ', 'Mark:1           GATE: 2012
Which of the following transport layer protocols is used to support electronic mail?', '{"A": "SMTP  (b) IP   (c) TCP  (d) UDP"}', '"A"', 'Detailed solution pending.'),
  ('dc9cbb1d-a208-41ee-b2eb-71d9795c944d', (SELECT id FROM subjects WHERE name ILIKE '%Computer Networks%' LIMIT 1), 2020, 1, 'MCQ', 'Mark:1           GATE: 2012
The protocol data unit (PDU) for the application layer in the Internet stack is', '{"A": "Segment  (b) Datagram (c) Message  (d) Frame"}', '"A"', 'Detailed solution pending.'),
  ('e78f62d4-1b30-458d-be91-7c9a4dfc84f7', (SELECT id FROM subjects WHERE name ILIKE '%Computer Networks%' LIMIT 1), 2020, 1, 'MCQ', 'Mark:1           GATE: 2013
The transport layer protocols used for real time multimedia, file transfer, DNS and
email, respectively are:', '{"A": "TCP, UDP, UDP and TCP", "B": "UDP, TCP, TCP and UDP", "C": "UDP, TCP, UDP and TCP", "D": "TCP, UDP, TCP and UDP"}', '"A"', 'Detailed solution pending.'),
  ('04adea21-fa29-4703-8a47-0be563c6470d', (SELECT id FROM subjects WHERE name ILIKE '%Computer Networks%' LIMIT 1), 2020, 1, 'MCQ', 'Mark:1            GATE: 2014 Set -1
Identify the correct order in which the following actions take place in an interaction
Between a web browser and a web server.
1. The web browser requests a webpage using HTTP.
2. The web browser establishes a TCP connection with the web server.
3. The web server sends the requested webpage using HTTP.
4. The web browser resolves the domain name using DNS.', '{"A": "4, 2, 1, 3", "B": "1, 2, 3, 4", "C": "4, 1, 2, 3", "D": "2, 4, 1, 3"}', '"A"', 'Detailed solution pending.'),
  ('18d9a629-f334-4d03-b466-92c0f5c649f0', (SELECT id FROM subjects WHERE name ILIKE '%Computer Networks%' LIMIT 1), 2020, 1, 'MCQ', 'Mark:2         GATE: 2014 Set -2
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
Which of I1, I2, I3, and I4 can an intruder learn through sniffing at R2 alone?', '{"A": "Only I1 and I2", "B": "Only I1", "C": "Only I2 and I3", "D": "Only I3 and I4"}', '"A"', 'Detailed solution pending.'),
  ('f3bf02a8-3e0e-4637-bf5f-ee8537446a8d', (SELECT id FROM subjects WHERE name ILIKE '%Computer Networks%' LIMIT 1), 2020, 1, 'MCQ', 'Mark:1          GATE: 2015 Set -2
Which one of the following statements is NOT correct about HTTP cookies?
an Internet user', '{"A": "A cookies is a piece of code that has the potential to compromise the security of", "B": "A cookie gains entry to the user\u2019s work area through an HTTP header", "C": "A cookie has an expiry date and time", "D": "Cookies can be used to track the browsing pattern of a user at a particular site"}', '"A"', 'Detailed solution pending.'),
  ('fcffcb48-369d-48bd-b6ae-67ad0aa13cd2', (SELECT id FROM subjects WHERE name ILIKE '%Computer Networks%' LIMIT 1), 2020, 1, 'MCQ', 'Mark: 1         GATE: 2016 Set -1
Which one of the following protocols is NOT used to resolve one form of address to
another one?', '{"A": "DNS", "B": "ARP", "C": "DHCP", "D": "RARP"}', '"A"', 'Detailed solution pending.'),
  ('b940aa95-418b-4032-b153-6456ede01e3d', (SELECT id FROM subjects WHERE name ILIKE '%Computer Networks%' LIMIT 1), 2020, 1, 'MCQ', 'Mark: 1         GATE: 2016 Set -1
Which of the following is/are example(s) of stateful application layer protocols?
(i)  HTTP     (ii) FTP
(iii) TCP     (iv) POP3', '{"A": "(i) and (ii) only", "B": "(ii) and (iii) only", "C": "(ii) and (iv) only", "D": "(iv) only"}', '"A"', 'Detailed solution pending.'),
  ('fe605a7a-43d3-40e6-a3b7-04d06d9950f2', (SELECT id FROM subjects WHERE name ILIKE '%Computer Networks%' LIMIT 1), 2020, 1, 'MCQ', 'Mark: 1         GATE: 2016 Set -2
Identify the correct sequence in which the following packets are transmitted on the
assuming that the host has just been restarted.', '{"A": "HTTP GET request, DNS query, TCP SYN", "B": "DNS query, HTTP GET request, TCP SYN", "C": "DNS query, TCP SYN, HTTP GET request", "D": "TCP SYN, DNS query, HTTP GET request"}', '"A"', 'Detailed solution pending.'),
  ('27620a8f-b5d9-47cc-a9e7-95e00d2f95fd', (SELECT id FROM subjects WHERE name ILIKE '%Computer Networks%' LIMIT 1), 2020, 1, 'MCQ', 'Mark:1            GATE: 2019
Which of the following protocol pairs can be used to send and retrieve e -mails (in
that order)?', '{"A": "IMAP, POP3", "B": "SMTP, POP3", "C": "SMTP, MIME", "D": "IMAP, SMTP"}', '"A"', 'Detailed solution pending.'),
  ('57385d25-5ab1-4375-b153-fa00410325d3', (SELECT id FROM subjects WHERE name ILIKE '%Computer Networks%' LIMIT 1), 2020, 1, 'MCQ', 'Mark: 1          GATE: 2020
Assume that you have made a request for a web page through your web browser
to a web server. Initially the browser cache is empty. Further, the browser is
configured to send HTTP requests in non-persistent mode. The web page contains
text and five very small images. The minimum number of TCP connections required
to display the web page completely in your browser is ________
Computer Network
DATA LINK LAYER ERROR CONTROL
1. D 2. c 3. d 4. c 5. c
6. c 7. c 8. c 9. a 10. c
11. c 12. c 13. b 14. 6
PYQ Questions Booklet
Video Solution Play list Link of Operating System: Click Here
(https://www.youtube.com/playlist?list=PLqHw2_FIWUzaIFXymuruZI4CuVpc73
5es)
GATE Computer Science & IT
Computer Organization
And Architecture
(Topic-wise)', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('e537a25f-0a85-4def-b988-b8f61b9b5773', (SELECT id FROM subjects WHERE name ILIKE '%Computer Organization%' LIMIT 1), 2009, 1, 'MCQ', 'Consider a 4 -way set associative cache (initially empty) with total 16 cache
blocks. The main memory consists of 256 blocks and the request for memory
blocks is in the following order: 0, 255, 1, 4, 3, 8, 133, 159, 216, 129, 63, 8,
48, 32, 73, 92, and 155. Which one of the following memory block will NOT be
in cache if LRU replacement policy is used?
216', '{"A": "3    (b) 8    (c) 129   (d)"}', '"A"', 'Detailed solution pending.'),
  ('a09e83a4-5dff-494e-b566-c1d38afabb09', (SELECT id FROM subjects WHERE name ILIKE '%Computer Organization%' LIMIT 1), 2010, 2, 'MCQ', 'A computer system has an L1 cache, an L2 cache, and a main memory unit
connected as shown below. The block size in L1 cache is 4 words. The block
size in L2 cache is 16 words. The memory access times are 2 nanoseconds, 20
nanoseconds and 200 nanoseconds for L1 cache, L2 cache and main memory
unit respectively.
When there is a miss in L1 cache and a hit in L2 cache, a block is transferred
from L2 cache to L1 cache. What is the time taken for this transfer?', '{"A": "2 nanoseconds    (b) 20 nanoseconds", "C": "22 nanoseconds    (d) 88 nanoseconds"}', '"A"', 'Detailed solution pending.'),
  ('694b703e-ccbf-4f3a-a88b-9821b81c30ea', (SELECT id FROM subjects WHERE name ILIKE '%Computer Organization%' LIMIT 1), 2010, 2, 'MCQ', 'A computer system has an L1 cache, an L2  cache, and a main memory unit
connected as shown below. The block size in L1 cache is 4 words. The block
size in L2 cache is 16 words. The memory access times are 2 nanoseconds. 20
nanoseconds and 200 nanoseconds for L1 cache, L2 cache and main memory
unit respectively.
When there is a miss in both L1 cache and L2 cache, first a block is transferred
from main memory to L2 cache, and then a block is transferred from L2 cache
to L1 cache. What is the total time taken for these transfers?', '{"A": "222 nanoseconds", "B": "888 nanoseconds", "C": "902 nanoseconds", "D": "968 nanoseconds"}', '"A"', 'Detailed solution pending.'),
  ('35662f3b-116b-427f-b531-3977a6040474', (SELECT id FROM subjects WHERE name ILIKE '%Computer Organization%' LIMIT 1), 2011, 2, 'MCQ', 'An 8KB direct-mapped write-back cache is organized as multiple blocks, each
of size 32 -bytes. The processor generates 32 -bit addresses. The cache
controller maintains the tag information for each cache block comprising of
the following.
1 Valid bit
1 Modified bit
As many bits as the minimum needed to identify the memory block mapped
in the cache. What is the total size of memory needed at the cache controller
to store meta-data (tags) for the cache?', '{"A": "4864 bits  (b) 6144 bits (c) 6656 bits (d) 5376 bits"}', '"A"', 'Detailed solution pending.'),
  ('e30c3144-3c0b-4ea1-9006-df96fe90db76', (SELECT id FROM subjects WHERE name ILIKE '%Computer Organization%' LIMIT 1), 2012, 2, 'MCQ', 'A computer has a 256 Kbyte, 4-way set associative, write back data cache with
block size of 32 Bytes. The processor send s 32 bit addresses to the cache
controller. Each cache tag directory entry contains, in addition to address tag,
2 valid bits, 1 modified bit and 1 replacement bit. The number of bits in the
tag field of an address is', '{"A": "11    (b) 14    (c) 16    (d) 27"}', '"A"', 'Detailed solution pending.'),
  ('4033dbb5-1ed2-4935-ba4f-589c5388b5ab', (SELECT id FROM subjects WHERE name ILIKE '%Computer Organization%' LIMIT 1), 2012, 2, 'MCQ', 'A computer has a 256 Kbyte, 4-way set associative, write back data cache with
block size of 32 Bytes. The processor sends 32 bit addresses to the cache
controller. Each cache tag directory entry contains, in addition to address tag,
2 valid bits, 1 modified bit and 1 replacement bit. The size of the cache tag
directory is
bits', '{"A": "160 Kbits  (b) 136 bits   (c) 40 Kbits   (d) 32"}', '"A"', 'Detailed solution pending.'),
  ('9c0be540-eef7-4153-8c6b-c03c3faccb0b', (SELECT id FROM subjects WHERE name ILIKE '%Computer Organization%' LIMIT 1), 2013, 1, 'MCQ', 'In a k-way set associative cache, the cache is divided into v sets, each of which
consists of k lines. The lines of a set are placed in sequence one after another.
The lines in set s are sequenced before the lines in set (s+1). The main memory
blocks are numbered 0 onwards. The main memory block numbered j must
be mapped to any one of the cache lines from.', '{"A": "(j mod v) * k to (j mod v) * k + (k-1)", "B": "(j mod v) to (j mod v) + (k-1)", "C": "(j mod k) to (j mod k) + (v-1)", "D": "(j mod k) * v to (j mod k) * v + (v-1)"}', '"A"', 'Detailed solution pending.'),
  ('d4f60e7e-2667-40e2-b0ca-8d07626c0a4d', (SELECT id FROM subjects WHERE name ILIKE '%Computer Organization%' LIMIT 1), 2014, 2, 'MCQ', 'An access sequence of cache block addresses is of length N and contains n
unique block addresses. The number of unique block addresses between two
consecutive accesses to the same block address is bounded above by k. What
is the miss ratio if the access sequence is passed through a cache of
associativity A ≥ k exercising least-recently-used replacement policy?
(a)n/N   (b)1/N   (c)1/A   (d)k/n', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('d9698640-cd77-4bc0-ad5c-d740350342bc', (SELECT id FROM subjects WHERE name ILIKE '%Computer Organization%' LIMIT 1), 2014, 1, 'MCQ', 'A 4-way set-associative cache memory unit with a capacity of 16 KB is built
using a block size of 8 words. The word length is 32 bits. The size of the', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('6a5ef8fb-9746-48e7-9c94-5532ee9bbc08', (SELECT id FROM subjects WHERE name ILIKE '%Computer Organization%' LIMIT 1), 2014, 2, 'MCQ', 'In designing a computer’s cache system, the cache block (or cache line) size is
an important Parameter. Which one of the following statements is correct in
this context?
overhead
time
2', '{"A": "A smaller block size implies better spatial locality", "B": "A smaller block size implies a smaller cache tag and hence lower cache tag", "C": "A smaller block size implies a larger cache tag and hence lower cache hit", "D": "A smaller block size incurs a lower cache miss penalty"}', '"A"', 'Detailed solution pending.'),
  ('32e67ac9-c84b-46c5-a490-47149a2d9a3b', (SELECT id FROM subjects WHERE name ILIKE '%Computer Organization%' LIMIT 1), 2014, 2, 'MCQ', 'If the associativity of a processor cache is doubled while keeping the capacity
and block size unchanged, which one of the following is guaranteed to be NOT
affected?', '{"A": "Width of tag comparator", "B": "Width of set index decoder", "C": "Width of way selection multiplexor", "D": "Width of processor to main memory data bus"}', '"A"', 'Detailed solution pending.'),
  ('47ae8d96-aae6-4b4e-9ba0-e9b5a665ad02', (SELECT id FROM subjects WHERE name ILIKE '%Computer Organization%' LIMIT 1), 2014, 2, 'MCQ', 'The memory access time is 1 nanosecond for a read operation with a hit in
nanoseconds for a write operation with a hit in cache and 10 nanoseconds for
a write operation with a miss in cache. Execution of a sequence of instructions
involves 100 instruction fetch operations, 60 memory operand Read
operations and 40 memory operand write operations. The cache hit -ratio is
0.9. T he  Average memory access time (in nanoseconds) in executing the', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('25d34f31-1429-4cbd-8874-d10a86f9081b', (SELECT id FROM subjects WHERE name ILIKE '%Computer Organization%' LIMIT 1), 2015, 1, 'MCQ', 'Assume that for a certain processor, a read request takes 50 nanoseconds on
a cache miss and 5 nanoseconds on a cac he hit. Suppose while running a
program, it was observed that 80% of the processors read requests result in a', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('4bdd597e-e9ed-46a9-a7cc-9cf443b09e1b', (SELECT id FROM subjects WHERE name ILIKE '%Computer Organization%' LIMIT 1), 2015, 1, 'MCQ', 'Consider a machine with a byte addressable main memory of 220 bytes, block
size of 16 bytes and a direct mapped cache having 2 12 cache lines. Let the
addresses of two consecutive bytes in main memory be (E201F) 16 and
(E2020)16. What are the tag and cache line address (in hex) for main memory
address (E201F)16?', '{"A": "E, 201   (b) F, 201  (c) E, E20   (d) 2, 01F"}', '"A"', 'Detailed solution pending.'),
  ('73a32b79-bee6-4c0a-99a4-b63ec77f1898', (SELECT id FROM subjects WHERE name ILIKE '%Computer Organization%' LIMIT 1), 2016, 1, 'MCQ', 'A processor can support a maximum memory of 4 GB, where the memory is
word-Addressable (a word consists of two bytes). The size of the address bus
[SET-1]', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('8a753684-b4eb-4fe1-b205-7736c01d6478', (SELECT id FROM subjects WHERE name ILIKE '%Computer Organization%' LIMIT 1), 2016, 2, 'MCQ', 'The width of the physical address on a machine is 40 bits. The width of the
tag field in a 512 KB 8-way set associative cache is ____________ bits', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('24b04802-43b8-44f7-aaf4-5534ea03330c', (SELECT id FROM subjects WHERE name ILIKE '%Computer Organization%' LIMIT 1), 2016, 2, 'MCQ', 'A file system uses an in-memory cache to cache disk blocks. The miss rate of
the cache is shown in the figure. The latency to read a block from the cache
is 1 ms and to read a block from the disk is 10 ms. Assume that the cost of
checking whether a block exists in the cache is negligible. Available cache
sizes are in multiples of 10 MB.
The smallest cache size required to ensure an average read latency of less', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('5bc102e3-5b8f-4730-b5dd-a44c5be8f75b', (SELECT id FROM subjects WHERE name ILIKE '%Computer Organization%' LIMIT 1), 2017, 1, 'MCQ', 'Consider a two-level cache hierarchy with L1 and L2 caches. An application
incurs 1.4 memory accesses per instruction on average. For this application,
the miss rate of L1 cache is 0.1; the L2 cache experiences, on average, 7
misses per 1000 instructions. The miss rate L2 expressed correct to two', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('7865bffb-64f9-4f12-88a8-8a25bf9c7f60', (SELECT id FROM subjects WHERE name ILIKE '%Computer Organization%' LIMIT 1), 2017, 2, 'MCQ', 'Consider a 2 -way set associative cache with 256 blocks and uses LRU
replacement, Initially the cache is empty. Conflict misses are those misses
which occur due to contention of multiple Blocks for the same cache set.
Compulsory misses occur due to first time access to the block. The following
sequence of accessed to memory blocks (0, 128, 256, 128, 0, 128, 256, 128,
1, 129, 257,129, 1, 129, 257, 129) is repeated 10 times. The number of conflict
1]', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('3d6dc880-568f-4658-9fa9-121fc8544bd9', (SELECT id FROM subjects WHERE name ILIKE '%Computer Organization%' LIMIT 1), 2017, 2, 'MCQ', 'A cache memory unit with capacity of N words and block size of B words is to
be designed. If it is designed as a direct mapped cache, the length of the TAG
field is 10 bits. If the cache unit is now designed as a 16 -way set-associative', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('c8ffe39a-52be-44b8-9764-8dcbe2c7d9a3', (SELECT id FROM subjects WHERE name ILIKE '%Computer Organization%' LIMIT 1), 2020, 1, 'MCQ', 'In a two-level cache system, the access times of L1  and L2 are 1 and 8 clock
cycles, respectively. The miss penalty from the L2  cache to main memory is
18 clock cycles. The miss rate of L1  cache is twice that of L2. The average
L1 and L2 respectively are:', '{"A": "0.111 and 0.056", "B": "0.056 and 0.111", "C": "0.0892 and 0.1784", "D": "0.1784 and 0.0892    [Marks: 2][GATE: 2017][ SET-2]"}', '"A"', 'Detailed solution pending.'),
  ('006c788d-5da0-47fa-aa3b-3a4767cdc21a', (SELECT id FROM subjects WHERE name ILIKE '%Computer Organization%' LIMIT 1), 2017, 2, 'MCQ', 'The read access times and the hit ratios for different caches in a memory
hierarchy are as given below:
Bottom of Form
The read access time of main memory in 90 nanoseconds. Assume that the
Assume that all the caches are direct mapped caches. Assume that the dirty
bit is always 0 for all the blocks in the caches. In execution of a program, 60%
of memory reads are for instruction fetch and 40% are for memory operand
fetch. The average read access time in nanoseconds (up to 2 decimal places)
is _________', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('9a09c84d-5bbd-462a-b122-721d58b4c004', (SELECT id FROM subjects WHERE name ILIKE '%Computer Organization%' LIMIT 1), 2017, 2, 'MCQ', 'Consider a machine with byte addressable memory of 2 32 bytes divided into
blocks of size 32 bytes. Assume a direct mapped cache having 512 cache lines
is used with this machine. The size of tag field in bits is _____', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('02454ae6-9347-4ffe-8b43-3e49927920a6', (SELECT id FROM subjects WHERE name ILIKE '%Computer Organization%' LIMIT 1), 2018, 2, 'MCQ', 'The size of  the physical address space of a processor is 2 P bytes. The word
length is 2W bytes. The capacity of cache memory is 2N bytes. The size of each
length (in number of bits) of the tag field is', '{"A": "P - N - log2K    (b) P - N + log2K", "C": "P - N - M - W - log2K   (d) P - N - M - W + log2K"}', '"A"', 'Detailed solution pending.'),
  ('104de04c-4d3d-4641-84c6-231a81cbf37c', (SELECT id FROM subjects WHERE name ILIKE '%Computer Organization%' LIMIT 1), 2019, 1, 'MCQ', 'A certain processor uses a fully associative cache of size 16 kB, The cache
block size is 16 bytes. Assume that the main memory is byte addressable and
uses a 32-bit address. How many bits are required for the Tag and the Index
fields respectively in the addresses generated by the processor?', '{"A": "24 bits and 0 bits   (b) 28 bits and 4 bits", "C": "24 bits and 4 bits   (d) 28 bits and 0 bits"}', '"A"', 'Detailed solution pending.'),
  ('e3252d3e-d654-4d2a-910d-4658570ab9b5', (SELECT id FROM subjects WHERE name ILIKE '%Computer Organization%' LIMIT 1), 2019, 2, 'MCQ', 'A certain processor deploys a single -level cache. The cache block size
is 8 words and the word size is  4 bytes. The memory system uses a  60-MHz
clock. To service a cache miss, the memory controller first takes  1 cycle to
accept the starting address of the block, it then takes 3 cycles to fetch all the
eight words of the block, and finally transmits the words of the requested block
at the rate of  1 word per cycle. The maximum bandwidth for the memory
system when the prog ram running on the processor issues a series of read
operations is  ______×106 bytes/sec', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('941c6db4-bd2e-4d71-b029-f909b026bb92', (SELECT id FROM subjects WHERE name ILIKE '%Computer Organization%' LIMIT 1), 2020, 2, 'MCQ', 'A direct mapped cache memory of 1 MB has a block size of 256 bytes. The
it takes 20 ns to bring the first word of a block from the main memory, while
each subsequent word takes 5 ns. The word size is 64 bits. The average', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('13cc0960-cdff-4b8f-b2a1-c4fd58d786c8', (SELECT id FROM subjects WHERE name ILIKE '%Computer Organization%' LIMIT 1), 2020, 1, 'MCQ', 'A computer system with a word length of 32 bits has a 16 MB byte-addressable
main memory and a 64 KB, 4-way set associative cache memory with a block
size of 256 bytes. Consider the following four physical addresses represented
in hexadecimal notation.
A1 = 0x42C8A4, A2 = 0x546888, A3 = 0x6A289C, A4 = 0x5E4880
Which one of the following is TRUE?
2020]', '{"A": "A1 and A4 are mapped to different cache sets.", "B": "A1 and A3 are mapped to the same cache set.", "C": "A3 and A4 are mapped to the same cache set.", "D": "A2 and A3 are mapped to the same cache set.      [Marks: 2][GATE:"}', '"A"', 'Detailed solution pending.'),
  ('430cd71d-3f9c-4fea-8282-54d079c0c26e', (SELECT id FROM subjects WHERE name ILIKE '%Computer Organization%' LIMIT 1), 2020, 1, 'MCQ', 'Consider a hypothetical processor with an instruction of type LW R1, 20(R2),
which during execution reads a 32 -bit word from memory and stores it in a
32-bit register R1. The effective address of the memory location is obtained by
the addition of a constant 20 and th e contents of register R2. Which of the
following best reflects the addressing mode implemented by this instruction
for operand in memory?
2011]', '{"A": "Immediate Addressing", "B": "Register Addressing", "C": "Register Indirect Scaled Addressing", "D": "Base Indexed Addressing      [Marks: 1][GATE:"}', '"A"', 'Detailed solution pending.'),
  ('f6fc4741-209e-4839-8b64-b6593006b4e7', (SELECT id FROM subjects WHERE name ILIKE '%Computer Organization%' LIMIT 1), 2014, 2, 'MCQ', 'A machine has a 32-bit architecture, with 1-word long instructions. It has 64
registers, each of which is 32 bits long. It needs to support 45 instructions,
which have an immediate operand in addition to two register  operands.
Assuming that the immediate operand is an unsigned integer, the maximum
value of the immediate operand is __________.', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('b612a008-ea37-4ba6-a6eb-14db7d85af0a', (SELECT id FROM subjects WHERE name ILIKE '%Computer Organization%' LIMIT 1), 2015, 1, 'MCQ', 'For computers based on three-address instruction formats, each address field
can be used to specify which of the following:
(S1) A memory operand
(S2) A processor register
(S3) An implied accumulator register', '{"A": "Either S1 or S2     (b) Either S2 or S3", "C": "Only S2 and S3     (d) All of S1, S2 and S3"}', '"A"', 'Detailed solution pending.'),
  ('ad9860bd-89cb-4692-a0dd-414cb0932fe8', (SELECT id FROM subjects WHERE name ILIKE '%Computer Organization%' LIMIT 1), 2016, 1, 'MCQ', 'A processor has 40 distinct instructions and 24 general purpose registers. A
32-bit instruction word has an opcode, two register operands and an
immediate operand. The number of bits available for the immediate operand', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('9dc3cdd3-94aa-4271-a9d2-f524a59999e5', (SELECT id FROM subjects WHERE name ILIKE '%Computer Organization%' LIMIT 1), 2016, 2, 'MCQ', 'Consider a processor with 64 registers and an instruction set of size twelve.
Each instruction has ﬁve distinct ﬁelds, namely, opcode, two source register
identiﬁers, one destination register identi ﬁer, and a twelve -bit immediate
value. Each instruction must be stored in memory in a byte -aligned fashion.
If a program has 100 instructions, the amount of memory (in bytes) consumed', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('d72725ab-a4e4-414a-87fd-da7e62ac2e06', (SELECT id FROM subjects WHERE name ILIKE '%Computer Organization%' LIMIT 1), 2017, 1, 'MCQ', 'Consider C struct defined below:
struct data{
int marks [100];
char grade;
int cnumber;
};
struct data student;
The base address of student is available in register R1. The filed student.
grade can be accessed efficiently using.', '{"A": "Post-increment addressing mode, (R1)+", "B": "Pre-decrement addressing  mode, -(R1)", "C": "Register direct addressing mode, R1", "D": "Index addressing mode, X(R1), where X is an offset represented in 2''s"}', '"A"', 'Detailed solution pending.'),
  ('98e2c769-b07e-4052-8088-8e06790097e2', (SELECT id FROM subjects WHERE name ILIKE '%Computer Organization%' LIMIT 1), 2018, 1, 'MCQ', 'Consider the following processor design characteristics.
I. Register-to-register arithmetic operations only
II. Fixed-length instruction format
III. Hardwired control unit
Which of the characteristics above are used in the design of a RISC
(a)I and II only', '{"B": "II and III only", "C": "I and III only", "D": "I, II and III"}', '"A"', 'Detailed solution pending.'),
  ('69198b0b-619f-46d6-927f-0917c436f03d', (SELECT id FROM subjects WHERE name ILIKE '%Computer Organization%' LIMIT 1), 2018, 2, 'MCQ', 'A processor has 16 integer registers (R0, R1, …, R15) and 64 floating point
registers (F0, F1, … , F63). It uses a 2-byte instruction format. There are four
categories of instructions: Type -1, Type -2, Type-3, and Type 4. Type -1
category consists of four instructions, each with 3 integer register operands
(3Rs). Type-2 category consists of eight instructions, each with 2 floating point
register operands (2Fs). Type -3 category consists of fourteen instruc tions,
each with one integer register operand and one floating point register operand
(1R+1F). Type-4 category consists of N instructions; each with a floating point
registers operand (1F). The maximum value of N is _______.', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('aa54a23d-2c3e-4897-a8c2-1d3e29585fb5', (SELECT id FROM subjects WHERE name ILIKE '%Computer Organization%' LIMIT 1), 2020, 2, 'MCQ', 'A processor has 64 registers and uses 16 -bit instruction format. It has two
types of instructions: I -type and R-type. Each I-type instruction contains an
opcode, a register name, and a 4-bit immediate value. Each R-type instruction
contains an opcode and two  register names. If there are 8 distinct I -type
opcodes, then the maximum number of distinct R-type opcodes is _____.', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('9d23e357-a8cb-45fe-97b5-58057154adf7', (SELECT id FROM subjects WHERE name ILIKE '%Computer Organization%' LIMIT 1), 2009, 2, 'MCQ', 'Consider a 4 stage pipeline processor. The number of cycles needed by the
four instructions I1, I2, I3, I4 in stages S1, S2, S3, S4 is shown below
What is the number of cycles needed to execute the following loop?
For (i=1 to 2) {I1; I2; I3; I4;}', '{"A": "16    (b) 23    (c) 28    (d) 30"}', '"A"', 'Detailed solution pending.'),
  ('e6650ccf-593e-4aa9-8a2a-d819d1546c47', (SELECT id FROM subjects WHERE name ILIKE '%Computer Organization%' LIMIT 1), 2010, 1, 'MCQ', 'A 5-stage pipelined processor has Instruction Fetch (IF), Instruction Decode
(ID), Operand Fetch (OF), Perform Operation (PO) and Write Operand (WO)
stages. The IF, ID, OF and WO stages take 1 clock cycle each for any
3 clock cycles for MUL instruction, and 6 clock cycles for DIV instruction
respectively. Operand forwarding is used in the pipeline. What is the number
of clock cycles needed to execute the following sequence of instructions?', '{"A": "13    (b) 15    (c) 17    (d) 19"}', '"A"', 'Detailed solution pending.'),
  ('60c8a30d-6d28-4d01-8f32-78d0d1e56764', (SELECT id FROM subjects WHERE name ILIKE '%Computer Organization%' LIMIT 1), 2011, 2, 'MCQ', 'Consider an instruction pipeline with four stages (S1, S2, S3 and S4) each with
stage and at the end of the last stage. Delays for the stages and for the pipeline
registers are as given in the figure:
What is the approximate speed up of the pipeline in steady state under ideal
conditions when Compared to the corresponding non -pipeline
implementation?', '{"A": "4.0   (b) 2.5   (c) 1.1  (d) 3.0"}', '"A"', 'Detailed solution pending.'),
  ('6db18f0c-739c-4d23-a002-123ebe504237', (SELECT id FROM subjects WHERE name ILIKE '%Computer Organization%' LIMIT 1), 2012, 2, 'MCQ', 'Register renaming is done in pipelined processors', '{"A": "As an alternative to register allocation at compile time", "B": "For efficient access to function parameters and local variables", "C": "To handle certain kinds of hazards", "D": "As part of address translation"}', '"A"', 'Detailed solution pending.'),
  ('07fe3fd9-21aa-4b8f-b5b5-1954df4de5f3', (SELECT id FROM subjects WHERE name ILIKE '%Computer Organization%' LIMIT 1), 2013, 2, 'MCQ', 'Consider an instruction pipeline with five stages without any branch
prediction: Fetch Instruction (FI), Decode Instruction (DI), Fetch Operand (FO),
Execute Instruction (EI) and Write Operand (WO). The stage delays for FI, DI,
FO, EI and WO are 5 ns, 7 ns, 10 ns, 8 ns and 6 ns, respectively. There are
intermediate storage buffers after each stage and the delay of each buffer is 1
ns. A program consisting of 12 instructions I 1, I2, I3, …, I12 is executed in this
branch target is I9. If the branch is taken during the execution of this program,
the time (in ns) needed to complete the program is', '{"A": "132", "B": "165", "C": "176", "D": "328"}', '"A"', 'Detailed solution pending.'),
  ('8e95699e-0627-4291-af3a-c70208a8f0d5', (SELECT id FROM subjects WHERE name ILIKE '%Computer Organization%' LIMIT 1), 2014, 2, 'MCQ', 'Consider a 6 -stage instruction pipeline, where all stages are perfectly
balanced. Assume that there is no cycle-time overhead of pipelining. When an
respect to non-pipelined execution if 25% of the instructions incur 2 pipeline
stall cycles is ___________.', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('364011e8-2aa4-407e-b95a-f2ce82df7f16', (SELECT id FROM subjects WHERE name ILIKE '%Computer Organization%' LIMIT 1), 2014, 2, 'MCQ', 'Consider two processors P1 and P2 executing the same instruction set. Assume
that under identical conditions, for the same input, a program running on P2
takes 25% less time but incurs 20% more CPI (clock cycles per instruction) as
compared to the program running on P1. If the clock frequency of P1 is 1GHz,
then the clock frequency of P2 (in GHz) is _____', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('da27678f-03c3-4ce5-a3e1-5bc3c569c990', (SELECT id FROM subjects WHERE name ILIKE '%Computer Organization%' LIMIT 1), 2014, 1, 'MCQ', 'Consider the following processors (ns stands for nanoseconds). Assume that
the pipeline registers have zero latency
P1: Four-stage pipeline with stage latencies 1 ns, 2 ns, 2 ns, 1 ns.
P2: Four-stage pipeline with stage latencies 1 ns, 1.5 ns, 1.5 ns, 1.5 ns.
P3: Five-stage pipeline with stage latencies 0.5 ns, 1 ns, 1 ns, 0.6 ns, 1 ns.
P4: Five-stage pipeline with stage latencies 0.5 ns, 0.5 ns, 1 ns, 1 ns, 1.1 ns.
Which processor has the highest peak clock frequency?', '{"A": "P1", "B": "P2", "C": "P3", "D": "P4"}', '"A"', 'Detailed solution pending.'),
  ('d3d268cb-b101-4bc5-9e54-a33ab7d8a425', (SELECT id FROM subjects WHERE name ILIKE '%Computer Organization%' LIMIT 1), 2014, 2, 'MCQ', 'An instruction pipeline has five stages, namely, instruction fetch (IF),
2.2 ns, 2 ns, 1 ns, and 0.75 ns, respectively (ns stands for nanoseconds). To
gain in terms of frequency, the designers have decided to split the ID/RF stage
into three stages (ID, RF1, RF2) each of latency 2.2/3 ns. Also, the EX stage is
split into two stages (E X1, EX2) each of latency 1 ns. The new design has a
total of eight pipeline stages. A program has 20% branch instructions which
execute in the EX stage and produce the next instruction pointer at the end of
the EX stage in the old design and at the end of the EX2 stage in the new
design. The IF stage stalls after fetching a branch instruction until the next
of this program on the old and the new design are P and Q nanoseconds,
respectively. The value of P/Q is __________', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('928633ff-4c13-4dd7-a76d-06fd0dd9d83e', (SELECT id FROM subjects WHERE name ILIKE '%Computer Organization%' LIMIT 1), 2015, 2, 'MCQ', 'Consider a non -pipelined processor with a clock rate of 2.5 gigahertz and
average cycles per instruction of four. The same processor is upgraded to a
clock speed is reduced to 2 gigahertz. Assume that there are no stalls in the', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('000743c0-d0c2-4e3f-8606-a60450532eb9', (SELECT id FROM subjects WHERE name ILIKE '%Computer Organization%' LIMIT 1), 2015, 2, 'MCQ', 'Consider the sequence of machine instructions given below:
MUL R5, R0, R1
DIV R6, R2, R3
ADD R7, R5, R6
SUB R8, R7, R4
In the above sequence, R0 to R8 are general purpose registers. In the
performed on the second and the third registers. This sequence of instructions
is to be executed in a pipelined instruction processor with the Following 4
stages: (1) Instruction Fetch and Decode (IF), (2) Operand Fetch (OF), (3)
Perform Operation (PO) and (4) write back the result (WB). The IF, OF and WB
stages take 1 clock cycle each for any instruction. The PO stage takes 1 clock
cycle for ADD or SUB instruction, 3 clock cycles for MUL instruction and 5
clock cycles for DIV instruction. The pipelined processor uses operand
forwarding from the PO stage to the OF stage. The number of clock cycles
taken For the execution of the above sequence of instructions is ___________.', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('6870bda7-55ac-4832-a150-ff20c7639105', (SELECT id FROM subjects WHERE name ILIKE '%Computer Organization%' LIMIT 1), 2015, 2, 'MCQ', 'Consider the following reservation table for a pipeline having three stages 𝑆1,
S2 and 𝑆3.', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('2064ac17-d731-446a-9066-0f4bfcb9bbbf', (SELECT id FROM subjects WHERE name ILIKE '%Computer Organization%' LIMIT 1), 2015, 1, 'MCQ', 'Consider the following code sequence having five instructions 𝐼1 to 𝐼5. Each of
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
more stalls which one of above statements is/are correct?', '{"A": "Only S1 is true    (b) Only S2 is true", "C": "Only S1 and S3 are true   (d) Only S2 and S3 are true"}', '"A"', 'Detailed solution pending.'),
  ('6b826b99-c69b-402b-8ce1-b74ce5ea0d4b', (SELECT id FROM subjects WHERE name ILIKE '%Computer Organization%' LIMIT 1), 2016, 2, 'MCQ', 'The stage delays in a 4-stage pipeline are 800, 500, 400 and 300 picoseconds.
The first stage (with delay 800 picoseconds) is replaced with functionally
equivalent design involving t wo stages with respective delays 600 and 350
picoseconds. The throughput increase of the pipeline is _____________________', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('87ae5285-aff2-46e5-a264-870fe61e14fc', (SELECT id FROM subjects WHERE name ILIKE '%Computer Organization%' LIMIT 1), 2016, 2, 'MCQ', 'Consider a 3 GHz (gigahertz) processor with a three -stage pipeline and stage
latencies τ1, τ2, τ3 and such that τ1 = 3τ2/4 = 2τ3. If the longest pipeline stage
is split into two pipeline stages of equal latency, the new frequency is _________
GHz, ignoring delays in the pipeline registers.', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('a095aa77-a717-4dc4-8d14-4442530d179e', (SELECT id FROM subjects WHERE name ILIKE '%Computer Organization%' LIMIT 1), 2016, 2, 'MCQ', 'Suppose the functions F and G can be computed in 5 and 3 nanoseconds by
functional units UF and UG, respectively. Given two instances of UF and two
instances of UG, it is required to implement the computation F (G(Xi)) for 1 ≤ i
≤ 10. Ignoring all other delays, the minimum time  required to complete this', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('2694d080-63c8-485f-b220-74015d2d12c9', (SELECT id FROM subjects WHERE name ILIKE '%Computer Organization%' LIMIT 1), 2017, 2, 'MCQ', 'Instruction execution in a processor is divided into 5 stage, Instruction Fetch
(IF), Instruction decode (ID), Operand Fetch (OF), Execute (EX), and Write Back
(WB). These stages take 5, 4, 20, 10, and 3 nanoseconds (ns) respectively. A
pair of consecutive stages with a delay of 2 ns. Two pipelined implementations
of the processor are contemplated;
 a naive pipeline implementation (NP) with 5 stages and
 An efficient pipeline (EP) where the OF stage is divided into stages OF1 and
OF2 with Execution times of 12 ns respectively.
The speedup (correct to two decimal places) achived by EP over NP in executing
20 Independent instructions with no hazards is __________.', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('4813d391-1137-44da-bff7-8ca3e33f2cd5', (SELECT id FROM subjects WHERE name ILIKE '%Computer Organization%' LIMIT 1), 2017, 2, 'MCQ', 'Consider a RISC machine where each instruction is exactly 4 bytes long.
Conditional and unconditional branch instructions use PC - relative
addressing mode with Offset specified in bytes to the target location of the
branch instruction. Further the Offset is always with respect to the address of
the next instruction in the program sequence. Consider the following
decimal value of the Offset is __________.
Instr. No. Instruction
i:
i+1:
i+2:
i+3:
add R2, R3, R4
sub R5, R6, R7
cmp R1, R9, R10
beq R1, Offset', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('2a5eaeb0-cacb-4995-a6f5-e455fba4b682', (SELECT id FROM subjects WHERE name ILIKE '%Computer Organization%' LIMIT 1), 2018, 2, 'MCQ', 'The instruction pipeline of a RISC processor has the following stages:
Operation (PO) and Writeback (WB). The IF, ID, OF and WB stages take 1 clock
cycle each for every instruction. Consider a Sequence of 100 instr uctions. In
the PO stage, 40 instructions take 3 clock cycles each, 35 instructions take 2
clock cycles each, and the remaining 25 instructions take 1 clock cycle each.
Assume that there are no data hazards and no control hazards. The number
of clock cycle s required for completion of execution of the sequence of', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('3072fad7-d518-47ee-a593-e43e7816665e', (SELECT id FROM subjects WHERE name ILIKE '%Computer Organization%' LIMIT 1), 2020, 2, 'MCQ', 'Consider a non -pipelined processor operating at 2.5 GHz. It takes 5 clock
cycles to complete an instruction. You are going to make a 5-stage pipeline out
of this processor. Overheads associated with pipelining force you to operate
the pipelined processor at 2 GHz. In a given program, assume that 30% are
each due to cache misses and 50% of the branch instructions cause stalls of
2 cycles each. Assume that there are no stalls associated with the execution of
ALU instructions. For this program, the speedup ach ieved by the pipelined
Input – Output and Control', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('809578ba-7c2c-4a1c-9a31-2fc78c366837', (SELECT id FROM subjects WHERE name ILIKE '%Computer Organization%' LIMIT 1), 2020, 1, 'MCQ', 'A computer handles several interrupt sources of which the following are
relevant for this question.
 Interrupt from CPU temperature sensor (raises interrupt if CPU
temperature is too high)
 Interrupt from Mouse(raises interrupt if the mouse is moved or a button is
pressed)
 Interrupt from Keyboard(raises interrupt when a key is pressed or
released)
 Interrupt from Hard Disk(raises interrupt when a disk read is completed)
Which one of these will be handled at the HIGHEST priority?
2011]', '{"A": "Interrupt from Hard Disk", "B": "Interrupt from Mouse", "C": "Interrupt from Keyboard", "D": "Interrupt from CPU temperature sensor   [Marks: 1][GATE:"}', '"A"', 'Detailed solution pending.'),
  ('f9c6166b-0477-4468-93cc-0783191c7100', (SELECT id FROM subjects WHERE name ILIKE '%Computer Organization%' LIMIT 1), 2020, 1, 'MCQ', 'A hard disk has 63 sectors per track, 10 platters each with 2 recording
surfaces and 1000 cylinders. The address of a sector is given as a triple (c, h,
s), where c is the cylinder number, h is the surface number and s is the sector
number. Thus, the 0 th sector is addressed as (0, 0, 0), the 1 st sector as (0, 0,
1), and so on. The address <400, 16, 29> corresponds to sector number:
[Marks: 2][GATE: 2009', '{"A": "505035", "B": "505036", "C": "505037", "D": "505038"}', '"A"', 'Detailed solution pending.'),
  ('35fbd496-b782-403b-b4b0-3c511972a734', (SELECT id FROM subjects WHERE name ILIKE '%Computer Organization%' LIMIT 1), 2020, 1, 'MCQ', 'A hard disk has 63 sectors per track, 10 platters each with 2 recording
surfaces and 1000 cylinders. The address of a sector is given as a triple (c, h,
s), where c is the cylinder number, h is the surface number and s is the
sector number. Thus, the 0th sector is addressed as (0, 0, 0), the 1st sector
as (0, 0, 1), and so on. The address 1039th corresponds to sector number:', '{"A": "(0,15,31)", "B": "(0,16,30)", "C": "(0,16,31)", "D": "(0,17,31)       [Marks: 2][GATE: 2009]"}', '"A"', 'Detailed solution pending.'),
  ('a8b93286-883c-482c-af6f-cd96f542140e', (SELECT id FROM subjects WHERE name ILIKE '%Computer Organization%' LIMIT 1), 2009, 2, 'MCQ', 'A CPU generally handles an interrupt by executing an interrupt service
routine
current instruction.', '{"A": "As soon as an interrupt is raised.", "B": "By checking the interrupt register at the end of fetch cycle.", "C": "By checking the interrupt register after finishing the execution of the", "D": "By checking the interrupt register at fixed time intervals"}', '"A"', 'Detailed solution pending.'),
  ('16bbe305-8422-4cfd-924f-9f48ee4d6be0', (SELECT id FROM subjects WHERE name ILIKE '%Computer Organization%' LIMIT 1), 2020, 1, 'MCQ', 'A main memory unit with a capacity of 4 megabytes is built using 1M × 1 -bit
DRAM chips. Each DRAM chip has 1K rows of cells with 1K cells in each row.
The time taken for a single refresh operation is 100 nanoseconds. The time
required to perform one refresh operation on all the cells in the memory unit
is', '{"A": "100 nanoseconds", "B": "100\u00d7210 nanoseconds", "C": "100\u00d7220 nanoseconds", "D": "3200\u00d7220 nanoseconds    [Marks: 1][GATE: 2010]"}', '"A"', 'Detailed solution pending.'),
  ('eb82143d-c604-4e7b-903d-b58c09d1e95c', (SELECT id FROM subjects WHERE name ILIKE '%Computer Organization%' LIMIT 1), 2011, 2, 'MCQ', 'On a non-pipelined sequential processor, a program segment, which is a part
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
designer of the system also has an alternate approach of using DMA controller
to implement the same transfer. The DMA controller requires 20 clock cycles
for initialization and other overheads. Each DMA transfer cycle takes two clock
cycles to transfer one byte of data from the device to the memory. What is the
approximate speedup when the DMA controller based design is used in place
of the interrupt driven program based input-output?', '{"A": "3.4    (b) 4.4    (c) 5.1  (d) 6.7"}', '"A"', 'Detailed solution pending.'),
  ('9b7d510e-de22-45fe-84df-3156fa3cd6bb', (SELECT id FROM subjects WHERE name ILIKE '%Computer Organization%' LIMIT 1), 2011, 1, 'MCQ', 'An application loads 100 libraries at start -up. Loading each library requi res
exactly one disk access. The seek time of the disk to a random location is given
as 10 ms. Rotational speed of disk is 6000 rpm. If all 100 libraries are loaded
from random locations on the disk, how long does it take to load all libraries?
(The time t o transfer data from the disk block once the head has been
positioned at the start of the block may be neglected)', '{"A": "0.50 sec   (b) 1.50 sec   (c) 1.25 sec  (d) 1.00 sec"}', '"A"', 'Detailed solution pending.'),
  ('08b0940a-fd2e-40a3-b4c5-6354f4a01265', (SELECT id FROM subjects WHERE name ILIKE '%Computer Organization%' LIMIT 1), 2012, 1, 'MCQ', 'The amount of ROM needed to implement a 4 bit multiplier is', '{"A": "64 bits   (b) 128 bits   (c) 1 Kbits  (d) 2 Kbits"}', '"A"', 'Detailed solution pending.'),
  ('0bd70d70-49e6-4a85-bd55-f247f77fc0f8', (SELECT id FROM subjects WHERE name ILIKE '%Computer Organization%' LIMIT 1), 2013, 1, 'MCQ', 'Consider the following sequence of micro-operations.
MBR ← PC
MAR ← X
PC ← Y
Which one of the following is a possible operation performed by this sequence?', '{"A": "Instruction fetch", "B": "Operand fetch", "C": "Conditional branch", "D": "Initiation of interrupt service"}', '"A"', 'Detailed solution pending.'),
  ('4db15da6-eea9-4c4d-9898-2678b7e65863', (SELECT id FROM subjects WHERE name ILIKE '%Computer Organization%' LIMIT 1), 2013, 1, 'MCQ', 'Consider a hard disk with 16 recording surfaces (0-15) having 16384 cylinders
(0-16383) and each cylinder contains 64 sectors (0-63). Data storage capacity
in each sector is 512 bytes. Data are organized cylinder -wise and the
addressing format is. A file of size 42797 KB is stored in the disk and the
starting disk location of the file is <1200, 9, 40>. What is the cylinder number
of the last sector of the file, if it is stored in a contiguous manner?
1284', '{"A": "1281   (b) 1282   (c) 1283   (d)"}', '"A"', 'Detailed solution pending.'),
  ('204ceb16-5e58-497e-b343-f7eff7315aea', (SELECT id FROM subjects WHERE name ILIKE '%Computer Organization%' LIMIT 1), 2013, 2, 'MCQ', 'A RAM chip has a capacity of 1024 words of 8 bits each (1K × 8). The number
of 2 × 4 decoders with enable line needed to construct a 16K × 16 RAM from
1K × 8 RAM is', '{"A": "4     (b) 5     (c) 6     (d) 7"}', '"A"', 'Detailed solution pending.'),
  ('616637e7-59b3-4a36-89ab-768475852099', (SELECT id FROM subjects WHERE name ILIKE '%Computer Organization%' LIMIT 1), 2014, 2, 'MCQ', 'Consider a main memory system that consists of 8 memory modules attached
to the system bus, Which is one word wide. When a write request is made, the
bus is occupied for 100 nanoseconds (ns) By the data, address, and control
signals. During the same 100 ns, and for 500 ns thereafter, the addressed
(internal) Operation of different memory modules may overlap in time, but only
one request can be on the bus at any time. The maximum number of stores (of
one word each) that can be initiated in 1 Millisecond is ____________', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('a16bd31c-a335-4f88-a5ad-cb469b8be8b0', (SELECT id FROM subjects WHERE name ILIKE '%Computer Organization%' LIMIT 1), 2015, 2, 'MCQ', 'Consider a disk pack with a seek time of 4 milliseconds and rotational speed
of 10000 rotations per minute (RPM). It has 600 sectors per track and each
sector can store 512 bytes of data. Consider a file stored in the disk. The  file
contains 2000 sectors. Assume that every sector access Necessitates a seek,
and the average rotational latency for accessing each sector is half of the time
For one complete rotation. The total time (in milliseconds) needed to read the', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('46953567-b7a5-4367-8675-6c3b553c729b', (SELECT id FROM subjects WHERE name ILIKE '%Computer Organization%' LIMIT 1), 2015, 2, 'MCQ', 'Consider a typical disk that rotates at 15000 rotations per minute (RPM) and
has a transfer rate of 50×106 bytes/sec. If the average seek time of the disk is
twice the average rotational delay and the controller’s transfer time is 10 times
the disk transfer time, the average time (in milliseconds) to read or write a 512-
2]', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('45aca4af-7e3d-4d42-9f0e-708c5cf08c6e', (SELECT id FROM subjects WHERE name ILIKE '%Computer Organization%' LIMIT 1), 2020, 1, 'MCQ', 'Consider a processor with byte -addressable memory. Assume that all
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
execution of the CALL instruction, the value of the stack pointer is', '{"A": "(016A)16       (b) (016C)16", "C": "(0170)16       (d) (0172)16"}', '"A"', 'Detailed solution pending.'),
  ('da7d1dc7-1c7d-49e5-8dcb-417397f90a8d', (SELECT id FROM subjects WHERE name ILIKE '%Computer Organization%' LIMIT 1), 2016, 2, 'MCQ', 'The size of the data count register of a DMA controller is 16 bits. The processor
needs to transfer a file of 29,154 kilobytes from disk to main memory. The
controller needs to get the control of the system bus from the processor to
transfer the file from the disk to main memory is _________.', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('a97a5aca-7490-4f0a-b76d-c4a5c7a1c824', (SELECT id FROM subjects WHERE name ILIKE '%Computer Organization%' LIMIT 1), 2018, 1, 'MCQ', 'The following are some events that occur after a device controller issues an
interrupt while Process L is under execution.
(P) The processor pushes the process status of L onto the control stack.
(Q) The processor finishes the execution of the current instruction.
(R) The processor executes the interrupt service routine.
(S) The processor pops the process status of L from the control stack.
(T) The processor loads the new PC value based on the interrupt.
Which one of the following is the correct order in which the events above
occur?', '{"A": "QPTRS", "B": "PTRSQ", "C": "TRPQS", "D": "QTPRS"}', '"A"', 'Detailed solution pending.'),
  ('67cd94b8-4d0f-40a8-8d8a-fb99fd3d7ce7', (SELECT id FROM subjects WHERE name ILIKE '%Computer Organization%' LIMIT 1), 2020, 1, 'MCQ', 'A 32-bit wide main memory unit with a capacity of 1 GB is built using 256M
× 4-bit DRAM Chips. The number of rows of memory cells in the DRAM chip is
214. The time taken to perform one refresh operation is 50 nanoseconds. The
refresh period is 2 milliseconds. The Percentage (rounded to the closest integer)
of the time available for performing the memory Read/write operations in the
main memory unit is __________.', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('7117480e-0042-4ee9-a7e9-9de8c7d89b59', (SELECT id FROM subjects WHERE name ILIKE '%Computer Organization%' LIMIT 1), 2019, 1, 'MCQ', 'The chip select logic for a certain DRAM chip in a memory system design is
shown below. Assume that the memory system has 16 address lines denoted
by A15 to A0. What is the range of addresses (in hexadecimal) of the memory
system that can get enabled by the chip select (CS) signal?', '{"A": "C800 to C8FF", "B": "C800 to CFFF", "C": "DA00 to DFFF", "D": "DA00 to DFFF"}', '"A"', 'Detailed solution pending.'),
  ('cab274aa-3c66-4fdc-8c31-6950d20d5f9d', (SELECT id FROM subjects WHERE name ILIKE '%Computer Organization%' LIMIT 1), 2020, 1, 'MCQ', 'Consider the following statements.
I. Daisy chaining is used to assign priorities in attending interrupts.
II. When a device raises a vectored interrupt, the CPU does polling to identify
the source of the interrupt.
III. In polling, the CPU periodically checks the status bits to know if any device
needs its attention.
IV. During DMA, both the CPU and DMA controller can be bus m asters at the
same time.
Which of the above statements is/are TRUE?', '{"A": "I and IV only", "B": "I and II only", "C": "III only", "D": "I and III only       [Marks: 2][GATE: 2020]"}', '"A"', 'Detailed solution pending.'),
  ('900d9a2a-c7ac-468e-aa1c-e932e302c59e', (SELECT id FROM subjects WHERE name ILIKE '%Computer Organization%' LIMIT 1), 2020, 2, 'MCQ', 'Consider the following data path diagram.
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
CSO PYQs Answer key:', '{"A": "2, 1, 4, 5, 3     (b) 1, 2, 4, 3, 5", "C": "3, 5, 2, 1, 4     (d) 3, 5, 1, 2, 4"}', '"A"', 'Detailed solution pending.'),
  ('a6b3e277-6db2-457c-bab0-973c07840e90', (SELECT id FROM subjects WHERE name ILIKE '%Computer Organization%' LIMIT 1), 2009, 2, 'MCQ', 'Let R and S be relational schemes such that R = {a, b, c} and S = {c}. Now
consider the following queries on the database
I. πR−S(r) − πR−S (πR−S(r) × s − πR−S,S(r))
II. {t ∈πR−S(r) ∧∀u∈s (∃v∈r(u = v[S] ∧t = v[R−S]))}
III. {t ∈πR−S(r) ∧∀v∈r (∃u∈s (u = v[S] ∧t = v[R−S]))}
IV.  Select R.a, R.b From R, S Where R.c = S.c
Which of the above queries are equivalent?', '{"A": "I and II", "B": "I and III", "C": "II and IV", "D": "III and IV"}', '"A"', 'Detailed solution pending.'),
  ('19831245-0c28-47bc-9fdf-41d4bb74e68c', (SELECT id FROM subjects WHERE name ILIKE '%Computer Organization%' LIMIT 1), 2009, 2, 'MCQ', 'Consider the following relational schema:
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
Which one of the following is the correct interpretation of the above query?', '{"A": "Find the names of all suppliers who have supplied a non-blue part.", "B": "Find the names of all suppliers who have not supplied a non-blue part.", "C": "Find the names of all suppliers who have supplied only blue parts.", "D": "Find the names of all suppliers who have not supplied only blue parts."}', '"A"', 'Detailed solution pending.'),
  ('9fcd9bee-fd4d-43c6-9f44-dd1efec1fe3b', (SELECT id FROM subjects WHERE name ILIKE '%Computer Organization%' LIMIT 1), 2010, 1, 'MCQ', 'A relational schema for a train reservation database is given below.
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
Passenger.pid = Reservation.pid)', '{"A": "1,0       (b) 1, 2", "C": "1, 3       (d) 1, 5"}', '"A"', 'Detailed solution pending.'),
  ('b7f0946d-7e78-4465-9904-a98b29a9535c', (SELECT id FROM subjects WHERE name ILIKE '%Computer Organization%' LIMIT 1), 2020, 1, 'MCQ', 'Consider a database table T containing two columns X and Y each of type
integer. After the creation of the table, one record (X = 1, Y = 1) is inserted in
the table. Let MX and MY denote the respective maximum values of X and Y
among all records in the table at any point in time. Using MX and MY, new
records are inserted in the table 128 times with X and Y values being MX +
1, 2*MY + 1 respectively. It may be noted that each time after the ins ertion,
values of MX and MY change. What will be the output of the following SQL
query after the steps mentioned above are carried out?
SELECT Y FROM T WHERE X = 7;
[Marks: 2][GATE:2011', '{"A": "127", "B": "255", "C": "129", "D": "257"}', '"A"', 'Detailed solution pending.'),
  ('2a91c01a-3063-4ca6-8247-4fa447a2457c', (SELECT id FROM subjects WHERE name ILIKE '%Computer Organization%' LIMIT 1), 2011, 2, 'MCQ', 'Database table by name Loan_Records is given below.
Borrower Bank_Manager Loan_Amount
Ramesh Sunderajan 10000.00
Suresh Ramgopal 5000.00
Mahesh Sunderajan 7000.00
What is the output of the following SQL query?
SELECT Count(*)
FROM ((SELECT Borrower, Bank_Manager FROM Loan_Records) AS S
NATURAL JOIN
(SELECT Bank_Manager, Loan_Amount FROM Loan_Records) AS T);', '{"A": "3    (b) 9    (c) 5    (d) 6"}', '"A"', 'Detailed solution pending.'),
  ('47c05019-3ef9-46d6-97ce-243887b56a4c', (SELECT id FROM subjects WHERE name ILIKE '%Computer Organization%' LIMIT 1), 2012, 1, 'MCQ', 'Which of the following statements are TRUE about an SQL query?
P: An SQL query can contain a HAVING clause even if it does not have a
GROUP BY clause
Q: An SQL query can contain a HAVING clause only if it has a GROUP BY
clause
R: All attributes used in the GROUP BY clause must appear in the SELECT
clause
S: Not all attributes used in the GROUP BY clause need to appear in the
SELECT clause', '{"A": "P and R   (b) P and S   (c) Q and R  (d) Q and S"}', '"A"', 'Detailed solution pending.'),
  ('f4d02510-d61f-4e94-8b25-af4ed068dfbb', (SELECT id FROM subjects WHERE name ILIKE '%Computer Organization%' LIMIT 1), 2012, 2, 'MCQ', 'Suppose R1(A, B) and R2(C, D) are two relation schemas. Let r1 and r2 be
the corresponding relation instances. B is a foreign key that refers to C in r2.
If data in r1 and r2 satisfy referential integrity constraints, which of the
following is ALWAYS TRUE?
C(r2) = ∅
C(r2)', '{"A": "\u03a0B(r1", "B": "\u03a0C(r2) \u2212 \u03a0B(r1) = \u2205", "C": "\u03a0B(r1", "D": "\u03a0B(r1) \u2212 \u03a0C(r2) \u2260 \u2205"}', '"A"', 'Detailed solution pending.'),
  ('91428cb2-81b0-4951-9a1a-4b45d706199b', (SELECT id FROM subjects WHERE name ILIKE '%Computer Organization%' LIMIT 1), 2012, 2, 'MCQ', 'Consider the following relations A, B, C.
How many tuples does the result of the following relational algebra
expression contain? Assume that the schema of A U B is the same as that of
A.
(A ∪B)⋈A.Id>40 ∨C.Id< 15 C', '{"A": "7    (b) 4     (c) 5    (d) 9"}', '"A"', 'Detailed solution pending.'),
  ('37ccb854-db4e-4e82-98b1-2f36bd6afeb2', (SELECT id FROM subjects WHERE name ILIKE '%Computer Organization%' LIMIT 1), 2020, 1, 'MCQ', 'Consider the following relations A, B, C.
How many tuples does the result of the following SQL query contain?
SELECT A.Id
FROM A
WHERE A.Age> ALL(SELECT B.Age
FORM B
WHERE B Name =’Arun’)
(a)4   (b)3    (c)0   (d)1
[Marks: 2][GATE:
2012]', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('606f83fc-8f37-4716-b69b-276f15c8843b', (SELECT id FROM subjects WHERE name ILIKE '%Computer Organization%' LIMIT 1), 2013, 2, 'MCQ', 'Consider the following relational schema.
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
(iv) {<SN>∣∃SR ∃RP (<SR,SN>∈Students ∧<SR,107,RP>∈Registration ∧RP > 90)', '{"A": "I, II, III and IV     (b) I, II and III only", "C": "I, II and IV only    (d) II, III and IV only"}', '"A"', 'Detailed solution pending.'),
  ('3fd54e2f-9e12-4aa9-9457-93a1fe1bc8ed', (SELECT id FROM subjects WHERE name ILIKE '%Computer Organization%' LIMIT 1), 2020, 1, 'MCQ', 'Given the following statements:
S1: A foreign key declaration can always be replaced by an equivalent check
assertion in SQL.
S2: Given the table R(a, b, c) where a and b together form the primary key,
the following is a valid table definition.
CREATE TABLE S (
a INTEGER,
d INTEGER,
e INTEGER,
PRIMARY KEY (d),
FOREIGN KEY (a) references R
)
Which one of the following statements is CORRECT?', '{"A": "S1 is TRUE and S2 is FALSE.", "B": "Both S1 and S2 are TRUE.", "C": "S1 is FALSE and S2 is TRUE.", "D": "Both S1 and S2 are FALSE.  [Marks: 1][GATE:  2014][SET-1]"}', '"A"', 'Detailed solution pending.'),
  ('5b5ec6dd-7394-4829-833f-34e8f270e6bc', (SELECT id FROM subjects WHERE name ILIKE '%Computer Organization%' LIMIT 1), 2014, 2, 'MCQ', 'Given the following schema:
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
table joins in a subquery.', '{"A": "It executes but does not give the correct result.", "B": "It executes and gives the correct result.", "C": "It generates an error because of pairwise comparison.", "D": "It generates an error because the GROUP BY clause cannot be used with"}', '"A"', 'Detailed solution pending.'),
  ('a2f7ba24-ceab-4c37-a7e8-83306890160a', (SELECT id FROM subjects WHERE name ILIKE '%Computer Organization%' LIMIT 1), 2014, 2, 'MCQ', 'SQL allows tuples in relations, and correspondingly defines the multiplicity
of tuples in the result of joins. Which one of the following queries always gives
the same answer as the nested query shown below:
select * from R where a in (select S.a from S)', '{"A": "select R.* from R, S where R.a = S.a", "B": "select distinct R.* from R,S where R.a = S.a", "C": "select R.* from R, (select distinct a from S) as S1 where R.a  = S1.a", "D": "select R.* from R,S where R.a = S.a and is unique R"}', '"A"', 'Detailed solution pending.'),
  ('3d09c2c9-3f2e-4af8-b94c-599893851783', (SELECT id FROM subjects WHERE name ILIKE '%Computer Organization%' LIMIT 1), 2014, 2, 'MCQ', 'What is the optimized version of the relation algebra expression
πA1(πA2(σF1(σF2(r)))), where A1, A2 are sets of attributes in r with A1 ⊂A2 and
F1, F2 are Boolean expressions based on the attributes in r?', '{"A": "\u03c0A1(\u03c3(F1\u2227F2)(r))     (b) \u03c0A1(\u03c3(F1\u2228F2)(r))", "C": "\u03c0A2(\u03c3(F1\u2227F2)(r))     (d) \u03c0A2(\u03c3(F1\u2228F2)(r))"}', '"A"', 'Detailed solution pending.'),
  ('04f67f23-8006-44bb-9938-33dabbac3007', (SELECT id FROM subjects WHERE name ILIKE '%Computer Organization%' LIMIT 1), 2014, 2, 'MCQ', 'Consider the relational schema given below, where eId of the relation
dependent is a foreign key referring to empId of the relation employee.
Assume that every employee has at least one associated dependent in the
dependent relation.
Employee (empId, empName, empAge)
Dependent(depId, eId, depName, depAge)
Consider the following relational algebra query:
ΠempId(employee)−ΠempId(employee ⋈ (empId=eID)∧(empAge≤depAge)depen
dent)
The above query evaluates to the set of  empIds of employees whose age is
greater than that of', '{"A": "Some dependent.", "B": "All dependents.", "C": "Some of his/her dependents.", "D": "All of his/her dependents."}', '"A"', 'Detailed solution pending.'),
  ('8dd36e0c-317b-4cd6-b3b8-465473a52a54', (SELECT id FROM subjects WHERE name ILIKE '%Computer Organization%' LIMIT 1), 2014, 2, 'MCQ', 'Consider the following relational schema:
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
rating.', '{"A": "Names of all the employees with at least one of their customers having a", "B": "Names of all the employees with at most one of their customers having a", "C": "Names of all the employees with none of their customers having a", "D": "Names of all the employees with all their customers having a \u2018GOOD\u2019"}', '"A"', 'Detailed solution pending.'),
  ('e0d42c90-2a17-486f-978f-757f25d54e05', (SELECT id FROM subjects WHERE name ILIKE '%Computer Organization%' LIMIT 1), 2015, 1, 'MCQ', 'SELECT operation in SQL is equivalent to
retains duplicates', '{"A": "the selection operation in relational algebra", "B": "the selection operation in relational algebra, except that SELECT in SQL", "C": "the projection operation in relational algebra", "D": "the projection operation in relational algebra, except that SELECT in"}', '"A"', 'Detailed solution pending.'),
  ('416395db-de2f-43c6-9555-611b8ca3b08f', (SELECT id FROM subjects WHERE name ILIKE '%Computer Organization%' LIMIT 1), 2015, 2, 'MCQ', 'Consider the following relations:
Consider the following SQL query.
SELECT S.Student_Name, sum(P.Marks)
FROM Student S, Performance P
WHERE S.Roll_No = P.Roll_No
GROUP BY S.Student_Name
The number of rows that will be returned by the SQL query is _____________.', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('a21f4142-48b1-41f1-89ef-10d135cf9ff4', (SELECT id FROM subjects WHERE name ILIKE '%Computer Organization%' LIMIT 1), 2020, 1, 'MCQ', 'Consider two relations R1 (A, B) with the tuples (1, 5), (3, 7) and R2 (A, C) =
(1, 7),   (4, 9). Assume that R (A, B, C) is the full natural outer join of R1
and R2. Consider the following tuples of the form (A,B,C): a = (1,5,null), b =
(1,null,7), c = (3, null, 9), d = (4,7,null), e = (1,5,7), f = (3,7,null), g =
(4,null,9). Which one of the following statements is correct?', '{"A": "R contains a, b, e, f, g but not c, d.", "B": "R contains all of a, b, c, d, e, f, g.", "C": "R contains e, f, g but not a, b.", "D": "R contains e but not f, g.    [Marks: 2][GATE: 2015][SET-2]"}', '"A"', 'Detailed solution pending.'),
  ('2394f679-1ab6-4cdc-8d09-9cbe5640aca5', (SELECT id FROM subjects WHERE name ILIKE '%Computer Organization%' LIMIT 1), 2015, 1, 'MCQ', 'Consider the following relation
Cinema (theater, address, capacity)
Which of the following options will be needed at the end of the SQL query
SELECT P1.address FROM Cinema P1
Such that it always finds the addresses of theaters with maximum capacity?', '{"A": "WHERE P1.capacity >= All (select P2.capacity from Cinema P2)", "B": "WHERE P1.capacity >= Any (select P2.capacity from Cinema P2)", "C": "WHERE P1.capacity > All (select max(P2.capacity) from Cinema P2)", "D": "WHERE P1.capacity > Any (select max(P2.capacity) from Cinema P2)"}', '"A"', 'Detailed solution pending.'),
  ('22aa6ffe-c8e4-4aa2-a439-73bcd152996a', (SELECT id FROM subjects WHERE name ILIKE '%Computer Organization%' LIMIT 1), 2016, 2, 'MCQ', 'Consider the following database table named water_schemes:
The number of tuples returned by the following SQL query is
with total(name, capacity) as
select district_name, sum(capacity)
from water_schemes
group by district_name
with total_avg(capacity) as
select avg(capacity)
from total
select name
from total, total_avg', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('8f0c3931-b85a-4091-b6d6-0ac1b00a6792', (SELECT id FROM subjects WHERE name ILIKE '%Computer Organization%' LIMIT 1), 2017, 1, 'MCQ', 'Consider a database that has the relation schema CR(StudentName,
CourseName). An instance of the schema CR is as given below.
The following query is made on the database.
T1 ←ПCourseName(σStudentName=''SA''(CR))
T2 ← CR ÷ T1', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('9a202877-876c-4840-9383-9eba3dc4b802', (SELECT id FROM subjects WHERE name ILIKE '%Computer Organization%' LIMIT 1), 2017, 2, 'MCQ', 'Consider a database that has the relation schemas EMP (EmpId, EmpName,
DepId), and DEPT (DeptName, DeptId). Note that the DepId can be permitted
to be NULL in the relation EMP. Consider the following queries on the
database expressed in tuple relational calculus.
I. {t | ∃u ∈ EMP (t[EMPName] = u[EmpName] ∧∀v ∈ DEPT (t[DeptId] ≠
v[DeptId]))}
II. {t | ∃u ∈ EMP (t[EMPName] = u[EmpName] ∧∃v ∈ DEPT (t[DeptId] ≠
v[DeptId]))}
III. {t | ∃u ∈ EMP (t[EMPName] = u[EmpName] ∧∃v ∈ DEPT (t[DeptId] =
v[DeptId]))}
Which of the above queries are safe?', '{"A": "I and II only", "B": "I and III only", "C": "II and III only", "D": "I, II, and III"}', '"A"', 'Detailed solution pending.'),
  ('422fd48e-4e53-471e-8827-8e4ace5f1a7f', (SELECT id FROM subjects WHERE name ILIKE '%Computer Organization%' LIMIT 1), 2017, 1, 'MCQ', 'Consider the following tables T1 and T2:
In table T1, P is the primary key; Q is the foreign key referencing R in table
T2 with on -delete cascade and on -update cascade. In table T2, R is the
primary key and S is the foreign key referencing P in the table T1 with on -
delete set NULL and on-update cascade. In order to delete record (3, 8) from
table, numbers of additional record that need to be deleted from table T1 is
_________.', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('fa493e73-3ebc-40a2-bcbe-7805eefc6103', (SELECT id FROM subjects WHERE name ILIKE '%Computer Organization%' LIMIT 1), 2017, 2, 'MCQ', 'Consider the following database table named top_scorer.
Consider the following SQL query:
SELECT ta.player FROM top_scorer AS ta
WHERE ta.goals > ALL (SELECT tb.goals
FROM top_scorer AS tb
WHERE tb.country = ''Spain'')
AND ta.goals > ANY (SELECT tc.goals
FROM top_scorer AS tc
WHERE tc.country = ''Germany'')
The number of tuples returned by the above SQL query is ____.', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('4b1b25ab-7db0-4d7b-9593-72c843f2f96d', (SELECT id FROM subjects WHERE name ILIKE '%Computer Organization%' LIMIT 1), 2018, 2, 'MCQ', 'Consider the relations r(A, B) and s(B, C), where s.Bis a primary key and r.Bis
a foreign key referencing s.B. Consider the query
Q: 𝑟⋈(𝜎𝐵<5(𝑠))
Let LOJ denote the natural left outer -join operation. Assume that r and s
contain no null values. Which one of the following queries is NOT equivalent
to Q?', '{"A": "\ud835\udf0e\ud835\udc35<5(\ud835\udc5f\u22c8\ud835\udc60)      (b) \ud835\udf0e\ud835\udc35<5(\ud835\udc5f\ud835\udc3f\ud835\udc42\ud835\udc3d\ud835\udc60)", "C": "\ud835\udc5f\ud835\udc3f\ud835\udc42\ud835\udc3d (\ud835\udf0e\ud835\udc35<5(\ud835\udc60))     (d) \ud835\udf0e\ud835\udc35<5(\ud835\udc5f) \ud835\udc3f\ud835\udc42\ud835\udc3d\ud835\udc60"}', '"A"', 'Detailed solution pending.'),
  ('90e90313-32e4-40c7-9045-e7827740633c', (SELECT id FROM subjects WHERE name ILIKE '%Computer Organization%' LIMIT 1), 2018, 1, 'MCQ', 'Consider the following two tables and four queries in SQL.
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
of the outputs of the other three queries?', '{"A": "Query 1", "B": "Query 2", "C": "Query 3", "D": "Query 4"}', '"A"', 'Detailed solution pending.'),
  ('6b6fe5dc-5430-49c6-947b-77d9e713fcba', (SELECT id FROM subjects WHERE name ILIKE '%Computer Organization%' LIMIT 1), 2019, 2, 'MCQ', 'A relational database contains two tables Student and Performance as shown
below:
The primary key of the Student table is Roll_no. For the Performance table,
the columns Roll_no. and Subject_code together from the primary key.
Consider the SQL query given below:
SELECT S.Student_name, sum(P.Marks)
FROM Student S, Performance P
WHERE  P.Marks  >  84
GROUP BY S.Student_name;
The number of rows returned by the above SQL query is _________.', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('fa73364c-c37f-4f5c-9660-c281e55b3c54', (SELECT id FROM subjects WHERE name ILIKE '%Computer Organization%' LIMIT 1), 2019, 2, 'MCQ', 'Consider the following relation P(X, Y, Z), Q(X, Y, T) and R(Y, V):
How many tuples will be returned by the following relational algebra query?
Пx(σP.Y=R.Y ∧ R.V=V2(P × R)) - Пx(σQ.Y=R.Y ∧ Q.T>2(Q × R))', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('81686e37-c796-4419-a137-1f6c3663794c', (SELECT id FROM subjects WHERE name ILIKE '%Computer Organization%' LIMIT 1), 2020, 1, 'MCQ', 'Consider a relational database containing the following schemas.
The primary key of each table is indicated by underlining the constituent
fields.
SELECT S.sno, S.sname
FROM Suppliers s, Catalogue c
WHERE S.sno = S.sno AND cost > (SELECT AVG (cost)
FROM Catalogue
WHERE pno = ‘P4’
GROUP BY pno);
NORMALIZATION', '{"A": "4    (b) 5    (c) 0    (d) 2"}', '"A"', 'Detailed solution pending.'),
  ('a0c53670-76e0-449e-b54a-26aae61235a4', (SELECT id FROM subjects WHERE name ILIKE '%Computer Organization%' LIMIT 1), 2020, 1, 'MCQ', 'Consider the following relational schema:
Suppliers(sid:integer, sname:string, city:string, street:string)
Parts(pid:integer, pname:string, color:string)
Catalog(sid:integer, pid:integer, cost:real)
Assume that, in the suppliers relation above, each su pplier and each street
within a city has a unique name, and (sname, city) forms a candidate key. No
other functional dependencies are implied other than those implied by
primary and candidate keys. Which one of the following is TRUE about the
above schema?
2009]', '{"A": "The schema is in BCNF", "B": "The schema is in 3NF but not in BCNF", "C": "The schema is in 2NF but not in 3NF", "D": "The schema is not in 2NF     [Marks: 2][GATE:"}', '"A"', 'Detailed solution pending.'),
  ('d56067c2-5481-4e98-8d04-12f29fc40f6a', (SELECT id FROM subjects WHERE name ILIKE '%Computer Organization%' LIMIT 1), 2010, 2, 'MCQ', 'The following functional dependencies hold for relations R(A, B, C)
and S(B, D, E):
B  A
A  C
The relation R contains 200 tuples and the relation S contains 100 tuples.
What is the maximum number of tuples possible in the natural join R ⋈ S?', '{"A": "100       (b) 200", "C": "300        (d) 2000"}', '"A"', 'Detailed solution pending.'),
  ('55573df1-165d-42b2-98d0-81a3ab30dacd', (SELECT id FROM subjects WHERE name ILIKE '%Computer Organization%' LIMIT 1), 2011, 1, 'MCQ', 'Consider a relational table  with a single record for each registered student
with the following attributes.
1. Registration_Num: Unique registration number of each registered student
2. UID: Unique identity number, unique at the  national level for each citizen
3. BankAccount_Num: Unique account number at the bank. A student can
have multiple accounts or join accounts. This attribute stores the   primary
account number.
4. Name: Name of the student
5. Hostel_Room: Room number of the hostel
Which one of the following option is INCORRECT?', '{"A": "BankAccount_Num is candidate key", "B": "Registration_Num can be a primary key", "C": "UID is candidate key if all students are from the same country", "D": "If S is a superkey such that S\u2229UID is NULL then S\u222aUID is also a superkey"}', '"A"', 'Detailed solution pending.'),
  ('354c93dc-80b2-4243-8b06-881aced2b422', (SELECT id FROM subjects WHERE name ILIKE '%Computer Organization%' LIMIT 1), 2012, 1, 'MCQ', 'Which of the following is TRUE?
dependent on every key of R', '{"A": "Every relation in 3NF is also in BCNF", "B": "A relation R is in 3NF if every non-prime attribute of R is fully functionally", "C": "Every relation in BCNF is also in 3NF", "D": "No relation can be in both BCNF and 3NF"}', '"A"', 'Detailed solution pending.'),
  ('3e34940c-2fcc-49c0-8da2-006ef3872ba3', (SELECT id FROM subjects WHERE name ILIKE '%Computer Organization%' LIMIT 1), 2013, 2, 'MCQ', 'Relation R has eight attributes ABCDEFGH. Fields of R contain only atomic
values. F = {CH  G, A BC, B  CFH, E A, F  EG} is a set of functional
dependencies (FDs) so that F+ is exactly the set of FDs that hold for R. How
many candidate keys does the relation R have?', '{"A": "3    (b) 4    (c) 5    (d) 6"}', '"A"', 'Detailed solution pending.'),
  ('ee0c8a0e-4d7d-47b0-bc2d-c4f25daae674', (SELECT id FROM subjects WHERE name ILIKE '%Computer Organization%' LIMIT 1), 2013, 2, 'MCQ', 'Relation R has eight attributes ABCDEFGH. Fields of R contain only atomic
Values. F = {CH  G, A BC, B  CFH, E A, F  EG} is a set of functional
dependencies (FDs) so that F+ is exactly the set of FDs that hold for R.
Consider the FDs given in above question. The relation R is', '{"A": "in 1NF, but not in 2NF.    (b) in 2NF, but not in 3NF.", "C": "in 3NF, but not in BCNF.    (d) in BCNF"}', '"A"', 'Detailed solution pending.'),
  ('8d242d28-6e50-4ad9-a4aa-50f9e4d7ae84', (SELECT id FROM subjects WHERE name ILIKE '%Computer Organization%' LIMIT 1), 2014, 1, 'MCQ', 'Consider the relation scheme R = {E, F, G, H, I, J, K, L, M, M} and the set of
functional dependencies {{E, F} -> {G}, {F} -> {I, J}, {E, H} -> {K, L}, K -> {M}, L -
> {N} on R. What is the key for R?', '{"A": "{E, F}      (b) {E, F, H}                     (c) {E, F, H, K, L}  (d) {E}"}', '"A"', 'Detailed solution pending.'),
  ('7dee38c3-2d57-4f89-9c98-44e2849ec826', (SELECT id FROM subjects WHERE name ILIKE '%Computer Organization%' LIMIT 1), 2020, 1, 'MCQ', 'Given the following two statements:
S1: Every table with two single -valued attributes is in 1NF, 2NF, 3NF and
BCNF.
S2: AB→C, D→E, E→C is a minimal cover for the set of functional
dependencies AB→C, D→E, AB→E, E→C.
Which one of the following is CORRECT?', '{"A": "S1 is TRUE and S2 is FALSE.", "B": "Both S1 and S2 are TRUE.", "C": "S1 is FALSE and S2 is TRUE.", "D": "Both S1 and S2 are FALSE.  [Marks: 2][GATE: 2014][SET-1]"}', '"A"', 'Detailed solution pending.'),
  ('e3f377d6-2e59-4390-8c32-e401821e6831', (SELECT id FROM subjects WHERE name ILIKE '%Computer Organization%' LIMIT 1), 2014, 1, 'MCQ', 'The maximum number of super keys for the relation schema R(E, F, G, H)', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('07c7c380-3a61-4e71-9c47-d2f52c508122', (SELECT id FROM subjects WHERE name ILIKE '%Computer Organization%' LIMIT 1), 2014, 2, 'MCQ', 'Given the STUDENTS relation as shown below.
For (StudentName, StudentAge) to be the key for this instance, the value X
should not be equal to ____________', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('341e7b95-a269-4dbf-9605-f3b3456ce41c', (SELECT id FROM subjects WHERE name ILIKE '%Computer Organization%' LIMIT 1), 2014, 2, 'MCQ', 'A prime attribute of a relation scheme R is an attribute that appears', '{"A": "in all candidate keys of R.", "B": "in some candidate key of R.", "C": "in a foreign key of R.", "D": "only in the primary key of R."}', '"A"', 'Detailed solution pending.'),
  ('b66fa92d-ebf2-4731-83ce-087336687ffb', (SELECT id FROM subjects WHERE name ILIKE '%Computer Organization%' LIMIT 1), 2015, 1, 'MCQ', 'Consider the relation X(P, Q, R, S, T, U) with the following set of functional
dependencies
𝐹 = {
{𝑃,𝑅}→{𝑆,𝑇},
{𝑃,𝑆,𝑈}→{𝑄,𝑅}
}
Which of the following is the trivial functional dependency in 𝐹+, where 𝐹+ is
closure of F?', '{"A": "{\ud835\udc43,\ud835\udc45} \u2192 {\ud835\udc46,\ud835\udc47}     (b) {\ud835\udc43,\ud835\udc45} \u2192 {\ud835\udc45,\ud835\udc47}", "C": "{\ud835\udc43,\ud835\udc46} \u2192 {\ud835\udc46}     (d) {\ud835\udc43, \ud835\udc46, \ud835\udc48} \u2192 {\ud835\udc44}"}', '"A"', 'Detailed solution pending.'),
  ('e91af27a-916e-4528-8638-ca6d1611351f', (SELECT id FROM subjects WHERE name ILIKE '%Computer Organization%' LIMIT 1), 2020, 1, 'MCQ', 'Which of the following is NOT a su per key in a relational schema with
attributes V, W, X, Y, Z and primary key VY?', '{"A": "VXYZ", "B": "VWXZ", "C": "VWXY", "D": "VWXYZ      [Marks: 1][GATE: 2016][SET-1]"}', '"A"', 'Detailed solution pending.'),
  ('4996ccdf-b48c-44f6-9486-c407d2e06fbe', (SELECT id FROM subjects WHERE name ILIKE '%Computer Organization%' LIMIT 1), 2020, 1, 'MCQ', 'A database of research articles in a journal uses the following schema.
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
old one does not?', '{"A": "1NF", "B": "2NF", "C": "3NF", "D": "BCNF      [Marks: 1][GATE:  2016][SET-1]"}', '"A"', 'Detailed solution pending.'),
  ('77f7af2b-1461-4c4a-9f7d-c35376289038', (SELECT id FROM subjects WHERE name ILIKE '%Computer Organization%' LIMIT 1), 2017, 1, 'MCQ', 'The following functional dependencies hold true for the relational schema {V,
W, X, Y, Z} :
V → W
VW → X
Y → VX
Y → Z
Which of the following is irreducible equivalent for this set of functional
dependencies?
(a)
V→W
V→X
Y→V
Y→Z
(b)
V→W
W→X
Y→V
Y→Z
(c)
V→W
V→X
Y→V
Y→X
Y→Z
(d)
V→W
W→X
Y→V
Y→X
Y→Z', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('0b5d1f7e-54b0-4e92-a758-21abbf04d562', (SELECT id FROM subjects WHERE name ILIKE '%Computer Organization%' LIMIT 1), 2018, 2, 'MCQ', 'Consider the following four relational schemas. For each schema, all non -
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
Which one of the relational schemas above is in 3NF but not in BCNF?', '{"A": "Query 1    (b) Query 2   (c) Query 3   (d) Query 4"}', '"A"', 'Detailed solution pending.'),
  ('fdaee1d8-2d07-4553-9f1e-b860054aab28', (SELECT id FROM subjects WHERE name ILIKE '%Computer Organization%' LIMIT 1), 2019, 2, 'MCQ', 'Let the set of functional dependencies F = {QR → S, R → P, S → Q} hold on a
two schemas Y and Z where Y = (PR) and Z = (QRS). Consider the two
statements given below:
I. Both Y and Z are in BCNF
II. Decomposition of X into Y and Z is dependency preserving and a lossless.
Which of the above statements is/are correct?', '{"A": "I only     (b) Neither I nor II", "C": "Both I and II    (d) II only"}', '"A"', 'Detailed solution pending.'),
  ('8a68e3ca-7d8d-49f2-8985-5a34babbd062', (SELECT id FROM subjects WHERE name ILIKE '%Computer Organization%' LIMIT 1), 2020, 1, 'MCQ', 'Consider a relational table R that is in 3NF, but not in BCNF. Which one of
the following statements is TRUE?
and A is a non-prime attribute and X is not a proper subset of any key.
and A is a non-prime attribute and X is a proper subset of some key.
and A is a prime attribute.
Hashing & Indexing', '{"A": "A cell in R holds a set instead of an atomic value.", "B": "R has a nontrivial functional dependency X\u2192A, where X is not a super key", "C": "R has a nontrivial functional dependency X\u2192A, where X is not a super key", "D": "R has a nontrivial functional dependency X\u2192A, where X is not a super key"}', '"A"', 'Detailed solution pending.'),
  ('2d2b2ab8-ef9a-4fc3-80f2-60d9f58a2fb4', (SELECT id FROM subjects WHERE name ILIKE '%Computer Organization%' LIMIT 1), 2009, 2, 'MCQ', 'The keys 12, 18, 13, 2, 3, 23, 5 and 15 are inserted into an initially empty
hash table of length 10 using open addressing with hash function h(k) = k
mod 10 and linear probing. What is the resultant hash table?', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('01914d8b-875b-4866-a300-030b43bceaec', (SELECT id FROM subjects WHERE name ILIKE '%Computer Organization%' LIMIT 1), 2020, 1, 'MCQ', 'The following key values are inserted into a B+ - tree in which order of the
internal nodes is 3, and that of the leaf nodes is 2, in the sequence given
below. The order of inte rnal nodes is the maximum number of tree pointers
in each node, and the order of leaf nodes is the maximum number of data
items that can be stored in it. The B+ - tree is initially 10, 3, 6, 8, 4, 2, 1 The
maximum number of times leaf nodes would get split  up as a result of these
insertions is', '{"A": "2", "B": "3", "C": "4", "D": "5"}', '"A"', 'Detailed solution pending.'),
  ('4439b2b8-3fe9-49b2-9c40-65399234571e', (SELECT id FROM subjects WHERE name ILIKE '%Computer Organization%' LIMIT 1), 2010, 1, 'MCQ', 'Consider a B +-tree in which the maximum number of keys in a node is 5.
What is the minimum number of keys in any non-root node?', '{"A": "1", "B": "2", "C": "3", "D": "4"}', '"A"', 'Detailed solution pending.'),
  ('b6fa0865-3a60-4be7-ab69-cc16541ebba2', (SELECT id FROM subjects WHERE name ILIKE '%Computer Organization%' LIMIT 1), 2010, 2, 'MCQ', 'A hash table of length 10 uses open addressing with hash function h(k) = k
mod 10, and linear probing. After inserting 6 values into an empty hash table,
the table is as shown below.
Which one of the following choices gives a possible order in which the key
values could have been inserted in the table?', '{"A": "46, 42, 34, 52, 23, 33", "B": "34, 42, 23, 52, 33, 46", "C": "46, 34, 42, 23, 52, 33", "D": "42, 46, 33, 23, 34, 52"}', '"A"', 'Detailed solution pending.'),
  ('c74917e3-31a9-445f-9c0f-1cb426e93c8a', (SELECT id FROM subjects WHERE name ILIKE '%Computer Organization%' LIMIT 1), 2020, 1, 'MCQ', 'A hash table of length 10 uses open addressing with hash function h(k) = k
mod 10, and linear probing. After inserting 6 values into an empty hash table,
the table is as shown below.
How many different insertion sequences of the key values using the same
hash function and linear probing will result in the hash table shown above?
2010]', '{"A": "10", "B": "20", "C": "30", "D": "40         [Marks: 2][GATE:"}', '"A"', 'Detailed solution pending.'),
  ('003764b2-10a2-47ed-b471-7c7568d7b383', (SELECT id FROM subjects WHERE name ILIKE '%Computer Organization%' LIMIT 1), 2011, 2, 'MCQ', 'Consider a relational table r with sufficient number of records, having
attributes A1, A2,…, An and let 1 <= p <= n. Two queries Q 1 and Q2 are given
below.
The database can be configured to do ordered indexing on Ap or hashing on
Ap. Which of the following statements is TRUE?', '{"A": "Ordered indexing will always outperform hashing for both queries.", "B": "Hashing will always outperform ordered indexing for both queries.", "C": "Hashing will outperform ordered indexing on Q1, but not on Q2", "D": "Hashing will outperform ordered indexing on Q2, but not on Q1."}', '"A"', 'Detailed solution pending.'),
  ('bcb4fd43-8527-458b-b561-d69d602ffa3f', (SELECT id FROM subjects WHERE name ILIKE '%Computer Organization%' LIMIT 1), 2020, 1, 'MCQ', 'An index is clustered, if
entries of the index.
entries of the index.      [Marks: 1][GATE:
2013]', '{"A": "it is on a set of fields that form a candidate key.", "B": "it is on a set of fields that include the primary key.", "C": "The data records of the file are organized in the same order as the data", "D": "The data records of the file are organized not in the same order as the data"}', '"A"', 'Detailed solution pending.'),
  ('fe5db7f4-dd0a-4534-8b31-1a30414ece4c', (SELECT id FROM subjects WHERE name ILIKE '%Computer Organization%' LIMIT 1), 2014, 2, 'MCQ', 'Consider a hash table with 9 slots. The hash function is  ℎ(k) = k mod 9. The
collisions are resolved by chaining. The following 9 keys are inserted in the
order: 5, 28, 19, 15, 20, 33, 12, 17, 10. The maximum, minimum, and
average chain lengths in the hash table, respectively, are', '{"A": "3, 0, and 1     (b) 3, 3, and 3", "C": "4, 0, and 1     (d) 3, 0, and 2"}', '"A"', 'Detailed solution pending.'),
  ('ac717296-af19-472b-a0e4-a8ed45ea42a1', (SELECT id FROM subjects WHERE name ILIKE '%Computer Organization%' LIMIT 1), 2014, 2, 'MCQ', 'Consider a join (relation algebra) between relations r(R) and s(S) using the
nested loop method. There are 3 buffers each of size equal to disk block size,
out of which one buffer is reserved for intermediate results. Assuming
size(r(R))<size(s(S)), the join will have fewer number of disk block accesses if', '{"A": "Relation r(R) is in the outer loop.", "B": "Relation s(S) is in the outer loop.", "C": "Join selection factor between r(R) and s(S) is more than 0.5.", "D": "Join selection factor between r(R) and s(S) is less than 0.5."}', '"A"', 'Detailed solution pending.'),
  ('8dfd7246-6edd-489e-8dba-923152cf8e20', (SELECT id FROM subjects WHERE name ILIKE '%Computer Organization%' LIMIT 1), 2015, 1, 'MCQ', 'A file is organized so that the ordering of data records is the same as or close
to the ordering of data entries in some index. Then that index is called
Unclustered', '{"A": "Dense   (b) Sparse   (c) Clustered  (d)"}', '"A"', 'Detailed solution pending.'),
  ('fd8552c0-6ec2-41b5-a8c2-b85fb4061f8f', (SELECT id FROM subjects WHERE name ILIKE '%Computer Organization%' LIMIT 1), 2015, 1, 'MCQ', 'With reference to the B+ -tree index of order 1 shown below, the minimum
number of nodes (including the Root node) that must be fetched in order to
satisfy the following query: "Get all records with a search key greater than or
equal to 7 and less than 15" is ____________.', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('64f79c0f-aaff-45ea-850f-cabe3716d788', (SELECT id FROM subjects WHERE name ILIKE '%Computer Organization%' LIMIT 1), 2015, 2, 'MCQ', 'Which one of the following hash functions on integers will distribute keys
most uniformly over 10 buckets numbered 0 to 9 for 𝑖 ranging from 0 to
2020?', '{"A": "\u210e(\ud835\udc56) = \ud835\udc562 mod 10", "B": "\u210e(\ud835\udc56) = \ud835\udc563 mod 10", "C": "\u210e(\ud835\udc56) = (11 \u2217\ud835\udc562) mod 10", "D": "\u210e(\ud835\udc56) = (12 \u2217\ud835\udc56) mod 10"}', '"A"', 'Detailed solution pending.'),
  ('b72765b7-7ac7-4c15-ad34-ec5d538680b3', (SELECT id FROM subjects WHERE name ILIKE '%Computer Organization%' LIMIT 1), 2015, 1, 'MCQ', 'Given a hash table 𝑇 with 25 slots that stores 2000 elements, the load factor
𝛼 for 𝑇 is ________.', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('e0fd4bf1-9e42-4d22-9811-0aa32c355db8', (SELECT id FROM subjects WHERE name ILIKE '%Computer Organization%' LIMIT 1), 2015, 1, 'MCQ', 'Consider a B+ tree in which the search key is 12 bytes long, block size is 1024
bytes, record pointer is 10 bytes long and block pointer is 8 bytes long. The
maximum number of keys that can be accommodated in each non -leaf node
of the tree is ____________.', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('71e71363-bd94-4d5a-8c2b-908c89d2216c', (SELECT id FROM subjects WHERE name ILIKE '%Computer Organization%' LIMIT 1), 2016, 1, 'MCQ', 'B+ Trees are considered BALANCED because.
other by at most1.
1.', '{"A": "The lengths of the paths from the root to all leaf nodes are all equal.", "B": "The lengths of the paths from the root to all leaf nodes differ from each", "C": "The number of children of any two non-leaf sibling nodes differ by at most", "D": "The number of records in any two leaf nodes differ by at most 1"}', '"A"', 'Detailed solution pending.'),
  ('09d9bcd2-34bf-43ee-8705-f24dc5bad8fa', (SELECT id FROM subjects WHERE name ILIKE '%Computer Organization%' LIMIT 1), 2017, 2, 'MCQ', 'In a B+ tree, if the search-key value is 8 bytes long, the block size is 512 bytes
and the block pointer is 2 byt es, then the maximum order of the B+ tree is', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('8dc47981-6fc8-4a2c-94d4-3d70f84786f4', (SELECT id FROM subjects WHERE name ILIKE '%Computer Organization%' LIMIT 1), 2019, 1, 'MCQ', 'Which one of the following statements is NOT correct about the B+ tree data
structure used for creating an index of a relational database table?', '{"A": "B+ Tree is a height-balanced tree", "B": "Non-leaf nodes have pointers to data records", "C": "Key values in each node are kept in sorted order", "D": "Each leaf node has a pointer to the next leaf node"}', '"A"', 'Detailed solution pending.'),
  ('ac5b3ada-ffdd-4d4b-ba95-51e58fbc8882', (SELECT id FROM subjects WHERE name ILIKE '%Computer Organization%' LIMIT 1), 2020, 1, 'MCQ', 'Consider a database implemented using B+-tree for file indexing and installed
on a disk drive with block size of 4 KB. The size of search key is 12 bytes and
the size of tree/disk pointer is 8 bytes. Assume that the database has one
million records. Also assume that no node of the B+ tree and no records are
present initially in main memory. Consider that each record fits into one disk
block. The minimum number of disk accesses required to retrieve any record
in the database is ______.     [Marks: 2][GATE:
2020]', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('c010c181-7a06-4d3d-ada9-25eb8c43ae9c', (SELECT id FROM subjects WHERE name ILIKE '%Computer Organization%' LIMIT 1), 2020, 1, 'MCQ', 'Consider two transactions T1 and T2, and four schedules S1, S2, S3, S4 of
T1 and T2 as given below:
T1 = R1[X] W1[X] W1[Y]
T2 = R2[X] R2[Y] W2[Y]
S1 = R1[X] R2[X] R2[Y] W1[X] W1[Y] W2[Y]
S2 = R1[X] R2[X] R2[Y] W1[X] W2[Y] W1[Y]
S3 = R1[X] W1[X] R2[X] W1[Y] R2[Y] W2[Y]
S4 = R2[X] R2[Y] R1[X] W1[X] W1[Y] W2[Y]
Which of the above schedules are conflict-serializable?', '{"A": "S1 and S2    (b) S2 and S3", "C": "S3 only     (d) S4 only[Marks: 2][GATE:  2009]"}', '"A"', 'Detailed solution pending.'),
  ('f3ae5905-32ee-4e94-b6a9-f6bfcd397d28', (SELECT id FROM subjects WHERE name ILIKE '%Computer Organization%' LIMIT 1), 2010, 1, 'MCQ', 'Which of the following concurrency control protocols ensure both Conflict
serializability and freedom from deadlock?
I. 2-phase locking
II. Time-stamp ordering', '{"A": "I only       (b) II only", "C": "Both I and II      (d) Neither I nor II"}', '"A"', 'Detailed solution pending.'),
  ('b8707843-7f00-4168-8b87-03577bc31a10', (SELECT id FROM subjects WHERE name ILIKE '%Computer Organization%' LIMIT 1), 2010, 2, 'MCQ', 'Consider the following schedule for transactions T1, T2, and T3:
Which one of the schedules below is the correct serialization of the above?', '{"A": "T1\uf0aeT3\uf0aeT2     (b) T2\uf0aeT1\uf0aeT3", "C": "T2\uf0aeT3\uf0aeT1     (d) T3\uf0aeT1\uf0aeT2"}', '"A"', 'Detailed solution pending.'),
  ('c3704923-92f2-4e8f-89cf-8323eb0ee31f', (SELECT id FROM subjects WHERE name ILIKE '%Computer Organization%' LIMIT 1), 2012, 2, 'MCQ', 'Consider the following transactions with data items P and Q initialized to zero:
T1:  read(P);
read(Q);
if P = 0 then Q: = Q + 1;
write (Q);
T2:  read(Q);
read(P);
if Q = 0 then P: = P + 1;
write (P);
Any non-serial interleaving of T1 and T2 for concurrent execution leads to', '{"A": "A serializable schedule", "B": "A schedule that is not conflict serializable", "C": "A conflict serializable schedule", "D": "A schedule for which a precedence graph cannot be drawn"}', '"A"', 'Detailed solution pending.'),
  ('6ae4ee2b-f9d5-48f1-a037-f3c61d93a760', (SELECT id FROM subjects WHERE name ILIKE '%Computer Organization%' LIMIT 1), 2020, 1, 'MCQ', 'Consider the following four schedules due to three transactions (indicated by
the subscript) using read and write on a data item x, denoted by r(x) and w(x)
respectively. Which one of them is conflict serializable?', '{"A": "r1(x); r2(x); w1(x); r3(x); w2(x)", "B": "r2(x); r1(x); w2(x); r3(x); w1(x)", "C": "r3(x); r2(x); r1(x); w2(x); w1(x)", "D": "r2(x); w2(x); r3(x); r1(x); w1(x)  [Marks: 2][GATE: 2014][SET-1]"}', '"A"', 'Detailed solution pending.'),
  ('1344a60e-00c8-497f-81a7-a0bfed58a9d1', (SELECT id FROM subjects WHERE name ILIKE '%Computer Organization%' LIMIT 1), 2014, 2, 'MCQ', 'Consider the following schedule S of transactions T1, T2, T3, T4:
Which one of the following statements is CORRECT?', '{"A": "S is conflict-serializable but not recoverable", "B": "S is not conflict-serializable but is recoverable", "C": "S is both conflict-serializable and recoverable", "D": "S is neither conflict-serializable nor is it recoverable"}', '"A"', 'Detailed solution pending.'),
  ('ffee9443-d82d-4d04-914d-267084cb9def', (SELECT id FROM subjects WHERE name ILIKE '%Computer Organization%' LIMIT 1), 2014, 2, 'MCQ', 'Consider the transactions T1, T2, and T3 and the schedules S1 and S2 given
below.
T1: r1(X); r1(Z); w1(X); w1(Z)
T2: r2(Y); r2(Z); w2(Z)
T3: r3(Y); r3(X); w3(Y)
S1: r1(X); r3(Y); r3(X); r2(Y); r2(Z); w3(Y); w2(Z); r1(Z); w1(X); w1(Z)
S2: r1(X); r3(Y); r2(Y); r3(X); r1(Z); r2(Z); w3(Y); w1(X); w2(Z); w1(Z)
Which one of the following statements about the schedules is TRUE?', '{"A": "Only S1 is conflict -serializable.", "B": "Only S2 is conflict -serializable.", "C": "Both S1 and S2 are conflict -serializable.", "D": "Neither S1 nor S2 is conflict -serializable."}', '"A"', 'Detailed solution pending.'),
  ('4383f212-404f-4f65-930b-bafe1d660b73', (SELECT id FROM subjects WHERE name ILIKE '%Computer Organization%' LIMIT 1), 2015, 1, 'MCQ', 'Consider the following transaction involving two bank accounts x and y.
read(x); x := x - 50; write(x); read(y); y := y + 50; write(y). The constraint that
the sum of the accounts x and y should remain constant is that of
Durability', '{"A": "Atomicity  (b) Consistency  (c) Isolation  (d)"}', '"A"', 'Detailed solution pending.'),
  ('f146b710-2af6-40da-a79d-7eb46c8d052c', (SELECT id FROM subjects WHERE name ILIKE '%Computer Organization%' LIMIT 1), 2015, 1, 'MCQ', 'Consider a simple check pointing protocol and the following set of operations
in the log. (start, T4); (write, T4, y, 2, 3); (start, T1); (commit, T4); (write, T1,
z, 5, 7); (checkpoint); (start, T2); (write, T2, x, 1, 9); (commit, T2); (start, T3),
(write, T3, z, 7, 2); If a crash happens now and the system tries to recover
using both undo and redo operations, what are the contents of the undo list
and the redo list?', '{"A": "Undo: T3, T1; Redo: T2", "B": "Undo: T3, T1; Redo: T2, T4", "C": "Undo: none; Redo: T2, T4, T3, T1", "D": "Undo: T3, T1, T4; Redo: T2"}', '"A"', 'Detailed solution pending.'),
  ('e1894831-f854-4d91-80d9-e2da18c308f1', (SELECT id FROM subjects WHERE name ILIKE '%Computer Organization%' LIMIT 1), 2015, 2, 'MCQ', 'Consider the following partial Schedule S involving two transactions T1 and
T2. Only the read and the write operations have been shown. The read
operation on data item P is denoted by read(P) and the write operation on
data item P is denoted by write(P).
Suppose that the transaction T1 fails immediately after time instance 9.
Which one of the following statements is correct?
ensure transaction atomicity
atomicity', '{"A": "T2 must be aborted and then both T1 and T2 must be re-started to", "B": "Schedule S is non-recoverable and cannot ensure transaction atomicity", "C": "Only T2 must be aborted and then re-started to ensure transaction", "D": "Schedule S is recoverable and can ensure atomicity and nothing else"}', '"A"', 'Detailed solution pending.'),
  ('e5299789-376e-4783-a574-22b49ad8642d', (SELECT id FROM subjects WHERE name ILIKE '%Computer Organization%' LIMIT 1), 2016, 2, 'MCQ', 'Which one of the following is NOT a part of the ACID properties of database', '{"A": "Atomicity      (b) Consistency", "C": "Isolation       (d) Deadlock-freedom"}', '"A"', 'Detailed solution pending.'),
  ('a4eb2fa5-cb74-44e6-8e28-d691a78f8d7e', (SELECT id FROM subjects WHERE name ILIKE '%Computer Organization%' LIMIT 1), 2016, 2, 'MCQ', 'Consider the following 2 -phase locking protocol. Suppose a transaction T
accesses (for read or write operations), a certain set of objects {O1,…,Ok}. This
is done in the following manner:
Step1. T acquires exclusive locks to O 1, ..., O k in increasing order of their
addresses.
Step2. The required operations are performed.
Step3. All locks are released.', '{"A": "guarantee serializability and deadlock-freedom", "B": "guarantee neither serializability nor deadlock-freedom", "C": "guarantee serializability but not deadlock-freedom", "D": "guarantee deadlock-freedom but not serializability"}', '"A"', 'Detailed solution pending.'),
  ('cf37180c-15ec-4a8e-8d52-5243c21d50ae', (SELECT id FROM subjects WHERE name ILIKE '%Computer Organization%' LIMIT 1), 2016, 1, 'MCQ', 'Suppose a database schedule S involves transactions T1, …., Tn. Construct
the precedence graph of S with Vertices representing the transactions and
edges representing the conflicts. If S is serializable, which one of the following
orderings of the vertices of the precedence graph is guaranteed to yield a serial
schedule?', '{"A": "Topological order", "B": "Depth-first order", "C": "Breadth-first order", "D": "Ascending order of transaction indices"}', '"A"', 'Detailed solution pending.'),
  ('00cbf81c-7933-4173-a854-8d4ef9ad10b2', (SELECT id FROM subjects WHERE name ILIKE '%Computer Organization%' LIMIT 1), 2020, 1, 'MCQ', 'Consider the following database schedule with two transactions, T1 and T2.
S = r2(X); r1(X); r2(Y); w1(X); r1(Y); w2(X); a1; a2;
Where ri (Z) denotes a read operation by transaction Ti on a variable Z, wi
(Z) denotes a write operation by Ti on a variable Z and ai denotes an abort
by transaction Ti.
Which one of the following statements about the above schedule is TRUE?
2]', '{"A": "S is non-recoverable", "B": "S is recoverable, but has a cascading abort", "C": "S does not have a cascading abort", "D": "S is strict                                                   [Marks: 2][GATE: 2016][SET-"}', '"A"', 'Detailed solution pending.'),
  ('cc81f484-8594-4c3f-a452-1eb9065d5172', (SELECT id FROM subjects WHERE name ILIKE '%Computer Organization%' LIMIT 1), 2017, 2, 'MCQ', 'In a database system, unique time stamps are assigned to each transaction
using Lamport’s logical clock. Let TS (T1) and TS (T2) be the time stamps of
R, and T2 has requested a conflicting lock on the same resource R. The
following algorithm is used to prevent deadlocks in the database assuming
that a killed transaction is restarted with the same timestamp.
if TS(T2) < TS(T1) then
T1 is killed
else T2 waits.
Assume any transactions that is not killed terminates eventually. Which of
the following is TRUE about the database system that uses the above
algorithm to prevent deadlocks?', '{"A": "The database system is both deadlock-free and starvation- free.", "B": "The database system is deadlock- free, but not starvation-free.", "C": "The database system is starvation-free but not deadlock- free.", "D": "The database system is neither deadlock- free nor starvation-free."}', '"A"', 'Detailed solution pending.'),
  ('47318388-8461-4267-bc32-9050f3be3d84', (SELECT id FROM subjects WHERE name ILIKE '%Algorithms%' LIMIT 1), 2017, 2, 'MCQ', 'Two transactions T1 and T2 are given as:
T1: r1(X)w1(X)r1(Y)w1(Y)
T2: r2(Y)w2(Y)r2(Z)w2(Z)
Where ri (V) denotes a read operation by transaction Ti  on a variable V and
wi(V) denotes a write operation by transaction Ti  on a variable V. The total
number of conflict serializable schedules that can be formed by T1 and T2 is', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('45597acd-b081-48c8-8daa-38e2f55db34d', (SELECT id FROM subjects WHERE name ILIKE '%Algorithms%' LIMIT 1), 2020, 1, 'MCQ', 'Consider the following two statements about database transaction schedules:
I. Strict two-phase locking protocol generates conflict serializable schedules
that are also recoverable.
II. Timestamp-ordering concurrency control protocol with Thomas’ Write Rule
can generate view serializable schedules that are not conflict serializable.
Which of the above statements is/are TRUE?', '{"A": "I only", "B": "II only", "C": "Both I and II", "D": "Neither I nor II"}', '"A"', 'Detailed solution pending.'),
  ('07d5a380-3691-4333-bd86-a6f79330b90b', (SELECT id FROM subjects WHERE name ILIKE '%Algorithms%' LIMIT 1), 2020, 2, 'MCQ', 'Consider a schedule of transactions T1 and T2:
Here, RX stands for “Read(X)” and WX stands for “Write(X)”. Which one of the
following schedules is conflict equivalent to the above schedule?
(a)
(b)
(c)
(d)
ER', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('e268cb3e-d570-4d99-8f8b-221d4ef236dd', (SELECT id FROM subjects WHERE name ILIKE '%Algorithms%' LIMIT 1), 2012, 1, 'MCQ', 'Given the basic ER and relational models, which of the following is
INCORRECT?', '{"A": "An attribute of an entity can have more than one value", "B": "An attribute of an entity can be composite", "C": "In a row of a relational table, an attribute can have more than one value", "D": "In a row of a relational table, an attribute can have exactly one value or a"}', '"A"', 'Detailed solution pending.'),
  ('2af273e4-c984-48f4-a193-1e586b252e92', (SELECT id FROM subjects WHERE name ILIKE '%Algorithms%' LIMIT 1), 2015, 2, 'MCQ', 'Consider an Entity-Relationship (ER) model in which entity sets E1 and E2
are connected by an m: n relationship R12. E1 and E3 are connected by a 1:
n (1 on the side of E1 and n on the side of E3) relationship R13. E1 has two
single-valued attributes a11 and a12 of which a11 is the key attribute. E2
has two single -valued attributes a21 and a22 of which a21 is the key
attribute. E3 has two single -valued attributes a31 and a32 of which a31 is
the key attribute. The relationships do not have any attributes. If a relational
model is derived from the above ER model, then the minimum number of', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('d6953e2c-64ad-470a-b54e-0273c1f3bb33', (SELECT id FROM subjects WHERE name ILIKE '%Algorithms%' LIMIT 1), 2017, 1, 'MCQ', 'An ER model of a database consists of entity types A and B. These are
connected by a relationship R which does not have its own attribute. Under
which of the following conditions, can the relational table for R be merged
with that of A?', '{"A": "Relation R is one-to-many and the participation of A in R is total.", "B": "Relation R is one-to-many and the participation of A in R is partial.", "C": "Relation R is many-to-one and the participation of A in R is total.", "D": "Relation R is many-to-one and the participation of A in R is partial"}', '"A"', 'Detailed solution pending.'),
  ('f9a754cf-cbe8-46dc-a951-8b6228e4424f', (SELECT id FROM subjects WHERE name ILIKE '%Algorithms%' LIMIT 1), 2018, 1, 'MCQ', 'In an Entity-Relationship (ER) model, suppose 𝑅is a many-to-one relationship
from entity Set E1 to entity set E2. Assume that E1 and E2 participate totally
in 𝑅and that the cardinality of E1 is greater than the cardinality of E2. Which
one of the following is true about 𝑅?', '{"A": "Every entity in E1 is associated with exactly one entity in E2.", "B": "Some entity in E1 is associated with more than one entity in E2.", "C": "Every entity in E2 is associated with exactly one entity in E1.", "D": "Every entity in E2 is associated with at most one entity in E1."}', '"A"', 'Detailed solution pending.'),
  ('ac2dc763-0a00-4443-8f85-c95d94da2de1', (SELECT id FROM subjects WHERE name ILIKE '%Algorithms%' LIMIT 1), 2020, 1, 'MCQ', 'Which one of the following is used to represent the supporting many -one
2020]
DBMS PYQs Answer key:
Structure Query Language and Relational Algebra', '{"A": "Ovals that contain underlined identifiers", "B": "Rectangles with double/bold border", "C": "Diamonds with double/bold border", "D": "Ovals with double/bold border    [Marks: 1][GATE:"}', '"A"', 'Detailed solution pending.'),
  ('282be9b9-1ded-4711-ab6f-0af3f187610a', (SELECT id FROM subjects WHERE name ILIKE '%Database Management%' LIMIT 1), 2020, 1, 'MCQ', '(1217)8 is equivalent to
(a)(1217)16   (b) (028F)16       (c)(2297)10   (d)(0B17)16
[Marks:][GATE:  2009', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('b83355b4-a377-42e8-a03a-2efe15f4ddf5', (SELECT id FROM subjects WHERE name ILIKE '%Database Management%' LIMIT 1), 2009, 1, 'MCQ', 'What is the minimum number of gates required to implement the Boolean function (AB+C) if we
have to use only 2-input NOR gates?
(a)2    (b)3     (c)4   (d)5', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('a684685f-ee22-4d15-addf-9588bbc06a73', (SELECT id FROM subjects WHERE name ILIKE '%Database Management%' LIMIT 1), 2010, 1, 'MCQ', 'The minterm expansion of f(P, Q, R) = PQ + QR’ + PR’ is', '{"A": "m2 + m4 + m6 + m7    (b) m0 + m1 + m3 + m5", "C": "m0 + m1 + m6 + m7    (d) m2 + m3 + m4 + m5"}', '"A"', 'Detailed solution pending.'),
  ('fb2cb060-2cf8-45b1-a470-535c359975bd', (SELECT id FROM subjects WHERE name ILIKE '%Database Management%' LIMIT 1), 2010, 1, 'MCQ', 'P is a 16 -bit signed integer. The 2''s complement representation of P is (F87B) 16. The 2''s
complement representation of 8*P is
(c)(F878)16
(d)(987B)16', '{"A": "(C3D8)16", "B": "(187B)16"}', '"A"', 'Detailed solution pending.'),
  ('8991ca8e-1e08-4087-84e3-86ef46b5c89a', (SELECT id FROM subjects WHERE name ILIKE '%Database Management%' LIMIT 1), 2010, 1, 'MCQ', 'The Boolean expression for the output ‘f’ of the multiplexer shown below is', '{"A": "(P\uf0c5Q\uf0c5R)\u2019", "B": "P\uf0c5Q\uf0c5R", "C": "(P+Q+R)\u2019", "D": "P+Q+R"}', '"A"', 'Detailed solution pending.'),
  ('ee48aa9e-adba-4e10-bff1-6100d4897ba5', (SELECT id FROM subjects WHERE name ILIKE '%Database Management%' LIMIT 1), 2010, 2, 'MCQ', 'What is the Boolean expression for the output f of the combinational logic circuit of NOR gates
given below?', '{"A": "(Q+R)\u2019      (b) (P+Q)\u2019", "C": "(P+R)      (d) (P+Q+R)\u2019."}', '"A"', 'Detailed solution pending.'),
  ('b549b766-0f9e-4ef1-b84d-365faa2665f3', (SELECT id FROM subjects WHERE name ILIKE '%Database Management%' LIMIT 1), 2010, 2, 'MCQ', 'In the sequential circuit shown below, if the initial value of the output Q 1Q0 is 00, what are the
next four values of Q1Q0?', '{"A": "11, 10, 01, 00    (b) 10, 11, 01, 00", "C": "10, 00, 01, 11    (d) 11, 10, 00, 01"}', '"A"', 'Detailed solution pending.'),
  ('9f8a33bf-5357-4a69-8541-363cdf434fcd', (SELECT id FROM subjects WHERE name ILIKE '%Database Management%' LIMIT 1), 2011, 1, 'MCQ', 'The minimum number of D flip-flops needed to design a mod-258 counter is.', '{"A": "9", "B": "8", "C": "512", "D": "258"}', '"A"', 'Detailed solution pending.'),
  ('25c78019-487d-49af-b536-94fd3e5c5796', (SELECT id FROM subjects WHERE name ILIKE '%Database Management%' LIMIT 1), 2011, 1, 'MCQ', 'The simplified SOP (Sum Of Product) form of the boolean expression
(P + Q’ + R’). (P + Q’ + R). (P + Q + R’) is', '{"A": "(P\u2019.Q + R\u2019)    (b) (P + Q\u2019.R\u2019)", "C": "(P\u2019.Q + R)    (d) (P.Q + R)"}', '"A"', 'Detailed solution pending.'),
  ('d3feaaed-0422-4f8b-b455-4ae8745b071f', (SELECT id FROM subjects WHERE name ILIKE '%Database Management%' LIMIT 1), 2011, 1, 'MCQ', 'Which one of the following circuits is NOT equivalent to a 2-input XNOR (exclusive NOR) gate?', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('e92d3680-dc8f-440c-af81-e23dddc64eb9', (SELECT id FROM subjects WHERE name ILIKE '%Database Management%' LIMIT 1), 2020, 1, 'MCQ', 'Consider the following circuit involving three D -type flip-flops used in a certain type of counter
configuration.
If all the flip-flops were reset to 0 at power on, what is the total number of distinct outputs (states)
represented by PQR generated by the counter?
[Marks: 2 ][GATE:  2011', '{"A": "3    (b) 4    (c) 5    (d) 6"}', '"A"', 'Detailed solution pending.'),
  ('2e275807-6125-4441-a6ab-44b8036909e3', (SELECT id FROM subjects WHERE name ILIKE '%Database Management%' LIMIT 1), 2011, 2, 'MCQ', 'Consider the following circuit involving three D -type flip-flops used in a certain type of counter
configuration  If at some instance prior to the occurrence of the clock edge, P, Q and R have a
value 0, 1 and 0 respectively, what shall be the value of PQR after the clock edge?', '{"A": "000     (b) 001   (c) 010   (d) 011"}', '"A"', 'Detailed solution pending.'),
  ('897c9b17-4b1e-4930-ba0a-80ef3ccec49b', (SELECT id FROM subjects WHERE name ILIKE '%Database Management%' LIMIT 1), 2020, 1, 'MCQ', 'The truth table
represents the Boolean function', '{"A": "X", "B": "X+Y", "C": "X  \uf0c5 Y", "D": "Y           [Marks: 1 ][GATE:  2012]"}', '"A"', 'Detailed solution pending.'),
  ('8bcf139c-4989-4beb-b0a5-0f9d7bfaf3de', (SELECT id FROM subjects WHERE name ILIKE '%Database Management%' LIMIT 1), 2012, 1, 'MCQ', 'The decimal value 0.5 in IEEE single precision floating point representation has', '{"A": "fraction bits of 000\u2026000 and exponent value of 0", "B": "fraction bits of 000\u2026000 and exponent value of \u22121", "C": "fraction bits of 100\u2026000 and exponent value of 0", "D": "no exact representation"}', '"A"', 'Detailed solution pending.'),
  ('bc734862-6829-4e7e-8347-d3024239d29a', (SELECT id FROM subjects WHERE name ILIKE '%Database Management%' LIMIT 1), 2012, 2, 'MCQ', 'What is the minimal form of the Karnaugh map shown below? Assume that X denotes a don’t care
term.', '{"A": "b\u2019d\u2019", "B": "b\u2019d\u2019 + b\u2019c\u2019", "C": "b\u2019d\u2019 + a\u2019b\u2019c\u2019d\u2019", "D": "b\u2019d\u2019 + b\u2019c\u2019 + c\u2019d\u2019"}', '"A"', 'Detailed solution pending.'),
  ('866ea4ce-a88c-4639-9fe7-0ad3c2e9a7b6', (SELECT id FROM subjects WHERE name ILIKE '%Database Management%' LIMIT 1), 2013, 1, 'MCQ', 'Which one of the following expressions does NOT represent exclusive NOR of x and y?', '{"A": "xy+x\u2019y\u2019", "B": "x\u2295y\u2019", "C": "x\u2019\u2295y", "D": "x\u2019\u2295y\u2019"}', '"A"', 'Detailed solution pending.'),
  ('7cc32926-a283-487d-90c8-96038bbe34ed', (SELECT id FROM subjects WHERE name ILIKE '%Database Management%' LIMIT 1), 2020, 1, 'MCQ', 'The smallest integer that can be represented by an 8-bit number in 2’s complement form is
(b)-128
(c)-127
(d)0
[Marks: 1][GATE:  2013', '{"A": "-256"}', '"A"', 'Detailed solution pending.'),
  ('5f6029bf-7130-4742-b63a-6ac735e2778b', (SELECT id FROM subjects WHERE name ILIKE '%Database Management%' LIMIT 1), 2013, 1, 'MCQ', 'In the following truth table, V = 1 if and only if the input is valid.
What function does the truth table represent?', '{"A": "Priority encoder (b) Decoder  (c) Multiplexer (d) Demultiplexer"}', '"A"', 'Detailed solution pending.'),
  ('dc75e545-e2a2-438a-be99-8ae30828de79', (SELECT id FROM subjects WHERE name ILIKE '%Database Management%' LIMIT 1), 2014, 1, 'MCQ', 'Consider the following Boolean expression for F:
F(P, Q, R, S) = PQ + P''QR + P''QR''S
The minimal sum-of-products form of F is', '{"A": "PQ + QR + QS     (b) P + Q + R + S", "C": "P\u2019 + Q\u2019 + R\u2019 + S\u2019    (d) P\u2019R + P\u2019R\u2019S + P"}', '"A"', 'Detailed solution pending.'),
  ('3a798ca0-5afc-4788-9941-8857e8ad8f75', (SELECT id FROM subjects WHERE name ILIKE '%Database Management%' LIMIT 1), 2014, 1, 'MCQ', 'The base (or radix) of the number system such that the following equation holds
is____________.312/20 = 13.1', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('6a477a4c-f4ef-4978-a3a2-fcad9735167f', (SELECT id FROM subjects WHERE name ILIKE '%Database Management%' LIMIT 1), 2014, 2, 'MCQ', 'Consider a 4-to-1 multiplexer with two select lines S1 and S0, given below
The minimal sum-of-products form of the Boolean expression for the output F
of the multiplexer is', '{"A": "P\u2019Q + QR\u2019 + PQ\u2019R     (b) P\u2019Q + P\u2019QR\u2019 + PQR\u2019 + PQ\u2019R", "C": "P\u2019QR + P\u2019QR\u2019 + QR\u2019 + PQ\u2019R    (d) PQR\u2019"}', '"A"', 'Detailed solution pending.'),
  ('1b2927c0-e974-4ff2-82fa-31d294cdd386', (SELECT id FROM subjects WHERE name ILIKE '%Database Management%' LIMIT 1), 2014, 1, 'MCQ', 'The dual of a Boolean function f(x 1, x 2… xn, +, ∙, ′), written as F D, is the same
expression as that of F with + and. Swapped. F is said to be self-dual if F = FD. The
number of self-dual functions with n Boolean variables is
(d)22n−1', '{"A": "2n    (b) 2n-1   (c) 22\ud835\udc5b"}', '"A"', 'Detailed solution pending.'),
  ('8623fefd-eea0-4aa4-9c7b-120ab116fa44', (SELECT id FROM subjects WHERE name ILIKE '%Database Management%' LIMIT 1), 2014, 1, 'MCQ', 'Let k = 2n. A circuit is built by giving the output of an n-bit binary counter as input
to an n-to-2n bit decoder. This circuit is equivalent to a', '{"A": "k-bit binary up counter.", "B": "k-bit binary down counter.", "C": "k-bit ring counter.", "D": "k-bit Johnson counter."}', '"A"', 'Detailed solution pending.'),
  ('6597f6d0-75b1-4e38-8090-f1ac0b703bd8', (SELECT id FROM subjects WHERE name ILIKE '%Database Management%' LIMIT 1), 2014, 1, 'MCQ', 'Consider the equation (123) 5 = (x8) y with x and y as unknown. The number of', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('1bcebf5d-711e-418a-8ec1-e48841f343ba', (SELECT id FROM subjects WHERE name ILIKE '%Database Management%' LIMIT 1), 2014, 1, 'MCQ', 'Consider the following minterm expression for F :
F(P,Q,R,S) = 0,2,5,7,8,10,13,15
The minterms 2, 7, 8 and 13 are ‘do not care’ terms. The minimal sum-of-products
form for F is :', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('78b7ac05-9961-443f-9dfb-33a5e4cee1d9', (SELECT id FROM subjects WHERE name ILIKE '%Database Management%' LIMIT 1), 2014, 2, 'MCQ', 'Consider the following combinational function block involving four Boolean
variables x, y, a, b where x, a, b are inputs and y is the output.
f (x, y, a, b)
{
if(x is 1) y = a;
elsey = b;
}
Which one of the following digital logic blocks is the most suitable for implementing
this function?
Q27.
The above sequential circuit is built using JK flip-flops is initialized with Q2Q1Q0
= 000. The
state sequence for this circuit for the next 3 clock cycle is', '{"A": "001, 010, 011      (b) 111, 110, 101", "C": "100, 110, 111      (d) 100, 011, 001"}', '"A"', 'Detailed solution pending.'),
  ('f36d4cb3-d7c4-432d-bfb5-ef74ca0c8ada', (SELECT id FROM subjects WHERE name ILIKE '%Database Management%' LIMIT 1), 2014, 2, 'MCQ', 'Let denote the Exclusive OR (XOR) operation. Let ‘1’ and ‘0’ denote the binary
constants. Consider the following Boolean expression for F over two variables P
and Q:F      (P, Q) = ( ( 1  P)  (P  Q) )  ( (P  Q)  (Q  0) )
The equivalent expression for F is', '{"A": "P + Q      (b) (P + Q)\u2019", "C": "P \uf0c5 Q      (d) (P \uf0c5 Q)\u2019"}', '"A"', 'Detailed solution pending.'),
  ('3b4377c5-4e03-4a3a-badb-bef3ec3c08a7', (SELECT id FROM subjects WHERE name ILIKE '%Database Management%' LIMIT 1), 2015, 1, 'MCQ', 'Consider a 4 bit Johnson counter with an initial value of 0000. The counting
sequence of this counter is:', '{"A": "0, 1, 3, 7, 15, 14, 12, 8, 0    (b) 0, 1, 3, 5, 7, 9, 11, 13, 15, 0", "C": "0, 2, 4, 6, 8, 10, 12, 14, 0    (d) 0, 8, 12, 14, 15, 7, 3, 1, 0"}', '"A"', 'Detailed solution pending.'),
  ('6b1ab7f2-6c5d-4af4-8666-f69a057f67bb', (SELECT id FROM subjects WHERE name ILIKE '%Database Management%' LIMIT 1), 2015, 2, 'MCQ', 'A positive edge -triggered D flip -flop is connected to a positive edge -triggered JK
flipflop as follows. The Q output of the D flip-flop is connected to both the J and K
inputs of the JK flip-flop, while the Q output of the JK flip-flop is Connected to the
input of the D flip-flop. Initially, the output of the D flip-flop Is set to logic one and
the output of the JK flip -flop is cleared. Which one of the following is the bit
sequence (including the initial state) generated at the Q output of the JK flip -flop
when the flip-flops are connected to a free -running Common clock? Assume that
J = K = 1 is the toggle mode and J = K = 0 is the State-holding mode of the JK flip-
flop. Both the flip-flops have non-zero Propagation delays.', '{"A": "0110110\u2026       (B) 0100100\u2026", "C": "011101110\u2026       (D) 011001100\u2026"}', '"A"', 'Detailed solution pending.'),
  ('01faec89-7840-4cae-a13d-a4794283374a', (SELECT id FROM subjects WHERE name ILIKE '%Database Management%' LIMIT 1), 2015, 2, 'MCQ', 'Consider the operations
f(X, Y, Z) = X’YZ + XY’ + Y’Z’ and g(X′, Y, Z) = X′YZ + X′YZ′ + XY
Which one of the following is correct?', '{"A": "Both {f} and {g} are functionally complete", "B": "Only {f} is functionally complete", "C": "Only {g} is functionally complete", "D": "Neither {f} nor {g} is functionally complete"}', '"A"', 'Detailed solution pending.'),
  ('992ce833-c5c5-4858-991e-a944ea7a6a9d', (SELECT id FROM subjects WHERE name ILIKE '%Database Management%' LIMIT 1), 2015, 1, 'MCQ', 'The minimum number of JK flip-flops required to construct a synchronous counter
with the count sequence (0, 0, 1, 1, 2, 2, 3, 3, 0, 0,…….) is ___________.', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('1911ce94-6fdb-4d02-b861-d8ea692fcb86', (SELECT id FROM subjects WHERE name ILIKE '%Database Management%' LIMIT 1), 2015, 2, 'MCQ', 'The number of min-terms after minimizing the following Boolean expression
is________.[D′ + AB′ + A′C + AC′D + A′C′D]′', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('ec3a4c76-8d09-477f-b47e-56ced6794fe8', (SELECT id FROM subjects WHERE name ILIKE '%Database Management%' LIMIT 1), 2015, 2, 'MCQ', 'A half adder is implemented with XOR and AND gates. A full adder is implemented
with two ha lf adders and one OR gate. The propagation delay of an XOR gate is
twice that of an AND/OR gate. The propagation delay of an AND/OR gate is 1.2
microseconds. A 4-bit ripple-carry binary adder is implemented by using four full
adders. The total propagation time of this 4 -bit binary adder in microseconds is
____________', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('febaf258-0be8-49a6-9138-8cefe40e405b', (SELECT id FROM subjects WHERE name ILIKE '%Database Management%' LIMIT 1), 2015, 2, 'MCQ', 'The total number of prime implicants of the function f(w, x, y, z) = Σ(0, 2, 4, 5, 6,
10) is______', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('e8a6434f-52f8-4919-a311-3fa2dca5c86f', (SELECT id FROM subjects WHERE name ILIKE '%Database Management%' LIMIT 1), 2016, 1, 'MCQ', 'Consider the Boolean operator # with the following properties: x#0 = x, x#1
= x’, x#x = and x#x’ = 1 Then x#y is equivalent to', '{"A": "x\u2019y + xy\u2019  (b) xy\u2019 + (xy)                        (c) x\u2019y + xy (d) xy + (xy)\u2019"}', '"A"', 'Detailed solution pending.'),
  ('794cf530-d927-4990-9b74-0f0a3419c6e1', (SELECT id FROM subjects WHERE name ILIKE '%Database Management%' LIMIT 1), 2016, 1, 'MCQ', 'The 16-bit 2’s complement representation of an integer is 1111 1111 1111 0101;', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('9507cc50-d5ba-432b-8c64-e8b9bf0336d2', (SELECT id FROM subjects WHERE name ILIKE '%Database Management%' LIMIT 1), 2016, 1, 'MCQ', 'We want to design a synchronous counter that counts the sequence 0-1-0-2-0-3
and then repeats. The minimum number of J-K flip-flops required to implement', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('d414cf7c-640c-4874-a542-4287ae5224b3', (SELECT id FROM subjects WHERE name ILIKE '%Database Management%' LIMIT 1), 2016, 2, 'MCQ', 'Consider the two cascaded 2-to-1 multiplexers as shown in the figure.
The minimal sum of products form of the output X is', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('ecfde3b6-0aa7-4deb-b9e7-e36a9b549854', (SELECT id FROM subjects WHERE name ILIKE '%Database Management%' LIMIT 1), 2016, 2, 'MCQ', 'Consider a carry lookahead adder for adding two n-bit integers, built using
gates of fan-in at most two. The time to perform addition using this adder is__.', '{"A": "\u0398(1)", "B": "\u0398(log(n))", "C": "\u0398(\u221an)", "D": "(\u0398(n)"}', '"A"', 'Detailed solution pending.'),
  ('81cf73fa-5130-4124-b8c3-1744bb372699', (SELECT id FROM subjects WHERE name ILIKE '%Database Management%' LIMIT 1), 2020, 1, 'MCQ', 'Let, x1⊕x2⊕x3⊕x4 = 0 where x1, x2, x3, x4 are Boolean variables, and ⊕ is The
XOR operator.Which one of the following must always be TRUE?', '{"A": "x1x2x3x4 = 0", "B": "x1x3+x2 = 0", "C": "x\u20321\u2295x\u20323=x\u20322\u2295x\u20324", "D": "x1+x2+x3+x4 = 0    [Marks: 1 ][GATE:  2016] [ SET-2]"}', '"A"', 'Detailed solution pending.'),
  ('5b97f2e3-98de-45d8-b343-f5d0f29777cf', (SELECT id FROM subjects WHERE name ILIKE '%Database Management%' LIMIT 1), 2016, 1, 'MCQ', 'Consider an eight-bit ripple-carry adder for computing the sum of A and B, Where
A and B are integers represented in 2’s complement form. If the decimal value of
A is one, the decimal value of B that leads  to the longest latency for the sum to
stabilize is _____________', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('5baf18d5-a0d6-4500-95d1-262b94a26a4b', (SELECT id FROM subjects WHERE name ILIKE '%Database Management%' LIMIT 1), 2016, 1, 'MCQ', 'Let Y be The number of distinct 16-bit integers in sign magnitude representation.', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('5cddf2f1-d1a7-4ad4-a24f-64bd628b62e8', (SELECT id FROM subjects WHERE name ILIKE '%Database Management%' LIMIT 1), 2017, 1, 'MCQ', 'When two 8-bit numbers A7...A0 and B7...B0 in 2’s complement representation (with
A0 and B0 as the least significant bits) are added using a ripple -carry adder, the
sum bits obtained are S7...S0 and the carry bits are C7...C0. An overflow is said
to have occurred if.
(d)(A0 .B0 . S0` + A0` . B0` . S0) is 1', '{"A": "the carry bit C7 is 1", "B": "all the carry bits (C7,\u2026,C0) are 1", "C": "(A7 .B7 . S7` + A7` . B7`. S7) is 1"}', '"A"', 'Detailed solution pending.'),
  ('de8aa231-c94d-450f-9e1b-bddc4b2e471a', (SELECT id FROM subjects WHERE name ILIKE '%Database Management%' LIMIT 1), 2017, 1, 'MCQ', 'The n-bit fixed-point representation of an unsigned real number X uses f bits For
the fraction part. Let i = n – f. The range of decimal values for X in this
representation is', '{"A": "2-f", "B": "2-f to (2i \u2013 2 -f)", "C": "0 to 2-I", "D": "0 to 2i \u2013 2 -f)"}', '"A"', 'Detailed solution pending.'),
  ('efdbf775-6f00-4eee-9e3c-33df2d044051', (SELECT id FROM subjects WHERE name ILIKE '%Database Management%' LIMIT 1), 2017, 1, 'MCQ', 'Consider the Karnaugh map given below, where X represents “don’t care” and
Blank represents 0.
Assume for all inputs (a, c, d) the respective complements (a’, b’, c’, d’) are also
Available. The above logic is implemented 2-input NOR gates only. The Minimum
number of gates required is ____________.', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('26f9d8bc-541a-435e-913f-a8aa0fc6a0e1', (SELECT id FROM subjects WHERE name ILIKE '%Database Management%' LIMIT 1), 2017, 2, 'MCQ', 'Consider a combination of T and D flip -flops connected as shown below. The
output of the D flipflop is connected to the input of the T flip -flop and the Output
of the T flip-flop is connected to the input of the D flip-flop.
Initially, both Q0 and Q1 are set to 1 (before the 1st clock cycle). The outputs', '{"A": "Q1 Q0 after the 3rd cycle are 11 and after the 4th cycle are 00 respectively", "B": "Q1 Q0 after the 3rd cycle are 11 and after the 4th cycle are 01 respectively", "C": "Q1 Q0 after the 3rd cycle are 00 and after the 4th cycle are 11 respectively", "D": "Q1 Q0 after the 3rd cycle are 01 and after the 4th cycle are 01 respectively"}', '"A"', 'Detailed solution pending.'),
  ('3679cb25-dbc1-4bef-a49f-506cd2f54df8', (SELECT id FROM subjects WHERE name ILIKE '%Database Management%' LIMIT 1), 2017, 1, 'MCQ', 'The representation of the value of a 16 -bit unsigned integer X in a hexadecimal
Number system is BCA9. The representation of the value of X in octal number
system is:', '{"A": "571244   (b) 736251  (c) 571247   (d) 136251"}', '"A"', 'Detailed solution pending.'),
  ('4a7d0833-f367-41c4-b3e4-514692e4d2fc', (SELECT id FROM subjects WHERE name ILIKE '%Database Management%' LIMIT 1), 2020, 1, 'MCQ', 'If w, x, y, z are boolean variables, then which of the following in INCORRECT', '{"A": "wx + w(x+y) + x(x+y) = x + wy", "B": "(wx''(y + z\u2019))\u2019 + w\u2019x = w\u2019 + x + y\u2019z", "C": "(wx''(y + xz\u2019) + w\u2019x\u2019)y = xy\u2019", "D": "(w + y)(wxy + wyz) = wxy + wyz   [Marks: 2][GATE:  2017][ SET-2]"}', '"A"', 'Detailed solution pending.'),
  ('c81369ff-4617-448d-85b6-b7b985ee6728', (SELECT id FROM subjects WHERE name ILIKE '%Database Management%' LIMIT 1), 2020, 1, 'MCQ', 'Given f(w, x, y, z) = Σm(0,1,2,3,7,8,10) + Σd(5,6,11,15), where d represents the
don’t-care condition in Karnaugh maps. Which of the following is a minimum
product-of-sums (POS) form of f (w, x, y, z)?', '{"A": "f = (w\u2019 + z\u2019 )( x\u2019 + z )", "B": "f = (w\u2019 + z ) ( x + z )", "C": "f = ( w + z ) ( x \u2018 + z )", "D": "f = ( w + z\u2019 ) ( x\u2019 + z )[Marks: 2][GATE:  2017][ SET-2]"}', '"A"', 'Detailed solution pending.'),
  ('ce2451aa-8ef0-4782-8bf3-9b99213acf73', (SELECT id FROM subjects WHERE name ILIKE '%Database Management%' LIMIT 1), 2017, 1, 'MCQ', 'Given the following binary number in 32-bit (single precision) IEEE-754 format:
00111110011011010000000000000000
The decimal value closest to this floating-point number is', '{"A": "1.45 \u00d7 101", "B": "1.45 \u00d7 10-1", "C": "2.27 \u00d7 10-1", "D": "2.27 \u00d7 101"}', '"A"', 'Detailed solution pending.'),
  ('44b4cd3d-f41a-477b-ac77-84b90fecb631', (SELECT id FROM subjects WHERE name ILIKE '%Database Management%' LIMIT 1), 2017, 2, 'MCQ', 'The next state table of a 2-bit saturating up-counter is given below.
The counter is built as a synchronoussequential circuit using T flip -flops. The
expressions for T1 and T0 are
(a)T1 = Q0Q1  T0 = Q’0Q’1', '{"B": "T1 = Q\u20191Q0  T0 = Q\u20191 + Q\u20190", "C": "T1 = Q1 + Q0  T0 = Q\u20191 + Q\u20190", "D": "T1 = Q\u20191Q0  T0 = Q1 + Q0"}', '"A"', 'Detailed solution pending.'),
  ('8d0796e1-85ac-454a-9843-eb456c8e2500', (SELECT id FROM subjects WHERE name ILIKE '%Database Management%' LIMIT 1), 2017, 1, 'MCQ', 'Consider a quadratic equation x2 - 13x + 36 = 0 with coefficients in a base b. The
solutionsof this equation in the same base b are x = 5 and x = 6. Then b=_______', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('06f9bdf7-9ad9-4028-b406-312acd354f55', (SELECT id FROM subjects WHERE name ILIKE '%Database Management%' LIMIT 1), 2018, 1, 'MCQ', 'Let ⊕ and ⊙ denote the Exclusive OR and Exclusive NOR operations, respectively.
Which one of the following is NOT CORRECT?', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('81a8cc2a-fe02-46c1-8d46-f0831c38ccf7', (SELECT id FROM subjects WHERE name ILIKE '%Database Management%' LIMIT 1), 2018, 1, 'MCQ', 'Consider the sequential circuit shown in the figure, where both flip-flops used
Are positive edge-triggered D flip-flops.
The number of states in the state transition diagram of this circuit that have a
Transition back to the same state on some value of “in” is ______ .', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('335b2e63-ae7a-415d-8e93-63b88bddb48c', (SELECT id FROM subjects WHERE name ILIKE '%Database Management%' LIMIT 1), 2020, 1, 'MCQ', 'Consider the unsigned 8-bit fixed point binary number representation below,
b7b6b5b4b3⋅ b2b1b0
where the position of the binary point is between b3 and b2 . Assume b7 is the
most significant bit. Some of the decimal numbers listed below cannot be
represented exactly in the above representation:
(i) 31.500      (ii) 0.875      (iii) 12.100       (iv) 3.001
Which one of the following statements is true?', '{"A": "None of (i), (ii), (iii), (iv) can be exactly represented", "B": "Only (ii) cannot be exactly represented", "C": "Only (iii) and (iv) cannot be exactly represented", "D": "Only (i) and (ii) cannot be exactly represented[Marks: 2][GATE:  2018]"}', '"A"', 'Detailed solution pending.'),
  ('08b40ba7-5aab-4758-b752-a6715013733e', (SELECT id FROM subjects WHERE name ILIKE '%Database Management%' LIMIT 1), 2020, 1, 'MCQ', 'Consider the minterm list form of a Boolean function F given below.
F(P, Q, R, S) = Σm(0, 2, 5, 7, 9, 11) + d(3, 8, 10, 12, 14)
Here, m denotes a minterm and d denotes a don’t care term . The number of
essential prime implicants of the function F is _______ .   [Marks:
2][GATE:  2018]', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('3ba4192c-7f19-43ac-a1d3-f6717e114279', (SELECT id FROM subjects WHERE name ILIKE '%Database Management%' LIMIT 1), 2019, 1, 'MCQ', 'Which one of the following is NOT a valid identity?', '{"A": "(x \u2295 y) \u2295 z = x \u2295 (y \u2295 z)", "B": "(x + y) \u2295 z = x \u2295 (y + z)", "C": "x \u2295 y = x + y, if xy = 0", "D": "x \u2295 y = (xy + x\u2032y\u2032)\u2032"}', '"A"', 'Detailed solution pending.'),
  ('a97a9c17-ac44-4a3a-9f5c-209784366a3a', (SELECT id FROM subjects WHERE name ILIKE '%Database Management%' LIMIT 1), 2019, 2, 'MCQ', 'Consider three 4 -variable functions f 1, f2 and f3, which are expressed in sum -of-
minterms
f1 = Σ(0, 2, 5, 8, 14)
f2 = Σ(2, 3, 6, 8, 14, 15)
f3 = Σ(2, 7, 11, 14)
For the following circuit with one AND gate and one XOR gate, the output function
f can be expressed as:', '{"A": "\u03a3(7, 8, 11)", "B": "\u03a3(2, 14)", "C": "\u03a3(0, 2, 3, 5, 6, 7, 8, 11, 14)", "D": "\u03a3(2, 7, 8, 11, 14)"}', '"A"', 'Detailed solution pending.'),
  ('79d90b6b-9676-4f6b-a9a0-f4161da385a1', (SELECT id FROM subjects WHERE name ILIKE '%Database Management%' LIMIT 1), 2019, 2, 'MCQ', 'What is the minimum number of 2 -input NOR gates required to implement 4 -
variable function expressed in sum-of-minterms from as f = Σ(0, 2, 5, 7, 8, 10, 13,
15)? Assume that all the inputs and their complements are available. Answer
________ .', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('eae0840c-e318-4f8c-a4dd-87ffb89dd0ff', (SELECT id FROM subjects WHERE name ILIKE '%Database Management%' LIMIT 1), 2019, 1, 'MCQ', 'In 16-bit 2''s complement representation, the decimal number -28 is:', '{"A": "1111 1111 1110 0100", "B": "1111 1111 0001 1100", "C": "0000 0000 1110 0100", "D": "1000 0000 1110 0100"}', '"A"', 'Detailed solution pending.'),
  ('a6849294-9408-466d-8fd9-a3fd69c912dc', (SELECT id FROM subjects WHERE name ILIKE '%Database Management%' LIMIT 1), 2019, 1, 'MCQ', 'Two numbers are chosen independently and uniformly at random from the set {1,
2, ..., 13}. The probability (rounded off to 3 decimal places) that their 4 -bit
(unsigned) binary representations have the same most significant bit is ______.', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('84f4454b-0741-44fe-843e-8f091822ef82', (SELECT id FROM subjects WHERE name ILIKE '%Database Management%' LIMIT 1), 2019, 1, 'MCQ', 'Consider Z = X - Y, where X, Y and Z are all in sign-magnitude form. X and Y are
each represented in n bits. To avoid overflow, the representation of Z would require
a minimum of:', '{"A": "n bits    (b) n + 2 bits   (c) n - 1 bits   (d) n + 1 bits"}', '"A"', 'Detailed solution pending.'),
  ('c8e0374c-3308-4515-b504-83ef65135337', (SELECT id FROM subjects WHERE name ILIKE '%Database Management%' LIMIT 1), 2020, 1, 'MCQ', 'A multiplexer is p laced between a group of 32 registers and an accumulator to
regulate data movement such that at any given point in time the content of only
one register will move to the accumulator. The minimum number of select lines
needed for the multiplexer is _____.', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('d84f7a8b-9591-4997-b36f-611cc4144f36', (SELECT id FROM subjects WHERE name ILIKE '%Database Management%' LIMIT 1), 2020, 1, 'MCQ', 'If there are m input lines and n output lines for a decoder that is used to uniquely
address a byte addressable 1 KB RAM, then the minimum value o f m + n is ____.', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('39e37bc7-27a6-40e5-accd-82478ab845f8', (SELECT id FROM subjects WHERE name ILIKE '%Database Management%' LIMIT 1), 2020, 2, 'MCQ', 'Consider the Boolean function z(a,b,c).
Which one of the following minterm lists represents the circuit given', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('54aaa763-e9e0-4d9c-9535-67acae2dfe92', (SELECT id FROM subjects WHERE name ILIKE '%Database Management%' LIMIT 1), 2020, 2, 'MCQ', 'Consider three registers R1, R2 and R3 that store numbers in IEEE -754 single
precision floating point format. Assume that R1 and R2 contain the values (in
hexadecimal notation) 0x42200000 and 0xC1200000, respectively.
If R3 = R1/R2, what is the value stored in R3?
Digital PYQs Answer key:', '{"A": "0x40800000  (b) 0x83400000 (c) 0xC8500000   (d) 0xC0800000"}', '"A"', 'Detailed solution pending.'),
  ('84a3f5c6-3681-461a-9cb3-6b6e3773d1b7', (SELECT id FROM subjects WHERE name ILIKE '%Database Management%' LIMIT 1), 2009, 1, 'MCQ', 'Match all items in Group 1 with correct options from those given in Group', '{"A": "P-4. Q-1, R-2, S-3   (b) P-3, Q-1, R-4, S-2", "C": "P-3, Q-4, R-1, S-2   (d) P-2, Q-1, R-4, S-3"}', '"A"', 'Detailed solution pending.'),
  ('0e16122d-bff0-4d9d-9feb-bd8567b6e1f2', (SELECT id FROM subjects WHERE name ILIKE '%Database Management%' LIMIT 1), 2020, 1, 'MCQ', 'Which data structure in a compiler is used for managing information  about variables
and their attributes?', '{"A": "Abstract syntax tree   (b) Symbol table", "C": "Semantic stack    (d) Parse Table [Marks: ][GATE:  2010]"}', '"A"', 'Detailed solution pending.'),
  ('452ee1c7-2750-465f-9a43-f134c7317e60', (SELECT id FROM subjects WHERE name ILIKE '%Database Management%' LIMIT 1), 2020, 1, 'MCQ', 'The lexical analysis for a modern computer language such as Java needs the power of
which one of the following machine models in a necessary and sufficient sense?', '{"A": "Finite state automata", "B": "Deterministic pushdown automata", "C": "Non-Deterministic pushdown automata", "D": "Turing machine      [Marks: ][GATE: 2011]"}', '"A"', 'Detailed solution pending.'),
  ('9a0a9fd9-35a9-4cee-825e-8bbf1db56d73', (SELECT id FROM subjects WHERE name ILIKE '%Database Management%' LIMIT 1), 2020, 1, 'MCQ', 'In a compiler, keywords of a language are recognized during', '{"A": "parsing of the program", "B": "the code generation", "C": "the lexical analysis of the program", "D": "dataflow analysis      [Marks: ][GATE: 2011]"}', '"A"', 'Detailed solution pending.'),
  ('73d1f917-07cc-42a2-843d-d574e555a83d', (SELECT id FROM subjects WHERE name ILIKE '%Database Management%' LIMIT 1), 2014, 1, 'MCQ', 'Which one of the following is NOT performed during compilation?
(a)Dynamic memory allocation
(b)Type checking
(c)Symbol table management', '{"D": "Inline expansion     [SET-2]"}', '"A"', 'Detailed solution pending.'),
  ('0e80bfd1-8490-4ee9-8154-0466911b226c', (SELECT id FROM subjects WHERE name ILIKE '%Database Management%' LIMIT 1), 2020, 1, 'MCQ', 'Match the following:
List-I                      List-II
A. Lexical analysis          1. Graph coloring
B. Parsing                   2. DFA minimization
C. Register allocation       3. Post-order traversal
D. Expression evaluation    4. Production tree
Codes:
A      B      C         D', '{"A": "2       3        1        4", "B": "2      1        4         3", "C": "2      4         1         3", "D": "2      3         4        1     [Marks:1][GATE:  2015][SET-2]"}', '"A"', 'Detailed solution pending.'),
  ('2db9a2b4-5145-4064-a90c-b37d769d2151', (SELECT id FROM subjects WHERE name ILIKE '%Database Management%' LIMIT 1), 2016, 1, 'MCQ', 'Match the following:
(P) Lexical analysis         (i) Leftmost derivation
(Q) Top down parsing        (ii) Type checking
(R) Semantic analysis        (iii) Regular expressions
(S) Runtime environments    (iv) Activation records
(a)P ↔ i, Q ↔ ii, R ↔ iv, S ↔ iii
(b)P ↔ iii, Q ↔ i, R ↔ ii, S ↔ iv
(c)P ↔ ii, Q ↔ iii, R ↔ i, S ↔ iv', '{"D": "P \u2194 iv, Q \u2194 i, R \u2194 ii, S \u2194 iii   [SET-2]"}', '"A"', 'Detailed solution pending.'),
  ('fb0f9530-6ec7-4c57-b652-411db3716d63', (SELECT id FROM subjects WHERE name ILIKE '%Database Management%' LIMIT 1), 2020, 1, 'MCQ', 'Match the following according to input (from the left column) to the compiler phase
(in the right column) that processes it:', '{"A": "P-ii; Q-iii; R-iv; S-i", "B": "P-ii; Q-i; R-iii; S-iv", "C": "P-iii; Q-iv; R-i; S-ii", "D": "P-i; Q-iv; R-ii; S-iii     [Marks: 1][GATE:  2017][SET-2]"}', '"A"', 'Detailed solution pending.'),
  ('8e6f4d19-acc0-4da3-81ee-cf8b00125019', (SELECT id FROM subjects WHERE name ILIKE '%Database Management%' LIMIT 1), 2018, 2, 'MCQ', 'A lexical analyzer uses the following patterns to recognize three tokens T 1, T2, and T3
over the alphabet {a,b,c}.
T1: a?(b∣c)*a
T2: b?(a∣c)*b
T3: c?(b∣a)*c
Note that ‘x?’ means 0 or 1 occurrence of the symbol x. Note also that the analyzer
outputs the token  that matches the longest possible prefix. If the string bbaacabc is
outputs?', '{"A": "T1T2T3    (b) T1T1T3   (c) T2T1T3    (d) T 3T3"}', '"A"', 'Detailed solution pending.'),
  ('1d109118-d047-44e4-9424-1ec05f52ac7f', (SELECT id FROM subjects WHERE name ILIKE '%Database Management%' LIMIT 1), 2020, 1, 'MCQ', 'Consider the following statements.
I. Symbol table is accessed only during lexical analysis and syntax analysis.
II. Compilers for programming languages that support recursion necessarily need
heap storage for memory allocation in the run-time environment.
III. Errors violating the condition ‘any variable must be declared before its use’ are
detected during syntax analysis.
Which of the above statements is/are TRUE?
(a)II only    (b)I only   (c)I and III only  (d)None of I, II and III
Syntax analysis', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('8a1d08c5-9943-4a70-91ce-bc45b7aa9170', (SELECT id FROM subjects WHERE name ILIKE '%Database Management%' LIMIT 1), 2009, 1, 'MCQ', 'Which of the following statements are TRUE?
I.There exist parsing algorithms for some programming languages whose complexities
are less than q (n3 ).
II.A programming language which allows recursion can be implemented with static
storage III. No L -attributed definition can be evaluated in the framework of bottom -
up parsing.
IV. Code improving transformations can be performed at both source language and
intermediate code level
(a)I and II
(b)I and IV
(c)III and IV
(d)I, III and IV', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('b68d2e8f-ff3f-426e-8689-8fee2ff7ea00', (SELECT id FROM subjects WHERE name ILIKE '%Database Management%' LIMIT 1), 2010, 1, 'MCQ', 'The grammar S → aSa|bS|c is', '{"A": "LL(1) but not LR(1)", "B": "LR(1) but not LR(1)", "C": "Both LL(1) and LR(1)", "D": "Neither LL(1) nor LR(1)"}', '"A"', 'Detailed solution pending.'),
  ('8aee4798-9775-4051-b9c7-eec051a39ef7', (SELECT id FROM subjects WHERE name ILIKE '%Database Management%' LIMIT 1), 2011, 1, 'MCQ', 'Consider two binary operators  and  with the precedence of operator being lower
than that of the Operator Operatoris right associative while operator is left
associative. Which one of the following represents the parse tree for expression
(73 ­4 ­3  2)?', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('fb166453-8a54-41ad-86c9-f4f3ceabea37', (SELECT id FROM subjects WHERE name ILIKE '%Database Management%' LIMIT 1), 2012, 2, 'MCQ', 'For the grammar below, a partial LL (1) parsing table is also presented along with
the grammar. Entries that need to be filled are indicated as E1, E2, and E3. Is the
empty string, $ indicates end of input, and, | separates alternate right hand sides  of
productions.
The first and FOLLOW sets for the non-terminals A and B are
(a)
FIRST(A) = {a,b,ε} = FIRST(B)
FOLLOW(A) = {a,b}
FOLLOW(B) = {a,b,$}
(b)
FIRST(A) = {a,b,$}
FIRST(B) = {a,b,ε}
FOLLOW(A) = {a,b}
FOLLOW(B) = {$}
(c)
FIRST(A) = {a,b,ε} = FIRST(B)
FOLLOW(A) = {a,b}
FOLLOW(B) = ∅
(d)
FIRST(A) = {a,b} = FIRST(B)
FOLLOW(A) = {a,b}
FOLLOW(B) = {a,b}', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('7c5369c2-1dae-4b2c-82ac-735dacf1ed80', (SELECT id FROM subjects WHERE name ILIKE '%Database Management%' LIMIT 1), 2012, 1, 'MCQ', 'The grammar. Entries that need to be filled are indicated as E1, E2, and E3. is the
Empty string, $ indicates end of input, and, | separates alternate right hand sides of
Productions.
The appropriate entries for E1, E2, and E3 are
(a)
E1: S → aAbB,A → S
E2: S → bAaB,B→S
E3: B → S
(b)
E1: S → aAbB,S→ ε
E2: S → bAaB,S → ε
E3: S → ε
(c)
E1: S → aAbB,S → ε
E2: S → bAaB,S→ε
E3: B → S
(d)
E1: A → S,S →ε
E2: B → S,S → ε
E3: B →S', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('038e195c-2432-4305-bb6c-07ce5416dd81', (SELECT id FROM subjects WHERE name ILIKE '%Database Management%' LIMIT 1), 2013, 1, 'MCQ', 'What is the maximum number of reduce moves that can be taken by a bottom -up
parser for a grammar with no epsilon - and unit-production (i.e., of type A є and
Aa) to parse a string with n tokens?', '{"A": "n/2   (b) n-1   (c) 2n-1   (d) 2n"}', '"A"', 'Detailed solution pending.'),
  ('321f9336-137d-44e9-950d-5bf1ffa493ef', (SELECT id FROM subjects WHERE name ILIKE '%Database Management%' LIMIT 1), 2013, 1, 'MCQ', 'Which of the following statements related to merging of the two sets in the
corresponding LALR parser is/are FALSE?
1. Cannot be merged since look aheads are different.
2. Can be merged but will result in S-R conflict.
3. Can be merged but will result in R-R conflict.
4. Cannot be merged since goto on c will lead to two different sets.', '{"A": "1 only", "B": "2 only", "C": "1 and 4 only", "D": "1, 2, 3, and 4"}', '"A"', 'Detailed solution pending.'),
  ('96223fef-00f5-435f-891a-280b11f253b9', (SELECT id FROM subjects WHERE name ILIKE '%Database Management%' LIMIT 1), 2014, 1, 'MCQ', 'A canonical set of items is given below
S --> L. > R
Q --> R.
On input symbol < the set has
(a)a shift-reduce conflict and a reduce-reduce conflict.
(b)a shift-reduce conflict but not a reduce-reduce conflict.
(c)a reduce-reduce conflict but not a shift-reduce conflict.
(d)neither a shift-reduce nor a reduce-reduce conflict.', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('e7ecd2a4-a3e7-41d7-8a42-c53a28e536cd', (SELECT id FROM subjects WHERE name ILIKE '%Database Management%' LIMIT 1), 2014, 1, 'MCQ', 'Consider the grammar defined by the following production rules, with two operators
∗ and +
S --> T * P
T --> U | T * U
P --> Q + P | Q
Q --> Id
U --> Id
Which one of the following is TRUE?
(a)+ is left associative, while ∗ is right associative
(b)+ is right associative, while ∗ is left associative
(c)Both + and ∗ are right associative
(d)Both + and ∗ are left associative', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('cdbb5cfa-932a-48d4-b33d-bac6e9f10c08', (SELECT id FROM subjects WHERE name ILIKE '%Database Management%' LIMIT 1), 2015, 1, 'MCQ', 'Which one of the following is True at any valid state in shift-reduce parsing?', '{"A": "Viable prefixes appear only at the bottom of the stack and not inside", "B": "Viable prefixes appear only at the top of the stack and not inside", "C": "The stack contains only a set of viable prefixes", "D": "The stack never contains viable prefixes"}', '"A"', 'Detailed solution pending.'),
  ('ba4f29bf-76e0-449a-9e15-44e80c473ce1', (SELECT id FROM subjects WHERE name ILIKE '%Database Management%' LIMIT 1), 2015, 1, 'MCQ', 'Among simple LR (SLR), canonical LR, and look-ahead LR (LALR), which  of the
following pairs identify the method that is very easy to implement  and the method
that is the most powerful, in that order?
.', '{"A": "SLR, LALR", "B": "Canonical LR, LALR", "C": "SLR, canonical LR", "D": "LALR, canonical LR"}', '"A"', 'Detailed solution pending.'),
  ('4ac41c22-34ee-4c09-8206-3d0d432b1a4f', (SELECT id FROM subjects WHERE name ILIKE '%Database Management%' LIMIT 1), 2015, 2, 'MCQ', 'Consider the following grammar G.
S → F ⎪ H
F → p ⎪ c
H → d ⎪ c
Where S, F and H are non-terminal symbols, p, d and c are terminal  symbols.Which
of the following statement(s) is/are correct?
S1: LL (1) can parse all strings that are generated using grammar G.
S2: LR (1) can parse all strings that are generated using grammar G.', '{"A": "Only S1", "B": "Only S2", "C": "Both S1 and S2", "D": "Neither S1 and S2"}', '"A"', 'Detailed solution pending.'),
  ('28e915b8-facd-4e6b-9e02-dd557d44c00b', (SELECT id FROM subjects WHERE name ILIKE '%Database Management%' LIMIT 1), 2016, 2, 'MCQ', 'The attributes of three arithmetic operators in some programming language are
given below.
Operator       Precedence      Associativity    Arity
+              High              Left            Binary
−        Medium           Right          Binary
∗Low               Left            Binary
The value of the expression 2 – 5 + 1 – 7 * 3 in this language is __________.', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('8bdb7f2f-3994-46bd-9e7b-2ec115dd27fe', (SELECT id FROM subjects WHERE name ILIKE '%Database Management%' LIMIT 1), 2016, 2, 'MCQ', 'Which one of the following grammars is free from left recursion?', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('544fea05-b062-4c1d-ae63-937e49055426', (SELECT id FROM subjects WHERE name ILIKE '%Database Management%' LIMIT 1), 2017, 1, 'MCQ', 'Consider the following grammar
p --> xQRS
Q -->yz|z
R --> w|∈
S -> y
Which is FOLLOW (Q)?', '{"A": "{R}", "B": "{w}", "C": "{w, y}", "D": "{w, \u2209}"}', '"A"', 'Detailed solution pending.'),
  ('c4e438de-85e6-4b31-a571-91963fdb7812', (SELECT id FROM subjects WHERE name ILIKE '%Database Management%' LIMIT 1), 2017, 1, 'MCQ', 'Which of the following statements about parser is/are CORRECT?
I. Canonical LR is more powerful than SLR.
II. SLR is more powerful than LALR.
III. SLR is more powerful than Canonical LR.
(a)I only    (b)II only         (c)III only   (d)II and III only', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('920ae687-6961-49dc-908d-928c0b6ca4bb', (SELECT id FROM subjects WHERE name ILIKE '%Database Management%' LIMIT 1), 2017, 2, 'MCQ', 'Consider the following expression grammar G:
E → E - T | T
T → T + F | F
F → (E) | id
Which of the following grammars is not left recursive, but is equivalent to G?
(a)
E -> E - T | T
T -> T + F | F
F -> (E) | id
(b)
E -> TE''
E'' -> -TE'' | ε
T -> T + F | F
F -> (E) | id
(c)
E -> TX
X -> -TX | ε
T -> FY
Y -> +FY | ε
F -> (E) | id
(d)
E -> TX | (TX)
X -> -TX | +TX | ε
T -> id', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('1ac4734b-774a-4614-8c5d-03b387415b0e', (SELECT id FROM subjects WHERE name ILIKE '%Database Management%' LIMIT 1), 2018, 1, 'MCQ', 'Consider the following parse tree for the expression a#b$c$d#e#f, involving two
binary operators $ and #.
Which one of the following is correct for the given parse tree?', '{"A": "$ has higher precedence and is left associative; # is right associative", "B": "# has higher precedence and is left associative; $ is right associative", "C": "$ has higher precedence and is left associative; # is left associative", "D": "# has higher precedence and is right associative; $ is left associative"}', '"A"', 'Detailed solution pending.'),
  ('ea81eb81-2c82-49ef-8697-88abc52344ca', (SELECT id FROM subjects WHERE name ILIKE '%Database Management%' LIMIT 1), 2019, 1, 'MCQ', 'Consider the grammar given below:
S → Aa
A → BD
B → b | ε
D → d | ε
Let a, b, d, and $ be indexed as follows:
Compute the FOLLOW set of the non -terminal B and write the index values for the
symbols in the FOLLOW set in the descending order. (For example, if the FOLLOW
(a)30
(b)31
(c)10
(d)20', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('b1e6a660-2983-4c13-9fda-5e5cfbc0abf0', (SELECT id FROM subjects WHERE name ILIKE '%Database Management%' LIMIT 1), 2019, 1, 'MCQ', 'Which one of the following kinds of derivation is used by LR parsers?
(a)Leftmost in reverse
(b)Rightmost in reverse
(c)Leftmost
(d)Rightmost', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('dd88412b-2ff9-4616-98ac-f9e9cd187a0d', (SELECT id FROM subjects WHERE name ILIKE '%Database Management%' LIMIT 1), 2019, 2, 'MCQ', 'Consider the augmented grammar given below:
S'' → S
S → 〈L〉 | id
L → L,S | S
Let I0 = CLOSURE ({[S'' → ·S]}). The number of items in the set GOTO (I0 , 〈 ) is: ____.', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('23588b8a-f333-418b-bd3d-56bf524cf8bb', (SELECT id FROM subjects WHERE name ILIKE '%Database Management%' LIMIT 1), 2020, 1, 'MCQ', 'Consider the following grammar.
S->aSB| d
B->b
The number of reduction steps taken by a bottom-up parser while accepting the string
Syntax directed', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('b323abe7-54cb-4660-8e9b-1ba54be2a6fe', (SELECT id FROM subjects WHERE name ILIKE '%Database Management%' LIMIT 1), 2014, 2, 'MCQ', 'Consider the expression tree shown. Each leaf represents a numerical value, which
can either be 0 or 1. Over all possible choices of the values at the leaves, the
maximum possible value of the expression represented by the tree is ___.', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('0ab66904-4499-4cfe-85fd-e112856d9aae', (SELECT id FROM subjects WHERE name ILIKE '%Database Management%' LIMIT 1), 2016, 2, 'MCQ', 'Consider the following Syntax Directed Translation Scheme (SDTS), with non -
terminals {S, A} and terminals {a, b}}.
Using the above SDTS, the output printed by a bottom-up parser, for the input aab is', '{"A": "1 3 2   (b) 2 2 3   (c) 2 3 1  (d)Syntax Error"}', '"A"', 'Detailed solution pending.'),
  ('663f37f1-99b8-469d-a0f1-7efe32ee4c0c', (SELECT id FROM subjects WHERE name ILIKE '%Database Management%' LIMIT 1), 2020, 1, 'MCQ', 'Consider the following grammar and the semantic actions to support the inheriteatd
type declaration attributes. Let X1, X2, X3, X4, X5 and X6 be the placeholders for the non-
terminals D, T, L or L1 in the following table:
Which one of the following are the appropriate choices for X1, X2, X3 and X4?', '{"A": "X1 = L, X2 = L, X3 = L1, X4 = T", "B": "X1 = L, X2 = T, X3 = L1, X4 = L", "C": "X1 = T, X2 = L, X3 = L1, X4 = T", "D": "X1 = T, X2 = L, X3 = T, X4 = L1     [Marks:2][GATE:2019]"}', '"A"', 'Detailed solution pending.'),
  ('fe8581ed-90e3-447a-a3ba-dbc0a53f9b57', (SELECT id FROM subjects WHERE name ILIKE '%Database Management%' LIMIT 1), 2020, 2, 'MCQ', 'Consider the productions A⟶PQ and A⟶XY. Each of the five non-terminals A, P, Q,
X, and Y has two attributes: s is a synthesized attribute, and i is an inherited attribute.
Consider the following rules.
Rule 1: P.i = A.i + 2, Q.i = P.i + A.i, and A.s = P.s + Q.s
Rule 2: X.i = A.i + Y.s and Y.i = X.s + A.i
Which one of the following is TRUE?', '{"A": "Only Rule 2 is L-attributed.", "B": "Neither Rule 1 nor Rule 2 is L-attributed.", "C": "Both Rule 1 and Rule 2 are L-attributed", "D": "Only Rule 1 is L-attributed."}', '"A"', 'Detailed solution pending.'),
  ('6801b78e-f649-4296-b6c4-a73f3fe4e4fd', (SELECT id FROM subjects WHERE name ILIKE '%Database Management%' LIMIT 1), 2010, 1, 'MCQ', 'The program below uses six temporary variables a, b, c, d, e, f.
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
number of registers needed to execute this program without spilling?
(a)2
(b)3
(c)4
(d)6', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('7465fa2a-bcb9-479a-afdd-5e6a628689bf', (SELECT id FROM subjects WHERE name ILIKE '%Database Management%' LIMIT 1), 2011, 1, 'MCQ', 'Consider evaluating the following expression tree on a machine with load -store
architecture in which memory can be accessed only through load and store
operators used in this expression tree can be evaluate by the machine only when the
operands are in registers. The instructions produce results only in a register. If no
intermediate results can be stored in memory, w hat is the minimum number of
registers needed to evaluate this expression?', '{"A": "2     (b) 9    (c) 5   (d) 3"}', '"A"', 'Detailed solution pending.'),
  ('15662100-1afd-435b-a980-9bfb0ae8d9cd', (SELECT id FROM subjects WHERE name ILIKE '%Database Management%' LIMIT 1), 2013, 1, 'MCQ', 'The following code segment is executed on a processor which allows only register
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
optimizing register allocation.', '{"A": "3", "B": "4", "C": "5", "D": "6"}', '"A"', 'Detailed solution pending.'),
  ('75ff35d6-5f25-4eb0-af4d-ce92384d73d2', (SELECT id FROM subjects WHERE name ILIKE '%Database Management%' LIMIT 1), 2013, 1, 'MCQ', 'The following code segment is executed on a processor which allows only register
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
spills to memory in the compiled code?', '{"A": "0    (b) 1     (c) 2   (d) 3"}', '"A"', 'Detailed solution pending.'),
  ('840e354a-dc89-4c09-9433-5580946c6117', (SELECT id FROM subjects WHERE name ILIKE '%Database Management%' LIMIT 1), 2014, 1, 'MCQ', 'For a C program accessing X[i][j][k], the following intermediate code is generated by
a compiler. Assume that the size of an integer is 32 bits and the size of a character is 8
bits.
t0 = i ∗ 1024
t1 = j ∗ 32
t2 = k ∗ 4
t3 = t1 + t0
t4 = t3 + t2
t5 = X[t4]
Which one of the following statements about the source code for the C program is
CORRECT?', '{"A": "X is declared as \u201cint X[32][32][8]\u201d", "B": "X is declared as \u201cint X[4][1024][32]\u201d.", "C": "X is declared as \u201cchar X[4][32][8]\u201d.", "D": "X is declared as \u201cchar X[32][16][2]\u201d"}', '"A"', 'Detailed solution pending.'),
  ('be43c1cb-61e4-4ae6-b690-da57c5f1a33c', (SELECT id FROM subjects WHERE name ILIKE '%Database Management%' LIMIT 1), 2020, 1, 'MCQ', 'One of the purposes of using intermediate code in compilers is to
compilers.', '{"A": "make parsing and semantic analysis simpler.", "B": "improve error recovery and error reporting.", "C": "increase the chances of reusing the machine-independent code optimizer in other", "D": "improve the register allocation   [Marks: ][GATE: 2014][SET-3]"}', '"A"', 'Detailed solution pending.'),
  ('388466af-2dd5-4768-86ce-33b14e4fb8ef', (SELECT id FROM subjects WHERE name ILIKE '%Database Management%' LIMIT 1), 2014, 2, 'MCQ', 'One of the purposes of using intermediate code in compilers is to
compilers.', '{"A": "Make parsing and semantic analysis simpler.", "B": "Improve error recovery and error reporting.", "C": "Increase the chances of reusing the machine-independent code optimizer in other", "D": "Improve the register allocation."}', '"A"', 'Detailed solution pending.'),
  ('816d5e50-f06e-4f57-a1b9-6e7ad87fe407', (SELECT id FROM subjects WHERE name ILIKE '%Database Management%' LIMIT 1), 2014, 2, 'MCQ', 'Consider the basic block given below.
a = b + c
c = a + d
d = b + c
e = d - b
a = e + b
The minimum number of nodes and edges present in the DAG representation of the
above basic block respectively are', '{"A": "6 and 6   (b) 8 and 10  (c) 9 and 12   (d) 4 and 4"}', '"A"', 'Detailed solution pending.'),
  ('6a7d5f1a-87b4-4cf5-af4b-52cf29748e92', (SELECT id FROM subjects WHERE name ILIKE '%Database Management%' LIMIT 1), 2015, 2, 'MCQ', 'The least number of temporary variables required to create a three-address code in
static single assignment form for the expression q + r/3 + s – t * 5 + u * v/w is______.', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('e7ed1389-e9b3-4663-8a41-87c3bad8b872', (SELECT id FROM subjects WHERE name ILIKE '%Database Management%' LIMIT 1), 2015, 1, 'MCQ', 'In the context of abstract-syntax-tree (AST) and control-flow-graph (CFG), which one
of the following is TRUE?
program, the code corresponding to N 2 is present after the code corresponding in
N1.
the input program', '{"A": "In both AST and CFG, let node, N 2 be the successor of node N 1. In the input", "B": "For any input program, neither AST nor CFG will contain a cycle", "C": "The maximum number of successors of a node in an AST and a CFG depends on", "D": "Each node is AST and CFG corresponds to at most one statement in the input"}', '"A"', 'Detailed solution pending.'),
  ('06e506c8-d0c0-4ec6-a1f1-7c2223717c4c', (SELECT id FROM subjects WHERE name ILIKE '%Database Management%' LIMIT 1), 2016, 1, 'MCQ', 'Consider the following code segment.
x = u - t;
y = x * v;
x = y + w;
y = t - z;
y = x * y;
The minimum number of total variables required to convert the above code segment
to static single assignment form is', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('9c29745d-9833-4cf4-bd87-22afe5721071', (SELECT id FROM subjects WHERE name ILIKE '%Database Management%' LIMIT 1), 2017, 2, 'MCQ', 'Consider the following grammar:
stmt    →  if expr then expr else expr; stmt | ȯ
expr    →  term relop term | term
term    →  id | number
id      →  a | b |  c
number  → [0-9]                                                                                                            Where
relop is a relational operator (e.g., <, >, …), ȯ refers to the empty statement, and if,
then, else are terminals.Consider a program P following the above grammar
containing ten if terminals. The number of control flow paths in P is ________. For
example, the program if e1 then e2 else e3has 2 control flow paths, e1 → e2 and e1 →
e3.           (a)1024
(b)1025   (c)1026   (d)1027', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('4c2b4927-8543-40e0-8f72-0b1c08fca3bb', (SELECT id FROM subjects WHERE name ILIKE '%Database Management%' LIMIT 1), 2017, 2, 'MCQ', 'Consider the expression (a -1)*(((b+c)/3)+d)). Let X be the minimum number of
registers required by an optimal code generation (without any register spill) algorithm
for a load/store architecture, in which (i) only load and store instructions can have
operands. The value of X is ___________.
Code optim.', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('77fa5158-0e30-4323-9fbb-36022a852bf5', (SELECT id FROM subjects WHERE name ILIKE '%Database Management%' LIMIT 1), 2014, 1, 'MCQ', 'Which one of the following is FALSE?
the beginning and exits at the end.
elimination.', '{"A": "A basic block is a sequence of instructions where control enters the sequence at", "B": "Available expression analysis can be used for common subexpression", "C": "Live variable analysis can be used for dead code elimination.", "D": "x=4*5\u21d2x=20 is an example of common subexpression elimination."}', '"A"', 'Detailed solution pending.'),
  ('47153004-745a-4242-9c57-0c7b63efce53', (SELECT id FROM subjects WHERE name ILIKE '%Database Management%' LIMIT 1), 2015, 2, 'MCQ', 'A variable x is said to be live at a statement Si in a program if the following three
conditions hold simultaneously:
1. There exists a statement Sj that uses x
2. There is a path from Si to Sj in the flow graph corresponding to the program
3. The path has no intervening assignment to x
including at Si and Sj', '{"A": "p, s, u    (b) r, s, u   (c) r, u   (d) q, v"}', '"A"', 'Detailed solution pending.'),
  ('f41bb603-b6f8-4b8a-9f20-78b50317756e', (SELECT id FROM subjects WHERE name ILIKE '%Database Management%' LIMIT 1), 2015, 1, 'MCQ', 'Consider the intermediate code given below:
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
code,  respectively, are', '{"A": "5 and 7  (b) 6 and 7   (c) 5 and 5   (d) 7 and 8"}', '"A"', 'Detailed solution pending.'),
  ('561995d0-8db9-4e8c-8967-74c2fdd6afba', (SELECT id FROM subjects WHERE name ILIKE '%Database Management%' LIMIT 1), 2010, 1, 'MCQ', 'Which languages necessarily need heap allocation in the runtime environment', '{"A": "Those that support recursion", "B": "Those that use dynamic scoping", "C": "Those that allow dynamic data structures", "D": "Those that use global variables"}', '"A"', 'Detailed solution pending.'),
  ('81713de2-ec02-4f07-b67e-8a703d663a1e', (SELECT id FROM subjects WHERE name ILIKE '%Database Management%' LIMIT 1), 2012, 1, 'MCQ', 'Consider the program given below, in a block-structured pseudo-language with
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
records along with their access links is given by :', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('937b9428-b4ab-4b98-8463-973496e4b59f', (SELECT id FROM subjects WHERE name ILIKE '%Database Management%' LIMIT 1), 2014, 1, 'MCQ', 'Let L be a language and L'' be its complement. Which one of the following is NOT a
viable possibility?', '{"A": "Neither L nor  \ud835\udc3f\u0305is recursively enumerable (r.e.).", "B": "One of L and \ud835\udc3f\u0305 is r.e. but not recursive; the other is not r.e.", "C": "Both L and\ud835\udc3f\u0305are r.e. but not recursive.", "D": "Both L and \ud835\udc3f\u0305 are recursive."}', '"A"', 'Detailed solution pending.'),
  ('ddc9de8f-90f9-4d43-8958-48bc45c277dd', (SELECT id FROM subjects WHERE name ILIKE '%Database Management%' LIMIT 1), 2014, 2, 'MCQ', 'Which of the regular expressions given below represent the following DFA?
I) 0*1(1+00*1)*
II) 0*1*1+11*0*1
III) (0+1)*1
(a)I and II only
(b)I and III only
(c)II and III only
(d)I, II, and III', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('22a22767-070b-4406-acc4-76c3e6e4209d', (SELECT id FROM subjects WHERE name ILIKE '%Database Management%' LIMIT 1), 2014, 1, 'MCQ', 'Which of the following statements are CORRECT?
1)Static allocation of all data areas by a compiler makes it impossible to implement
2)Automatic garbage collection is essential to implement recursion.
3)Dynamic allocation of activation records is essential to implement recursion.
4)Both heap and stack are essential to implement recursion.
(a)1 and 2 only
(b)2 and 3 only
(c)3 and 4 only
(d)1 and 3 only', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('62add634-e064-487b-944d-b6d2ac04011d', (SELECT id FROM subjects WHERE name ILIKE '%Database Management%' LIMIT 1), 2014, 2, 'MCQ', 'A system uses 3 page frames for storing process pages in main memory. It uses the
Least Recently Used (LRU) page replacement policy. Assume that all the page
frames are initially empty. What is the total number of page faults that will occur
while processing the page re ference string given below?   4, 7, 6, 1, 7, 6, 1, 2, 7, 2', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('e2cf2cdc-a773-4f47-ada7-7f4e88a249bb', (SELECT id FROM subjects WHERE name ILIKE '%Database Management%' LIMIT 1), 2015, 1, 'MCQ', 'Let an represent the number of bit strings of length n containing two consecutive
1s. What is the recurrence relation for a n?', '{"A": "an-2+an-1+2n-2     (b) an-2+2an-1+2n-2", "C": "2an-2+an-1+2n-2     (d) 2an-2+2an-1+2n-2"}', '"A"', 'Detailed solution pending.'),
  ('706e030d-19d2-40d9-a45a-ea1f4608990b', (SELECT id FROM subjects WHERE name ILIKE '%Database Management%' LIMIT 1), 2015, 2, 'MCQ', 'Consider three software items: Program-X, Control Flow Diagram of Program -Y and
Control Flow Diagram of Program-Z as shown below
The values of McCabe’s Cycloramic complexity of Program -X, Program -Y and
Program-Z respectively are', '{"A": "4, 4, 7   (B) 3, 4, 7   (C) 4, 4, 8   (D) 4, 3, 8"}', '"A"', 'Detailed solution pending.'),
  ('c8123064-4c16-499a-b37b-36754b6a9c1d', (SELECT id FROM subjects WHERE name ILIKE '%Database Management%' LIMIT 1), 2016, 2, 'MCQ', 'What will be the output of the following pseudo-code when parameters are passed
by reference and dynamic scoping is assumed?
a=3;
void n(x) {x = x * a; print(x) ;}
void m(y) {a = 1; a = y - a; n (a); print (a);}
void main () {m (a) ;}', '{"A": "6, 2   (b) 6, 6   (c) 4, 2  (d) 4, 4"}', '"A"', 'Detailed solution pending.'),
  ('31b42a5b-3eba-41ca-8b27-724d99423ee9', (SELECT id FROM subjects WHERE name ILIKE '%Database Management%' LIMIT 1), 2018, 1, 'MCQ', 'Which one of the following statements is FALSE?
Representations.
Compiler PYQs  Answer key:', '{"A": "Context-free grammar can be used to specify both lexical and syntax rules.", "B": "Type checking is done before parsing.", "C": "High-level language programs can be translated to different Intermediate", "D": "Arguments to a function can be passed using the program stack."}', '"A"', 'Detailed solution pending.'),
  ('e1ba4d9c-3b7a-4f53-9639-531694f0f199', (SELECT id FROM subjects WHERE name ILIKE '%Theory of Computation%' LIMIT 1), 2020, 1, 'MCQ', 'The above DFA accepts the set of all strings over {0,1} that
The above DFA accepts the set of all strings over {0,1} that', '{"A": "begin either with 0 or 1", "B": "end with 0", "C": "end with 00", "D": "contain the substring 00       [GATE - 2009]"}', '"A"', 'Detailed solution pending.'),
  ('2d857221-9f44-4081-93d7-4ac83bd54dae', (SELECT id FROM subjects WHERE name ILIKE '%Theory of Computation%' LIMIT 1), 2020, 1, 'MCQ', 'Given the following state table of an FSM with two states A and B, one input and
one output.
If the initial state is A=0, B=0 what is the minimum length of an input string which
will take the machine to the state A=0, B=1 with output=1?
(a)3
(b)4
(c)5
(d)6
[GATE - 2009]', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('67d8f024-9b9b-409b-9bcf-acdee31155aa', (SELECT id FROM subjects WHERE name ILIKE '%Theory of Computation%' LIMIT 1), 2020, 1, 'MCQ', 'Which one of the following is FALSE?
(e) Every non-deterministic PDA can be converted to an equivalent deterministic
PDA.         [GATE - 2009]', '{"A": "There is unique minimal DFA for every regular language.", "B": "Every NFA can be converted to an equivalent PDA.", "C": "Complement of every context-free language is recursive."}', '"A"', 'Detailed solution pending.'),
  ('b69ea05d-c671-4823-bbff-4ce468661e14', (SELECT id FROM subjects WHERE name ILIKE '%Theory of Computation%' LIMIT 1), 2020, 1, 'MCQ', 'Which one of the following languages over the alphabet {0, 1} is described by the
regular expression: (0 + 1)*0(0 + 1)*0(0 + 1)*?  [GATE - 2009]', '{"A": "The set of all strings containing the substring 00.", "B": "The set of all strings containing at most two 0\u2019s.", "C": "The set of all strings containing at least two 0\u2019s.", "D": "The set of all strings that begin and end with either 0 or 1."}', '"A"', 'Detailed solution pending.'),
  ('3645d053-b66e-4a26-9902-6133f4598941', (SELECT id FROM subjects WHERE name ILIKE '%Theory of Computation%' LIMIT 1), 2020, 1, 'MCQ', 'Let w be any string of length n is {0, 1}*. Let L be the set of all substrings of w.
What is the minimum number of states in a non-deterministic finite automaton
that accepts L?                [GATE – 2010]', '{"A": "n \u2013 1", "B": "n", "C": "n + 1", "D": "2n-1"}', '"A"', 'Detailed solution pending.'),
  ('fe0f8c7d-c562-47cb-9f8c-2da652a52ba1', (SELECT id FROM subjects WHERE name ILIKE '%Theory of Computation%' LIMIT 1), 2012, 1, 'MCQ', 'What is the complement of the language accepted by the NFA shown below:
[Assume Σ={a} and ϵ is the empty string]
(b){ϵ}
(d){a, ϵ}', '{"A": "\u03d5", "C": "a\u2217"}', '"A"', 'Detailed solution pending.'),
  ('e1cc6c5e-c563-4846-92a6-e33c909964c5', (SELECT id FROM subjects WHERE name ILIKE '%Theory of Computation%' LIMIT 1), 2012, 2, 'MCQ', 'Consider the set of strings on {0, 1} in which, every substring of 3 symbols has at
most two zeros. For example, 001110 and 011001 are in the language, but
100010 is not. All strings of length less than 3 are also in the language. A partially
completed DFA that accepts this language is shown below.', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('fe1997d9-d45c-4479-8354-90edc2c83914', (SELECT id FROM subjects WHERE name ILIKE '%Theory of Computation%' LIMIT 1), 2013, 2, 'MCQ', 'Consider the DFA given
Which of the following are FALSE?
1. Complement of L(A) is context-free.
2. L(A) = L((11*0+0)(0 + 1)*0*1*)
3. For the language accepted by A, A is the minimal DFA.
4. A accepts all strings over {0, 1} of length at least 2.', '{"A": "1 and 3 only   (b) 2 and 4 only", "C": "2 and 3 only   (d) 3 and 4 only"}', '"A"', 'Detailed solution pending.'),
  ('84f525d6-0d10-4e42-bb47-664990524217', (SELECT id FROM subjects WHERE name ILIKE '%Theory of Computation%' LIMIT 1), 2014, 1, 'MCQ', 'Consider the finite automaton in the following figure.
What is the set of reachable states for the input string 0011?
(a){q0, q1, q2}  (b) {q0, q1}  (c) {q0, q1, q2, q3}  (d){q3 }', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('a723652d-08db-437a-aaa7-35321e2d1af1', (SELECT id FROM subjects WHERE name ILIKE '%Theory of Computation%' LIMIT 1), 2016, 2, 'MCQ', 'Consider the following two statements:
I. If all states of an NFA are accepting states then the language accepted by the NFA is Σ*.
II. There exists a regular language A such that for all languages B, A∩B is regular.
Which one of the following is CORRECT?', '{"A": "Only I is true", "B": "Only II is true", "C": "Both I and II are true", "D": "Both I and II are false"}', '"A"', 'Detailed solution pending.'),
  ('0b28e465-b0b5-4fe9-97da-d7eb84e0c4b5', (SELECT id FROM subjects WHERE name ILIKE '%Theory of Computation%' LIMIT 1), 2020, 1, 'MCQ', 'Let L = L1 ∩ L2, where L1 and L2 are languages as defined below:
L1 = {ambmcanbn∣m, n ≥0}
L2 = {aibjck ∣i, j, k≥0}
Then L is', '{"A": "Not recursive", "B": "Regular", "C": "Context free but not regular", "D": "Recursively enumerable but not context free."}', '"A"', 'Detailed solution pending.'),
  ('43ae60cb-4fca-4671-8c8a-be92d001d7d5', (SELECT id FROM subjects WHERE name ILIKE '%Theory of Computation%' LIMIT 1), 2010, 2, 'MCQ', 'Let L = {w ∈ (0 + 1)* | w has even number of 1s}, i.e. L is the set of all bit strings
with even number of 1s. Which one of the regular expression below represents L?', '{"A": "(0* 10*1)*", "B": "0* (10*10*)*", "C": "0*(10*1*)*0*", "D": "0*1(10*1)*10*"}', '"A"', 'Detailed solution pending.'),
  ('4c7f2d89-f2e1-40f8-8624-7c1de7723f87', (SELECT id FROM subjects WHERE name ILIKE '%Theory of Computation%' LIMIT 1), 2012, 1, 'MCQ', 'Given the language L = {ab, aa, baa}, which of the following strings are in L*?  1)
abaabaaabaa  2) aaaabaaaa         3) baaaaabaaaab      4) baaaaabaa
(a)1, 2 and 3
(b)2, 3 and 4
(c)1, 2 and 4
(d)1, 3 and 4', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('37d675c2-5a9b-428d-90a4-70e25d920df9', (SELECT id FROM subjects WHERE name ILIKE '%Theory of Computation%' LIMIT 1), 2020, 1, 'MCQ', 'Which one of the following regular expressions represents the set of all binary
strings with an odd number of 1’s?
[Gate - 2020]', '{"A": "((0 + 1)*1(0 + 1)*1)*10*", "B": "(0*10*10*)*0*1", "C": "10*(0*10*10*)*", "D": "(0*10*10*)*10*"}', '"A"', 'Detailed solution pending.'),
  ('8c1a5a29-a1cd-430a-9ab4-8326b3eb7f0d', (SELECT id FROM subjects WHERE name ILIKE '%Theory of Computation%' LIMIT 1), 2014, 1, 'MCQ', 'The length of the shortest string NOT in the language (over Σ = {a, b}) of the
following regular expression is ______________.', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('859aaabb-09e9-4569-a63d-21a5913e72df', (SELECT id FROM subjects WHERE name ILIKE '%Theory of Computation%' LIMIT 1), 2016, 1, 'MCQ', 'Which one of the following regular expressions represents the language: the set of all
binary strings having two consecutive 0s and two consecutive 1s?', '{"A": "(0 + 1)* 0011(0 + 1)* + (0 + 1)* 1100(0 + 1)*", "B": "(0 + 1)* (00(0 + 1)* 11 + 11(0 + 1)* 00)(0 + 1)*", "C": "(0 + 1)* 00(0 + 1)* + (0 + 1)* 11(0 + 1)*", "D": "00(0 + 1)* 11 + 11(0 + 1)* 00"}', '"A"', 'Detailed solution pending.'),
  ('855c0130-5266-4edf-9b6f-d2622412d36e', (SELECT id FROM subjects WHERE name ILIKE '%Theory of Computation%' LIMIT 1), 2020, 1, 'MCQ', 'Consider the grammar G: S → aSa |bSb| a | b;
The language generated by the above grammar over the alphabet {a, b} is the set
of', '{"A": "All palindromes.", "B": "All odd length palindromes.", "C": "Strings that begin and end with the same symbol.", "D": "All even length palindromes.                                       [Marks: ][GATE:  2009]"}', '"A"', 'Detailed solution pending.'),
  ('09ea05d4-045f-4789-bff4-d23ffe33cef6', (SELECT id FROM subjects WHERE name ILIKE '%Theory of Computation%' LIMIT 1), 2013, 1, 'MCQ', 'Which of the following statements is/are FALSE?
1. For every non-deterministic Turing machine, there exists an equivalent
deterministic Turing machine.
2. Turing recognizable languages are closed under union and complementation.
3. Turing decidable languages are closed under intersection and
complementation.
4. Turing recognizable languages are closed under union and intersection.
(a)1 and 4 only
(b)1 and 3 only
(c)2 only', '{"D": "3 only"}', '"A"', 'Detailed solution pending.'),
  ('8f313c18-4132-4b9b-a7ae-dda4345ba68d', (SELECT id FROM subjects WHERE name ILIKE '%Theory of Computation%' LIMIT 1), 2020, 1, 'MCQ', 'Let L1 be a recursive language. Let L2 and L3 be languages that are recursively
enumerable but not recursive. Which of the following statements is not
necessarily true?
Context-free language', '{"A": "L2 \u2013 L1 is recursively enumerable", "B": "L1 \u2013 L3 is recursively enumerable", "C": "L2 \u2229 L1 is recursively enumerable", "D": "L2 \u222a L1 is recursively enumerable   [Marks: 1][GATE:  2010]"}', '"A"', 'Detailed solution pending.'),
  ('65da87bf-fa82-4896-a9d7-67f3f583add6', (SELECT id FROM subjects WHERE name ILIKE '%Theory of Computation%' LIMIT 1), 2020, 1, 'MCQ', 'Consider the languages
L1 = {0i1j | i != j}.
L2 = {0i1j | i = j}.
L3 = {0i1j | i = 2j+1}.
L4 = {0i1j | i != 2j}.
Which one of the following statements is true?', '{"A": "Only L2 is context free", "B": "Only L2 and L3 are context free", "C": "Only L1 and L2 are context free", "D": "All are context free      [Marks: 2][GATE:  2010]"}', '"A"', 'Detailed solution pending.'),
  ('132297ca-52c3-4e3c-ab68-d7f5e671e7fb', (SELECT id FROM subjects WHERE name ILIKE '%Theory of Computation%' LIMIT 1), 2020, 1, 'MCQ', 'Let P be a regular language and Q be context-free language such that Q ⊆ P.
(For example, let P be the language represented by the regular expression
p*q* and Q be {pnqn| n ∈N}). Then which of the following is ALWAYS regular?
[GATE – 2011]', '{"A": "P \u2229 Q   (b) P \u2013 Q  (c) \u2211* \u2013 P  (d) \u2211* \u2013 Q"}', '"A"', 'Detailed solution pending.'),
  ('9408ce5f-ab45-4cd9-80e3-2d10f7490428', (SELECT id FROM subjects WHERE name ILIKE '%Theory of Computation%' LIMIT 1), 2011, 2, 'MCQ', 'Consider the languages L1, L2 and L3 as given below.
L1 = {0p1q∣ p, q ∈ N},
L2 = {0p1q∣ p, q ∈ N and p = q} and
L3 = {0p1q0r ∣ p, q, r ∈ N and p = q = r}.
Which of the following statements is NOT TRUE?', '{"A": "Push Down Automata (PDA) can be used to recognize L1 and L2", "B": "L1 is a regular language", "C": "All the three languages are context free", "D": "Turing machines can be used to recognize all the languages"}', '"A"', 'Detailed solution pending.'),
  ('824a1e3b-ba48-442e-93df-0eac1208de80', (SELECT id FROM subjects WHERE name ILIKE '%Theory of Computation%' LIMIT 1), 2014, 2, 'MCQ', 'Consider the following languages over the alphabet ∑ = {0, 1, c}
L1 = {0n1n∣n≥0}
L2 = {wcwr ∣w ∈{0, 1}*}
L3 = {wwr∣w ∈{0, 1}*}
Here, wr is the reverse of the string w. Which of these languages are
deterministic Context-free languages?', '{"A": "None of the languages  (b) Only L1", "C": "Only L1 and L2    (d) All the three languages"}', '"A"', 'Detailed solution pending.'),
  ('b8aa7b35-3325-4179-997e-6abdfbc77956', (SELECT id FROM subjects WHERE name ILIKE '%Theory of Computation%' LIMIT 1), 2015, 1, 'MCQ', 'Which of the following languages are context-free?
L1 = {ambnanbm⎪ m, n ≥ 1}
L2 = {ambnambn⎪ m, n ≥ 1}
L3 = {ambn⎪ m = 2n + 1}', '{"A": "L1 and L2 only", "B": "L1 and L3 only", "C": "L2 and L3 only", "D": "L3 only"}', '"A"', 'Detailed solution pending.'),
  ('e250e695-ba60-4f25-b21c-2833fc3fe3c4', (SELECT id FROM subjects WHERE name ILIKE '%Theory of Computation%' LIMIT 1), 2016, 2, 'MCQ', 'Consider the following languages:
L1 = {an bmcn+m: m, n ≥ 1}
L2 = {an bn c2n : n ≥ 1}
Which one of the following isTRUE?', '{"A": "Both L1 and L2 are context-free.", "B": "L1 is context-free while L2 is not context-free.", "C": "L2 is context-free while L1 is not context-free.", "D": "Neither L1 nor L2 is context-free."}', '"A"', 'Detailed solution pending.'),
  ('ad563168-3ce3-428c-92d8-169b9ba0aa1f', (SELECT id FROM subjects WHERE name ILIKE '%Theory of Computation%' LIMIT 1), 2018, 2, 'MCQ', 'Consider the following languages:
I. {ambncpdq∣ m + p = n + q, where m, n, p, q ≥ 0}
II. {ambncpdq∣ m = n and p = q, where m, n, p, q ≥ 0}
III. {ambncpdq∣ m = n = p and p ≠ q, where m, n, p, q ≥ 0}
IV. {ambncpdq∣ mn = p + q, where m, n, p, q ≥ 0}
Which of the above languages are context-free?
(a)I and IV only
(b)I and II only
(c)II and III only', '{"D": "II and IV only"}', '"A"', 'Detailed solution pending.'),
  ('1881d2ba-9d67-4216-9d93-704749af0276', (SELECT id FROM subjects WHERE name ILIKE '%Theory of Computation%' LIMIT 1), 2020, 1, 'MCQ', 'Which one of the following languages over Σ = {a, b} is NOT context-free?', '{"A": "{wwR |w \u2208 {a,b}*}", "B": "{wanbnwR |w \u2208 {a,b}*, n \u2265 0}", "C": "{wanwRbn |w \u2208 {a,b}*, n \u2265 0}", "D": "{anbi | i \u2208 {n, 3n, 5n}, n \u2265 0}   [Marks: 2][GATE:  2019]"}', '"A"', 'Detailed solution pending.'),
  ('05cd9dd7-cdcc-441f-8b04-3bc7b96bcfd3', (SELECT id FROM subjects WHERE name ILIKE '%Theory of Computation%' LIMIT 1), 2020, 1, 'MCQ', 'Consider the language L = {an ∣n ≥ 0 }∪{anbn ∣ n ≥ 0 }  and the following statements.
I. L is deterministic context-free.
II. L is context-free but not deterministic context-free.
III. L is not LL(k) for any k.
Which of the above statements is/are TRUE?   [Gate CS: 2020]
(a)Ⅰonly    (b) Ⅱonly   (c) Ⅰ& II only       (d) III only', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('f10e0f39-8d12-4c7e-a794-6eb2451372b7', (SELECT id FROM subjects WHERE name ILIKE '%Theory of Computation%' LIMIT 1), 2011, 1, 'MCQ', 'Which of the following pairs have DIFFERENT expressive power?
(NFA).
down automata (NPDA).
Minimization of DFA', '{"A": "Deterministic finite automata (DFA) and Non-deterministic finite automata", "B": "Deterministic push down automata (DPDA) and Non-deterministic push", "C": "Deterministic single-tape Turing machine and Non-deterministic single-tape", "D": "Single-tape Turing machine and multi-tape Turing machine."}', '"A"', 'Detailed solution pending.'),
  ('0e9d3948-fffc-4672-9408-841c2a568279', (SELECT id FROM subjects WHERE name ILIKE '%Theory of Computation%' LIMIT 1), 2011, 2, 'MCQ', 'Definition of a language L with alphabet {a} is given as following.  L={ank| k>0,
and n is a positive integer constant}
What is the minimum number of states needed in a DFA to recognize L?', '{"A": "k + 1   (b) n + 1  (c) 2n + 1   (d)2k + 1"}', '"A"', 'Detailed solution pending.'),
  ('20d0d4cd-4a34-42c6-a753-63c4cc7b639d', (SELECT id FROM subjects WHERE name ILIKE '%Theory of Computation%' LIMIT 1), 2011, 2, 'MCQ', 'A deterministic finite automation (DFA)D with alphabet {a, b} is given below
Which of the following finite state machines is a valid minimal DFA which
accepts the same language as D?', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('cd8112ad-c04b-4a69-98a0-e9e43575ea41', (SELECT id FROM subjects WHERE name ILIKE '%Theory of Computation%' LIMIT 1), 2015, 2, 'MCQ', 'Consider the DFAs M and N given above. The number of states in a minimal DFA
that accepts the language L(M) ∩ L(N) is __________.', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('84dd5885-442e-4926-bf15-aaf180729254', (SELECT id FROM subjects WHERE name ILIKE '%Theory of Computation%' LIMIT 1), 2015, 2, 'MCQ', 'The number of states in the minimal deterministic finite automaton
corresponding to the regular expression (0 + 1) * (10) is __________', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('d673553a-e0f6-4265-bdae-cd6e8baacf4a', (SELECT id FROM subjects WHERE name ILIKE '%Theory of Computation%' LIMIT 1), 2015, 1, 'MCQ', 'Let T be the language represented by the regular expression Σ*0011Σ* where
Σ = {0, 1}. What is the minimum number of states in a DFA that recognizes L’
(complement of L)?
(a)4   (b)5   (c)6   (d)8', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('d152eb79-c1ba-4b01-ba54-a53aab6c0481', (SELECT id FROM subjects WHERE name ILIKE '%Theory of Computation%' LIMIT 1), 2017, 1, 'MCQ', 'Consider the language L given by the regular expression (a + b)*b(a + b) over the
alphabet {a, b}. The smallest number of states needed in deterministic finite -
state automation (DFA) accepting L is _________.', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('52d02111-51c5-4b6c-9838-fb73a2d8583f', (SELECT id FROM subjects WHERE name ILIKE '%Theory of Computation%' LIMIT 1), 2017, 1, 'MCQ', 'The minimum possible number of a deterministic finite automation that
accepts the regular language
L = {w1aw2 | w1, w2 ∈ {a, b}*, |w1| = 2, |w2| ≥ 3} is _________.', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('0f5832e6-509b-4790-bf8b-ffc64b0f4827', (SELECT id FROM subjects WHERE name ILIKE '%Theory of Computation%' LIMIT 1), 2018, 1, 'MCQ', 'Let N be an NFA with n states. Let k be the number of states of a minimal DFA
which is equivalent to N. Which one of the following is necessarily true?
(a)k ≥ 2n  (b)k ≥ n   (c)k ≤ n2   (d)k ≤ 2n', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('248b7125-c829-4f7f-8180-fec200fa4abb', (SELECT id FROM subjects WHERE name ILIKE '%Theory of Computation%' LIMIT 1), 2020, 1, 'MCQ', 'Consider the following language.
L = {x ∈ {a, b}* | number of a’s in x is divisible by 2 but not divisible by 3}
The minimum number of states in a DFA that accepts L is ______.', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('cde364b5-a5a5-45d5-a8cc-6be4c43380ce', (SELECT id FROM subjects WHERE name ILIKE '%Theory of Computation%' LIMIT 1), 2013, 1, 'MCQ', 'Which of the following statements are TRUE?
1. The problem of determining whether there exists a cycle in an undirected
2. The problem of determining whether there exists a cycle in an undirected
3. If a problem A is NP-Complete, there exists a non-deterministic polynomial
time algorithm to solve A.
(a)1, 2 and 3     (b)1 and 2 only
Regular language', '{"C": "2 and 3 only    (d)1 and 3 only"}', '"A"', 'Detailed solution pending.'),
  ('0464adb5-8430-4a98-bb76-b812148bc890', (SELECT id FROM subjects WHERE name ILIKE '%Theory of Computation%' LIMIT 1), 2014, 1, 'MCQ', 'Which one of the following is TRUE?', '{"A": "The language L = {an bn\u2502n\u22650} is regular.", "B": "The language L = {an\u2502n is prime} is regular.", "C": "The language L = {w \u2502w has 3k+1 b''s for some k\u2208N with \u03a3 = {a, b}} is regular", "D": "The language L = {w w\u2502w \u2208 \u03a3* with \u03a3 = {0, 1}} is regular."}', '"A"', 'Detailed solution pending.'),
  ('3768e17a-2e1d-4bb6-8fd7-059679192414', (SELECT id FROM subjects WHERE name ILIKE '%Theory of Computation%' LIMIT 1), 2020, 1, 'MCQ', 'Let L1 = {w ∈ {0, 1}*|w has at least as many occurrences of (110)’s as (011)’s}.
Let L2 = {w ∈ {0, 1}*|w has at least as many occurrences of (000)’s as (111)’s}.
Which one of the following is TRUE?', '{"A": "L1 is regular but not L2", "B": "L2 is regular but not L1", "C": "Both L1 and L2 are regular", "D": "Neither nor L1 are L2 regular  [Marks: 2][GATE:  2014][SET-2]"}', '"A"', 'Detailed solution pending.'),
  ('74bddb7c-e69b-4da8-aa04-c65dd835883b', (SELECT id FROM subjects WHERE name ILIKE '%Theory of Computation%' LIMIT 1), 2020, 1, 'MCQ', 'If L1 = {an ∣ n ≥ 0} and L2 = {bn ∣ n ≥ 0} , consider the following statement:
a. L1.L2 is a regular language
b. L1.L2 = {anbn ∣ n ≥ 0}
Which one of the following is CORRECT?', '{"A": "Only I", "B": "Only II", "C": "Both I and II", "D": "Neither I nor II    [Marks: 1][GATE:  2014][SET-2]"}', '"A"', 'Detailed solution pending.'),
  ('61cce697-a62b-431e-97b1-05d296b89b7d', (SELECT id FROM subjects WHERE name ILIKE '%Theory of Computation%' LIMIT 1), 2015, 2, 'MCQ', 'Which of the following is/are regular languages?
L1: {wxwR∣ w, x ∈{a, b}∗ and |w|, |x|> 0}, wR is the reverse of string w.
L2: {anbm ∣ m ≠ n and m, n ≥ 0}
L3: {apbqcr∣p, q, r ≥ 0}', '{"A": "L1 and L3 only     (b) L2 only  (c) L2 and L3 only  (d) L3 only"}', '"A"', 'Detailed solution pending.'),
  ('d9ac9cee-203a-4c78-affe-82b401b9154d', (SELECT id FROM subjects WHERE name ILIKE '%Theory of Computation%' LIMIT 1), 2016, 1, 'MCQ', 'Language L1 is defined by the grammar: S1→ aS1b|ε
Language L2 is defined by the grammar: S2→ abS2|ε
Consider the following statements:
P: L1 is regular
Q: L2 is regular
Which one of the following is TRUE?', '{"A": "Both P and Q are true", "B": "P is true and Q is false", "C": "P is false and Q is true", "D": "Both P and Q are false"}', '"A"', 'Detailed solution pending.'),
  ('c3adcdf2-448c-4d12-9ddd-9dc7cf32f1f7', (SELECT id FROM subjects WHERE name ILIKE '%Theory of Computation%' LIMIT 1), 2020, 1, 'MCQ', 'If L is a regular language over Σ = {a, b}, which one of the following languages is NOT
regular?
Closure properties of recursive and recognizable language', '{"A": "Suffix (L) = {y \u2208\u03a3* such that xy \u2208 L}", "B": "{wwR\u2502w \u2208 L}", "C": "Prefix (L) = {x \u2208\u03a3*\u2502\u2203y \u2208\u03a3* such that xy \u2208 L}", "D": "L \u2219 LR = {xy \u2502 x \u2208 L, yR\u2208 L}"}', '"A"', 'Detailed solution pending.'),
  ('679959d1-3b83-4cc6-83df-b92a59698a39', (SELECT id FROM subjects WHERE name ILIKE '%Theory of Computation%' LIMIT 1), 2020, 1, 'MCQ', 'Let L be a language and L’ be its complement. Which one of the following is
NOT a viable possibility?', '{"A": "Neither L nor L\u2019 is recursively enumerable (r.e.).", "B": "One of L and L\u2019 is r.e. but not recursive; the other is not r.e.", "C": "Both L and L\u2019 are r.e. but not recursive.", "D": "Both L and L\u2019 are recursive                         [Marks: 2][GATE:  2014][SET-1]"}', '"A"', 'Detailed solution pending.'),
  ('8c41282c-011a-4d25-a59a-d7798f8cd40f', (SELECT id FROM subjects WHERE name ILIKE '%Theory of Computation%' LIMIT 1), 2015, 1, 'MCQ', 'For any two languages L1 and L2 such that L1 is context-free and L2 is recursively enumerable
but not recursive, which of the following is/are necessarily true?
a. 𝐿̅1 ( Compliment of L1) is recursive
b. 𝐿̅2 ( Compliment of L2) is recursive
c. 𝐿̅1 is context-free
d. 𝐿̅1∪ L2 is recursively enumerable
DFA/NFA to regular expression', '{"A": "I only  (b) III only  (c) III and IV only  (d) I and IV only"}', '"A"', 'Detailed solution pending.'),
  ('5b92906b-93f9-4007-9cf3-01c1930672c2', (SELECT id FROM subjects WHERE name ILIKE '%Theory of Computation%' LIMIT 1), 2014, 2, 'MCQ', 'Which of the regular expressions given below represent the following DFA?
I. 0*1(1+00*1)*  II. 0*1*1+11*0*1 III. (0+1)*1
Decidability & un-decidability', '{"A": "I and II only     (b) I and III only", "C": "II and III only     (d) I, II, and III"}', '"A"', 'Detailed solution pending.'),
  ('a7c3a7e1-588e-418a-9fde-cadf1b8d9c84', (SELECT id FROM subjects WHERE name ILIKE '%Theory of Computation%' LIMIT 1), 2012, 1, 'MCQ', 'Which of the following problems are decidable?
(1) Does a given program ever produce an output?
(2) If L is a context-free language, then, is 𝐿̅also context-free?
(3) If L is a regular language, then, is 𝐿̅ also regular?
(4) If L is a recursive language, then, is 𝐿̅ also recursive?', '{"A": "1,2,3,4  (b) 1,2  (c) 2,3,4  (d) 3,4"}', '"A"', 'Detailed solution pending.'),
  ('b08fa07f-1138-458a-9710-d305c8602e02', (SELECT id FROM subjects WHERE name ILIKE '%Theory of Computation%' LIMIT 1), 2013, 2, 'MCQ', 'Which of the following is/are undecidable?
1. G is a CFG. Is L(G) = ϕ?
2. G is a CFG. Is L(G) = Σ*?
3. M is a Turing machine. Is L(M) regular?
4. A is a DFA and N is an NFA. Is L(A)=L(N)?', '{"A": "3 only", "B": "3 and 4 only", "C": "1, 2 and 3 only", "D": "2 and 3 only"}', '"A"', 'Detailed solution pending.'),
  ('54b088cb-fc05-4f3d-a9ba-e5cc3db3bb78', (SELECT id FROM subjects WHERE name ILIKE '%Theory of Computation%' LIMIT 1), 2014, 2, 'MCQ', 'Let <M> be the encoding of a Turing machine as a string over Σ = {0, 1}.
Let L = {<M> |M is a Turing machine that accepts a string of length 2014}.
Then, L is', '{"A": "decidable and recursively enumerable", "B": "undecidable but recursively enumerable", "C": "undecidable and not recursively enumerable", "D": "decidable but not recursively enumerable"}', '"A"', 'Detailed solution pending.'),
  ('9c6bfe40-5d02-4d90-a7fd-09d9d929c6c5', (SELECT id FROM subjects WHERE name ILIKE '%Theory of Computation%' LIMIT 1), 2014, 2, 'MCQ', 'Which one of the following problems is undecidable?
Reduction (Turing Machine)', '{"A": "Deciding if a given context-free grammar is ambiguous.", "B": "Deciding if a given string is generated by a given context-free grammar.", "C": "Deciding if the language generated by a given context-free grammar is empty.", "D": "Deciding if the language generated by a given context-free grammar is finite."}', '"A"', 'Detailed solution pending.'),
  ('7f3d8e69-fd0b-4411-bc68-c46a0ee76eca', (SELECT id FROM subjects WHERE name ILIKE '%Theory of Computation%' LIMIT 1), 2014, 1, 'MCQ', 'Let A≤ mB denotes that language A is mapping reducible (also known as many -to-one
reducible) to language B. Which one of the following is FALSE?
(a)If A≤m B and B is recursive then A is recursive.
(b)If A≤m Band A is undecidable then B is undecidable.
(c)If A≤m Band B is recursively enumerable then A is recursively enumerable.
(d)If A≤m B and B is not recursively enumerable then A is not recursively enumerable.', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('f2e6f4f7-1db5-49d9-9359-fc83fcabceba', (SELECT id FROM subjects WHERE name ILIKE '%Theory of Computation%' LIMIT 1), 2016, 2, 'MCQ', 'Let X be a recursive  language and Y be a recursively enumerable but not
recursive language. Let W and Z be two languages such that Y’ reduces to W’,
and Z reduces to X (reduction means the standard many -one reduction). Which
one of the following statements is TRUE?
Countable and uncountable sets', '{"A": "W can be recursively enumerable and Z is recursive.", "B": "W can be recursive and Z is recursively enumerable", "C": "W is not recursively enumerable and Z is recursive", "D": "W is not recursively enumerable and Z is not recursive."}', '"A"', 'Detailed solution pending.'),
  ('9cc62b56-205d-4262-9fe5-cf8549091f90', (SELECT id FROM subjects WHERE name ILIKE '%Theory of Computation%' LIMIT 1), 2014, 1, 'MCQ', 'Let Σ be a finite non-empty alphabet and let 2Σ* be the power set of Σ*.  Which
one of the following is TRUE?', '{"A": "Both 2\u03a3* and \u03a3* are countable", "B": "2\u03a3* is countable and \u03a3* is uncountable", "C": "2\u03a3* is uncountable and \u03a3* is countable", "D": "Both 2\u03a3* and \u03a3* are uncountable"}', '"A"', 'Detailed solution pending.'),
  ('322e6d31-9d34-4801-b4a5-7c053d68df0f', (SELECT id FROM subjects WHERE name ILIKE '%Theory of Computation%' LIMIT 1), 2018, 2, 'MCQ', 'Let N be the set of natural numbers. Consider the following sets.
P: Set of Rational numbers (positive and negative)
Q: Set of functions from {0, 1} to N
R: Set of functions from N to {0, 1}
S: Set of finite subsets of N.
Which of the sets above are countable?', '{"A": "Q and S only      (b) P and S only", "C": "P and R only     (d) P, Q and S only"}', '"A"', 'Detailed solution pending.'),
  ('31049a12-7df6-4fdd-8c54-856bcd6aa41a', (SELECT id FROM subjects WHERE name ILIKE '%Theory of Computation%' LIMIT 1), 2019, 2, 'MCQ', 'Consider the following sets:
S1.  Set of all recursively enumerable languages over the alphabet {0,1}
S2.  Set of all syntactically valid C programs
S3.  Set of all languages over the alphabet {0,1}
S4.  Set of all non-regular languages over the alphabet {0,1}
Which of the above sets are uncountable?
(a)S2 and S3  (b)S3 and S4   (c)S1 and S4   (d)S1 and S2
NP completeness', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('971d3a1a-8428-4e82-a6f8-407ec327e249', (SELECT id FROM subjects WHERE name ILIKE '%Theory of Computation%' LIMIT 1), 2015, 1, 'MCQ', 'Consider the following statements.
I. The complement of every Turing decidable language is Turing decidable
II. There exists some language which is in NP but is not Turing decidable
III. If L is a language in NP, L is Turing decidable
Which of the above statements is/are true?', '{"A": "Only II", "B": "Only III", "C": "Only I and II", "D": "Only I and III"}', '"A"', 'Detailed solution pending.'),
  ('4d92f874-821f-4bed-b3eb-b2ac65a70c4c', (SELECT id FROM subjects WHERE name ILIKE '%Theory of Computation%' LIMIT 1), 2020, 1, 'MCQ', 'Language L1 is polynomial time reducible to language L2. Language L3 is
polynomial time reducible to L2, which in turn is polynomial time reducible to
language L4. Which of the following is/are True?
I. If L4 ∈ P, L2 ∈ P
II. If L1 ∈ P or L3 ∈ P, then L2 ∈ P
III. L1 ∈ P, if and only if L3 ∈ P
IV. If L4 ∈ P, then L1 ∈ P and L3 ∈ P
Push down automata', '{"A": "II only", "B": "III only", "C": "I and IV only", "D": "I only       [Marks: ][GATE:  2015][SET-3]"}', '"A"', 'Detailed solution pending.'),
  ('7c843a51-8b62-4b32-bc36-b2e09b2e7857', (SELECT id FROM subjects WHERE name ILIKE '%Theory of Computation%' LIMIT 1), 2015, 2, 'MCQ', 'Consider the NPDA 〈Q = {q0, q1, q2}, Σ = {0, 1}, Γ = {0, 1, ⊥}, δ, q0, ⊥, F = {q2}〉,
where (as per usual convention) Q is the set of states, Σ is the input alphabet, Γ
is stack alphabet, δ is the state transition function, q0 is the initial state, ⊥ is
the initial stack symbol, and F is the set of accepting states, The state
transition is as follows:
Which one of the following sequences must follow the string 101100 so that the
overall string is accepted by the automaton?
(a)10110    (b)10010   (c) 01010   (d)01001
Arden’s lemma', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('4a1c5680-23bb-4ac8-b94a-14dc6738d5cb', (SELECT id FROM subjects WHERE name ILIKE '%Theory of Computation%' LIMIT 1), 2015, 2, 'MCQ', 'Consider the alphabet Σ={0,1}, the null/empty string λ and the set of strings X 0,X1, and X 2
generated by the corresponding non-terminals of a regular grammar. X0, X1, and X2 are related
as follows.
X0=1X1
X1=0X1+1X2
X2=0X1+ λ
Which one of the following choices precisely represents the strings in X0?
Context-free language and context-free grammars', '{"A": "10(0\u2217+(10)\u2217)1", "B": "10(0\u2217+(10)\u2217)\u22171", "C": "1(0+10)\u22171", "D": "10(0+10)\u22171+110(0+10)\u22171"}', '"A"', 'Detailed solution pending.'),
  ('6b590ca8-b4ea-45af-b901-1e40c93a5b29', (SELECT id FROM subjects WHERE name ILIKE '%Theory of Computation%' LIMIT 1), 2020, 1, 'MCQ', 'Which of the following languages is generated by the given grammar?
S → aS|bS|ε', '{"A": "{anbm |n,m \u2265 0}", "B": "{w \u2208 {a, b}* | w has equal number of a\u2019s and b\u2019s}", "C": "{an |n \u2265 0}\u222a{bn |n \u2265 0}\u222a{an b(sup>n|n\u2265 0}", "D": "{a, b}*       [Marks:1][GATE:  2016][SET-1]"}', '"A"', 'Detailed solution pending.'),
  ('f10a1f97-812e-471d-b4c0-fb1cb909d1af', (SELECT id FROM subjects WHERE name ILIKE '%Theory of Computation%' LIMIT 1), 2016, 2, 'MCQ', 'Consider the following context-free grammars:
G1: S →aS|B, B →b|bB
G2: S →aA|bB, A →aA|B|ε, B →bB|ε
Which one of the following pairs of languages is generated by G1 and G2,
respectively?
Decidability and undesirability', '{"A": "{ambn\u2502m> 0 or n > 0} and {am bn |m > 0 and n > 0}", "B": "{ambn\u2502m> 0 and n > 0} and {am bn |m > 0 or n\u22650}", "C": "{am bn\u2502m\u22650 or n > 0} and {am bn |m > 0 and n > 0}", "D": "{am bn\u2502m\u22650 and n > 0} and {am bn |m > 0 or n > 0}"}', '"A"', 'Detailed solution pending.'),
  ('a4c654f6-de79-45b3-89ce-0e5ec73330b0', (SELECT id FROM subjects WHERE name ILIKE '%Theory of Computation%' LIMIT 1), 2020, 1, 'MCQ', 'Which of the following decision problems are undecidable?
I. Given NFAs N1 and N2, is L (N1) ∩ L (N2) = Φ?
II. Given a CFG G = (N, Σ, P, S) and a string x ∈Σ*, does x ∈ L (G)?
III. Given CFGs G1 and G2, is L (G1) = L (G2)?
IV. Given a TM M, is L (M) = Φ?', '{"A": "I and IV only", "B": "II and III only", "C": "III and IV only", "D": "II and IV only      [Marks:1][GATE:  2016][SET-1]"}', '"A"', 'Detailed solution pending.'),
  ('6807d3ef-0dc5-4d91-9f65-b1df3b495232', (SELECT id FROM subjects WHERE name ILIKE '%Theory of Computation%' LIMIT 1), 2020, 1, 'MCQ', 'Let L(R) be the language represented by regular expression R. Let L(G) be the
language generated by a context free grammar G. Let L(M) be the language
accepted by a Turing machine M.
Which of the following decision problems are undecidable?                              I.
Given a regular expression R and a string w, is w ∈ L(R)?
II. Given a context-free grammar G, is L(G) = ∅?
III. Given a context-free grammar G, is L(G) = Σ* for some alphabet Σ?
IV. Given a Turing machine M and a string w, is w ∈L(M)?', '{"A": "I and IV Only      (b) II and III Only", "C": "II, III and IV Only    (d) III and IV Only"}', '"A"', 'Detailed solution pending.'),
  ('aaf8f336-6455-48cb-bc27-48b12987bc39', (SELECT id FROM subjects WHERE name ILIKE '%Theory of Computation%' LIMIT 1), 2020, 1, 'MCQ', 'Consider the following problems. L(G) denotes the language generated by a
(I) For an unrestricted grammar G and a string w, whether w ∈ L(G)
(II) Given a Turing machine M, whether L(M) is regular.
(III) Given two grammar G1 and G2, whether L(G1) = L(G2).
(IV) Given an NFA N, whether there is a deterministic PDA P such that N and  P
accept the same language
Which one of the following statement is correct?', '{"A": "Only I and II are undecidable", "B": "Only III is undecidable", "C": "Only II and IV are undecidable", "D": "Only I, II and III are undecidable                         [Marks: 2][GATE:  2018]"}', '"A"', 'Detailed solution pending.'),
  ('512fee69-ad04-4fbb-99dd-361384c620ae', (SELECT id FROM subjects WHERE name ILIKE '%Theory of Computation%' LIMIT 1), 2020, 1, 'MCQ', 'Which of the following languages are undecidable? Note that ⟨M⟩ indicates
encoding of the Turing machine M.
L1 = { ⟨M⟩∣ L(M) = ∅ }
L2 = { ⟨M, w, q⟩∣ M on input w reaches state q in exactly 100 steps }
L3 = { ⟨M⟩∣ L(M) is not recursive }
L4 = { ⟨M⟩∣ L(M) contains at least 21 members }
Push down automation', '{"A": "L1, L3, and L4 only", "B": "L1 and L3 only", "C": "L2 and L3 only", "D": "L2, L3, and L4 only"}', '"A"', 'Detailed solution pending.'),
  ('fa81646f-5736-4547-9efa-039e02995f7f', (SELECT id FROM subjects WHERE name ILIKE '%Theory of Computation%' LIMIT 1), 2016, 2, 'MCQ', 'Consider the transition diagram of a PDA given below with input alphabet Σ = {a, b} and
stack alphabet Γ = {X, Z}. Z is the initial stack symbol. Let L denote the language accepted
by the PDA.
Which one of the following is TRUE?
Regular expression and minimization of DFA', '{"A": "L = {anbn\u2502n \u2265 0} and is not accepted by any finite automata", "B": "L = {an |n\u22650} \u222a {anbn|n\u2265 0} and is not accepted by any deterministic PDA", "C": "L is not accepted by any Turing machine that halts on every input", "D": "L = {an |n \u2265 0} \u222a {an bn |n \u2265 0} and is deterministic context-free"}', '"A"', 'Detailed solution pending.'),
  ('f12d909b-58ee-4821-b0a1-6ebd9f72d322', (SELECT id FROM subjects WHERE name ILIKE '%Theory of Computation%' LIMIT 1), 2016, 1, 'MCQ', 'The number of states in the minimum sized DFA that accepts the language
defined by the regular expression. (0+1)*(0+1)(0+1)* is ________
Closure properties', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('f39cbf88-3980-4956-8072-6c08a9f943a2', (SELECT id FROM subjects WHERE name ILIKE '%Theory of Computation%' LIMIT 1), 2016, 1, 'MCQ', 'Consider the following types of languages:
L1: Regular,
L2: Context-free,
L3: Recursive,
L4: Recursively enumerable.
Which of the following is/are TRUE?
(I) 𝐿3̅̅̅ ∪ 𝐿4is recursively enumerable.
(II) 𝐿2̅̅̅ ∪ 𝐿3is recursive.
(III) L*1 ∩L2 is context-free.
(IV) L1 ∪ 𝐿2̅̅̅ is context-free.', '{"A": "I only.", "B": "I and III only.", "C": "I and IV only.", "D": "I, II and III only."}', '"A"', 'Detailed solution pending.'),
  ('f9207513-73ea-4a6c-aa05-3bbb9a650a96', (SELECT id FROM subjects WHERE name ILIKE '%Theory of Computation%' LIMIT 1), 2017, 1, 'MCQ', 'Let L1, L2 be any two context-free languages and R be any regular language. Then which of
the following is/are CORRECT?
a. L1∪ L2 is context-free.
b.  L1'' is context-free.
c. L1 – R is context-free.
Decidable and not decidable', '{"A": "I, II and IV only", "B": "I and III only", "C": "II and IV only", "D": "I only"}', '"A"', 'Detailed solution pending.'),
  ('c3c37170-9b22-461e-81d0-af6a509becf7', (SELECT id FROM subjects WHERE name ILIKE '%Theory of Computation%' LIMIT 1), 2016, 2, 'MCQ', 'Consider the following languages.
L1 = {〈M〉|M takes at least 2016 steps on some input},
L2 = {〈M〉│M takes at least 2016 steps on all inputs} and
L3 = {〈M〉|M accepts ε};
Where for each Turing machine M, 〈M〉 denotes a specific encoding of M. Which one of the
following is TRUE?
Context-free grammars', '{"A": "L1 is recursive and L2, L3 are not recursive", "B": "L2 is recursive and L1, L3 are not recursive", "C": "L1, L2 are recursive and L3 is not recursive", "D": "L1, L2, L3 are recursive"}', '"A"', 'Detailed solution pending.'),
  ('d284332e-282d-4fa0-ab24-dcf2ec39eebf', (SELECT id FROM subjects WHERE name ILIKE '%Theory of Computation%' LIMIT 1), 2016, 2, 'MCQ', 'A student wrote two context-free grammars G1 and G2 for generating a single C-
like array declaration. The dimension of the array is at least one. For example,
int a[10][3]; The grammars use D as the start symbol, and use six terminal
symbols int; id[] num.
Which of the grammars correctly generate the declaration mentioned above?', '{"A": "Both G1 and G2", "B": "Only G1", "C": "Only G2", "D": "Neither G1 nor G2"}', '"A"', 'Detailed solution pending.'),
  ('00dfcaf6-2867-4519-a38c-dbf40968e0e2', (SELECT id FROM subjects WHERE name ILIKE '%Theory of Computation%' LIMIT 1), 2017, 2, 'MCQ', 'If G is a grammar with productions: S →SaS | aSb | bSa | SS | ϵ ; where S is
the start variable, then which one of the following strings is not generated by G
(a)abab   (b)aaab   (c)abbaa   (d)babba
Context-free grammars to context-free language', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('604fc431-5032-4261-87e5-864463386f16', (SELECT id FROM subjects WHERE name ILIKE '%Theory of Computation%' LIMIT 1), 2017, 1, 'MCQ', 'Consider the following context-free grammar over the alphabet Σ = {a, b, c} with
S as the start symbol:
S →abScT | abcT
T → bT | b
Which one of the following represents the language generated by the above', '{"A": "{(ab)n (cb)n\u2502n\u2265 1}", "B": "{(ab)ncb(m1 ) cb(m2 )\u2026cb(mn )\u2502n, m1, m2, \u2026, mn \u2265 1}", "C": "{(ab)n (cbm)n\u2502m,n\u2265 1}", "D": "{(ab)n (cbn)m\u2502m,n\u2265 1}"}', '"A"', 'Detailed solution pending.'),
  ('08f0bdb1-448c-48d7-8474-3daa80fceb3d', (SELECT id FROM subjects WHERE name ILIKE '%Theory of Computation%' LIMIT 1), 2017, 2, 'MCQ', 'Consider the context-free grammars over the alphabet {a, b, c} given below. S
and T are non-terminals.
G1: S →aSb|T, T → cT|ϵ
G2: S →bSa|T, T → cT|ϵ
The language L(G1) ∩ L(G2) is', '{"A": "Finite", "B": "Not finite but regular", "C": "Context-Free but not regular", "D": "Recursive but not context-free"}', '"A"', 'Detailed solution pending.'),
  ('6b7f6abf-bbe2-407b-a687-74550cb9f5ed', (SELECT id FROM subjects WHERE name ILIKE '%Theory of Computation%' LIMIT 1), 2020, 1, 'MCQ', 'Identify the language generated by the following grammar, where S is the start
variable.                                                                                                           S
→ XY,         X → aX| a,              Y → aYb | ϵ
Closure properties of context-free language', '{"A": "{ambn \u2223 m \u2265 n, n>0}", "B": "{ambn \u2223 m \u2265 n, n\u22650}", "C": "{ambn \u2223 m > n, n\u22650}", "D": "{ambn \u2223 m > n, n>0}    [Marks:1][GATE:  2017][SET-2]"}', '"A"', 'Detailed solution pending.'),
  ('02d3f02a-acc8-4f17-9645-fa8c75b2406f', (SELECT id FROM subjects WHERE name ILIKE '%Theory of Computation%' LIMIT 1), 2017, 2, 'MCQ', 'Consider the following languages over the alphabet Σ = {a, b, c}.
Let L1 = {an bncm│m, n ≥ 0} and L2 = {am bn cn│m, n ≥ 0}
Which of the following are context-free languages?                                                                  I.
L1∪ L2    II. L1∩ L2
Recursive and recognizable language', '{"A": "I only", "B": "II only", "C": "I and II", "D": "Neither I nor II"}', '"A"', 'Detailed solution pending.'),
  ('7ca29627-f4e7-4cac-b67a-e30405373481', (SELECT id FROM subjects WHERE name ILIKE '%Theory of Computation%' LIMIT 1), 2017, 2, 'MCQ', 'Let A and B be finite alphabets and let # be a symbol outside both A and B. Let
f be a total function from A* to B*. We say f is computable if there exists a
tape. Let Lf denote the language {x # f(x)│x ∈ A* }. Which of the following
statements is true:
(a)f is computable if and only if Lf is recursive.
(b)f is computable if and only if Lf is recursively enumerable.
(c)If f is computable then Lf is recursive, but not conversely.
(d)If f is computable then Lf is recursively enumerable, but not conversely.
NFA', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('72ff3201-10a4-4b11-a22c-81a243a4cf2f', (SELECT id FROM subjects WHERE name ILIKE '%Theory of Computation%' LIMIT 1), 2017, 1, 'MCQ', 'Let 𝛿 denote the transition function and 𝛿̂ denote the extended transition function of the ∈
−𝑁𝐹𝐴 whose transition table is shown below:
Then 𝛿̂(𝑞2, 𝑎𝑏𝑎) is
Context-free and regular language', '{"A": "\u2205   (b) {\ud835\udc5e0, \ud835\udc5e1, \ud835\udc5e3}  (c) {\ud835\udc5e0, \ud835\udc5e1, \ud835\udc5e2} (d) \ud835\udc5e0, \ud835\udc5e2, \ud835\udc5e3"}', '"A"', 'Detailed solution pending.'),
  ('c7f85757-d2c3-4703-9928-8ac940f44c8c', (SELECT id FROM subjects WHERE name ILIKE '%Theory of Computation%' LIMIT 1), 2017, 2, 'MCQ', 'Consider the following languages:
L1 = {ap│p is a prime number}
L2 = {an bm c2m | n ≥ 0, m ≥ 0}
L3 = {an bn c2n │ n ≥ 0}
L4 = {an bn│ n ≥ 1}
Which of the following are CORRECT?
I. L1 is context-free but not regular.
II. L2 is not context-free.
III. L3 is not context-free but recursive.
IV. L4 is deterministic context-free.', '{"A": "I.II and IV Only", "B": "II and III Only", "C": "I and IV Only", "D": "III and VI Only"}', '"A"', 'Detailed solution pending.'),
  ('dc369da7-929e-465d-bbf9-6e38e2ae47a0', (SELECT id FROM subjects WHERE name ILIKE '%Theory of Computation%' LIMIT 1), 2020, 1, 'MCQ', 'Consider the following languages.
L1 = {wxyx | w, x, y ∈ (0 + 1)+}
L2 = {xy | x, y ∈ (a + b)*, |x| = |y|, x ≠ y}
Which one of the following is TRUE?
Answer: (c)
Closure properties of recognizable language', '{"A": "L1 is context-free but not regular and L2 is context-free.", "B": "Neither L1 nor L2 is context-free.", "C": "L1 is regular and L2 is context-free.", "D": "L1 is context-free but L2 is not context-free."}', '"A"', 'Detailed solution pending.'),
  ('dfa07ee2-9868-42e7-aa56-1dd3ccb49a2b', (SELECT id FROM subjects WHERE name ILIKE '%Theory of Computation%' LIMIT 1), 2018, 1, 'MCQ', 'The set of all recursively enumerable languages is
Regular language and closure properties', '{"A": "closed under complementation.", "B": "closed under intersection.", "C": "a subset of the set of all recursive languages.", "D": "an uncountable set."}', '"A"', 'Detailed solution pending.'),
  ('8db5979a-fbdc-46e0-9a36-47ad667cfc14', (SELECT id FROM subjects WHERE name ILIKE '%Theory of Computation%' LIMIT 1), 2018, 1, 'MCQ', 'Given a language L, define L i as follows:
L0 = {ε}
Li = Li-1∙L for all i > 0
The order of a language L is defined as the smallest k such that Lk=Lk+1. Consider
the language L1 (over alphabet 0) accepted by the following automaton.
The order of L1 is ______.
Pumping lemma for regular language', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('30bb5c2a-cc77-40ee-8059-b442ac5c6cda', (SELECT id FROM subjects WHERE name ILIKE '%Theory of Computation%' LIMIT 1), 2019, 1, 'MCQ', 'For Σ = {a, b}, let us consider the regular language                                            L
= {x| x = a2+3k or x = b10+12k, k ≥ 0}.
Which one of the following can be a pumping length (the constant guaranteed
by the pumping lemma) for L?                                                                      (a)3
(b)9   (c)5   (d)24
Closure properties of regular language', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('d3b859cc-830f-4077-8a46-a38487916db7', (SELECT id FROM subjects WHERE name ILIKE '%Theory of Computation%' LIMIT 1), 2020, 1, 'MCQ', 'Consider the following statements.
a. If L1 U L2 is regular, then both L1 and L2 must be regular.
b. The class of regular languages is closed under infinite union.
Which of the above statements is/are TRUE?   [GATE - 2020]
TOC PYQs Answer key:', '{"A": "I only                                           (b) II only", "C": "Both I and II                                (d) Neither I nor II"}', '"A"', 'Detailed solution pending.'),
  ('8c2947f3-fdf9-4d45-bd05-2df7c502531b', (SELECT id FROM subjects WHERE name ILIKE '%Theory of Computation%' LIMIT 1), 2009, 1, 'MCQ', 'Consider a binary max-heap implemented using an array. What is the content of the array
after two delete operations on {25,14,16,13,10,8,12}', '{"A": "{14,13,12,10,8}", "B": "{14,12,13,8,10}", "C": "{14,13,12,8,10}", "D": "{14,13,8,12,10}"}', '"A"', 'Detailed solution pending.'),
  ('ac3e6c1c-31ed-43f6-a8ea-85ab06bba13c', (SELECT id FROM subjects WHERE name ILIKE '%Theory of Computation%' LIMIT 1), 2009, 1, 'MCQ', 'What is the maximum height of any AVL-tree with 7 nodes? Assume that the height of a
tree with a single node is 0.
(a)2    (b)3   (c)4    (d)5', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('7261dc0a-7186-499b-a3ce-2206fabd8c73', (SELECT id FROM subjects WHERE name ILIKE '%Theory of Computation%' LIMIT 1), 2009, 1, 'MCQ', 'The keys 12,18,13,2,3,23,5 and 15 are inserted into an initially empty hash table of length
10 using open addressing with hash function h(k)=kmod10 and linear probing. What is
the resultant hash table?', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('6fe88de9-cca6-49bc-b441-11039edf6038', (SELECT id FROM subjects WHERE name ILIKE '%Theory of Computation%' LIMIT 1), 2010, 1, 'MCQ', 'In a binary tree with n nodes, every node has an odd number of descendants. Every
node is considered to be its own descendant. What is the number of nodes in the tree
that have exactly one child?
(a)0    (b)1   (c)(n-1)/2   (d)n-1', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('f8f235bd-ead9-4f8b-816e-863e77667b4d', (SELECT id FROM subjects WHERE name ILIKE '%Theory of Computation%' LIMIT 1), 2020, 1, 'MCQ', 'The following C function takes a singly -linked list as input argument. It modifies the list
by moving the last element to the front of the list and returns the modified list. Some part
of the code is left blank.
typedef struct node
{
int value;
struct node *next;
} node;
Node *move_to-front(Node *head)
{
Node *p, *q;
if ((head == NULL) || (head -> next == NULL))
return head;
q = NULL;
p = head;
while (p->next != NULL)
{
q=p;
p=p->next;
}
_______________
return head;
}
Choose the correct alternative to replace the blank line.', '{"A": "q=NULL;p\u2192next=head;head=p;", "B": "q\u2192next=NULL;head=p;p\u2192next=head;", "C": "head=p;p\u2192next=q;q\u2192next=NULL;", "D": "q\u2192next=NULL;p\u2192next=head;head=p;   [Marks: ][GATE:  2009]"}', '"A"', 'Detailed solution pending.'),
  ('5aba9a5b-16cb-478b-a89f-64e3d336d71e', (SELECT id FROM subjects WHERE name ILIKE '%Theory of Computation%' LIMIT 1), 2020, 1, 'MCQ', 'Consider a complete undirected graph with vertex set {0, 1, 2, 3, 4}. Entry Wij in the
matrix W below is the weight of the edge {i, j}.  What is the minimum possible weight of
a spanning tree T in this graph such that vertex 0 is a leaf node in the tree T?
(a)7    (b)8    (c)9   (d)10
[Marks: ][GATE:  20010]', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('919a20be-0a50-4bbe-a047-2a890d551d29', (SELECT id FROM subjects WHERE name ILIKE '%Theory of Computation%' LIMIT 1), 2010, 1, 'MCQ', 'A hash table of length 10 uses open addressing with hash function h(k)=k mod 10, and
below.
Which one of the following choices gives a possible order in which the key values could
have been inserted in the table?', '{"A": "46, 42, 34, 52, 23, 33", "B": "34, 42, 23, 52, 33, 46", "C": "46, 34, 42, 23, 52, 33", "D": "42, 46, 33, 23, 34, 52"}', '"A"', 'Detailed solution pending.'),
  ('ffb6ee8e-53fa-482f-b673-da154fa1d85d', (SELECT id FROM subjects WHERE name ILIKE '%Theory of Computation%' LIMIT 1), 2010, 2, 'MCQ', 'A hash table of length 10 uses open addressing with hash function h(k)=kmod10, and
below
How many different insertion sequences of the key values using the same hash function
and linear probing will result in the hash table shown above?
(a)10   (b)20   (c)30   (d)40', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('d90c9dc8-24ca-475c-863e-f083b3a634c9', (SELECT id FROM subjects WHERE name ILIKE '%Theory of Computation%' LIMIT 1), 2010, 1, 'MCQ', 'Two alternative packages A and B are available for processing a database having 10k
records.Package A requires 0.0001n2 time units and package B requires 10nlog10n
time units to process n records. What is the smallest value of k for which package B
will be preferred over A?', '{"A": "12    (b) 10   (c) 6   (d) 5"}', '"A"', 'Detailed solution pending.'),
  ('f423c148-78bc-451a-b5c8-b8c6452585f2', (SELECT id FROM subjects WHERE name ILIKE '%Theory of Computation%' LIMIT 1), 2010, 1, 'MCQ', 'The weight of a sequence a0, a1, …, an-1 of real numbers is defined as a0+a1/2+…+
aa-1/2n-1. A subsequence of a sequence is obtained by deleting some elements from
the sequence, keeping the order of the remaining elements the same. Let X denote the
maximum possible weight of a subsequence of a0, a1, …,an-1 and Y the maximum
possible weight of a subsequence of a1, a2, …,an-1. Then X is equal to', '{"A": "max(Y, a0+Y)     (b) max(Y, a0+Y/2)", "C": "max(Y, a0+2Y)     (d) a0+Y/2"}', '"A"', 'Detailed solution pending.'),
  ('bbe5f032-1692-41d9-9a8e-6af1110a81fd', (SELECT id FROM subjects WHERE name ILIKE '%Theory of Computation%' LIMIT 1), 2011, 1, 'MCQ', 'A max-heap is a heap where the value of each parent is greater than or equal to the
value of its children. Which of the following is a max-heap?', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('3b3fb98d-21a5-4da6-916e-d095fb408fb1', (SELECT id FROM subjects WHERE name ILIKE '%Theory of Computation%' LIMIT 1), 2020, 1, 'MCQ', 'An algorithm to find the length of the longest monotonically increasing sequence of
numbers in an array A[0:n −1] is given below. Let Li, denote the length of the longest
monotonically increasing sequence starting at index i in the array.
Li={  1 + Li + 1if A[i]  <  𝐴[𝑖 + 1]
1                              Otherwise
Initialize Ln−1=1.
Finally, the length of the longest monotonically increasing sequence is
max(L0,L1,…,Ln−1). Which of the following statements is TRUE?
paradigm', '{"A": "The algorithm uses dynamic programming paradigm", "B": "The algorithm has a linear complexity and uses branch and bound paradigm", "C": "The algorithm has a non -linear polynomial complexity and uses branch and bound", "D": "The algorithm uses divide and conquer paradigm"}', '"A"', 'Detailed solution pending.'),
  ('b3e6d326-afdc-4539-96af-18ea752e8dcd', (SELECT id FROM subjects WHERE name ILIKE '%Theory of Computation%' LIMIT 1), 2011, 2, 'MCQ', 'We are given a set of n distinct elements and an unlabelled binary tree with n nodes.
In how many ways can we populate the tree with the given set so that it becomes a
binary search tree?', '{"A": "0", "B": "1", "C": "n!", "D": "(1/(n+1)).2nCn"}', '"A"', 'Detailed solution pending.'),
  ('e462c864-3701-4753-9cf2-6c65bb0f29c5', (SELECT id FROM subjects WHERE name ILIKE '%Theory of Computation%' LIMIT 1), 2011, 2, 'MCQ', 'Which of the given options provides the increasing order of asymptotic complexity of
functions f1, f2, f3 and f4?
f1(n) = 2^n
f2(n) = n^(3/2)
f3(n) = nLogn
f4(n) = n^(Logn)', '{"A": "f3, f2, f4, f1      (b) f3, f2, f1, f4", "C": "f2, f3, f1, f4      (d) f2, f3, f4, f1"}', '"A"', 'Detailed solution pending.'),
  ('3c6cd31e-33fe-4af2-9756-71d584a0d63a', (SELECT id FROM subjects WHERE name ILIKE '%Theory of Computation%' LIMIT 1), 2020, 1, 'MCQ', 'Four matrices M1, M2, M3 and M4 of dimensions pxq, qxr, rxs and sxt respectively can be
multiplied is several ways with different number of total scalar multiplications. For
example, when multiplied as ((M 1 X M 2) X (M 3 X M 4)), the total number of
multiplications is pqr + rst + prt. When multiplied as (((M1 X M2) X M3) X M4), the total
number of scalar multiplications is pqr + prs + pst.
If p = 10, q = 100, r = 20, s = 5 and t = 80, then the number of scalar multiplications
needed is:', '{"A": "248000", "B": "44000", "C": "19000", "D": "25000"}', '"A"', 'Detailed solution pending.'),
  ('be893117-8b4a-498b-8f8e-e4e2e24b493b', (SELECT id FROM subjects WHERE name ILIKE '%Theory of Computation%' LIMIT 1), 2012, 1, 'MCQ', 'The worst case running time to search for an element in a balanced binary search tree
with n2n elements is
(a)Θ (n log n)
(b)Θ (n log n)
(c)Θ (n)
(d)Θ (log n)', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('f3c13bd2-0306-4374-abc9-bd9ecb6c3580', (SELECT id FROM subjects WHERE name ILIKE '%Theory of Computation%' LIMIT 1), 2012, 1, 'MCQ', 'The recurrence relation capturing the optimal execution time of the Towers of Hanoi
problem with n discs is', '{"A": "T(n) = 2T(n - 2) + 2", "B": "T(n) = 2T(n - 1) + n", "C": "T(n) = 2T(n/2) + 1", "D": "T(n) = 2T(n - 1) + 1"}', '"A"', 'Detailed solution pending.'),
  ('5b988a3b-6543-4623-b2e3-1ac52f44b3da', (SELECT id FROM subjects WHERE name ILIKE '%Theory of Computation%' LIMIT 1), 2012, 2, 'MCQ', 'Suppose a circular queue of capacity (n - 1) elements is implemented with an array of n
elements. Assume that the insertion and deletion operations are carried out using REAR
and FRONT as array index variables, respectively. Initially, REAR = FRONT = 0. The
conditions to detect queue full and queue empty are
(a)full: (REAR+1)mod n == FRONT
empty: REAR == FRONT
(b)full: (REAR+1)mod n == FRONT
empty: (FRONT+1) mod n == REAR
(c)full: REAR == FRONT
empty: (REAR+1) mod n == FRONT
(d)full: (FRONT+1)mod n == REAR
empty: REAR == FRONT', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('48aa9121-5705-44af-92d0-a546369ee234', (SELECT id FROM subjects WHERE name ILIKE '%Theory of Computation%' LIMIT 1), 2020, 1, 'MCQ', 'Consider the directed graph shown in the figure below. There are multiple shortest paths
between vertices S and T. Which one will be reported by Dijkstra’s shortest path
algorithm? Assume that, in any iteration, the shortest path to a vertex v is updated only
when a strictly shorter path to v is discovered.', '{"A": "SDT   (B) SBDT   (C) SACDT    (D) SACET"}', '"A"', 'Detailed solution pending.'),
  ('2afa68e3-914d-4d88-aed1-31bf353bc326', (SELECT id FROM subjects WHERE name ILIKE '%Theory of Computation%' LIMIT 1), 2020, 1, 'MCQ', 'The height of a tree is defined as the number of edges on the longest path in the tree. The
function shown in the pseudocode below is invoked as height (root) to compute the height
of a binary tree rooted at the tree pointer root.
The height of a tree is defined as the number of edges on the longest path in the
tree. The function shown in the pseudocode below is invoked as height (root) to
compute the height of a binary tree rooted at the tree pointe r root.
The appropriate expression for the two boxes B1 and B2 are', '{"A": "B1 : (1 + height(n->right)), B2 : (1 + max(h1,h2))", "B": "B1 : (height(n->right)), B2 : (1 + max(h1,h2))", "C": "B1 : height(n->right), B2 : max(h1,h2)", "D": "B1 : (1 + height(n->right)), B2 : max(h1,h2)"}', '"A"', 'Detailed solution pending.'),
  ('18242daf-f5ab-44d6-bc62-37b49567a34b', (SELECT id FROM subjects WHERE name ILIKE '%Theory of Computation%' LIMIT 1), 2020, 1, 'MCQ', 'Let W(n) and A(n) denote respectively, the worst case and average case running time of
an algorithm executed on an input of size n. Which of the following is ALWAYS TRUE?', '{"A": "A(n) = \u03a9 (W(n))     (B) A(n) = \u0398 (W(n))", "C": "A(n) = O (W(n))     (D) A(n) = o (W(n))"}', '"A"', 'Detailed solution pending.'),
  ('d3a6038c-cab1-4bd9-8f6d-24bd97a02a9c', (SELECT id FROM subjects WHERE name ILIKE '%Theory of Computation%' LIMIT 1), 2013, 1, 'MCQ', 'Which one of the following is the tightest upper bound that represents the number of
swaps required to sort n numbers using selection sort?', '{"A": "O(log n)    (B) O(n)  (C) O(n log n)   (D) O(n2)"}', '"A"', 'Detailed solution pending.'),
  ('edad73c4-0540-4826-af43-7995e71ddf64', (SELECT id FROM subjects WHERE name ILIKE '%Theory of Computation%' LIMIT 1), 2013, 2, 'MCQ', 'Which one of the following is the tightest upper bound that represents the time complexity
of inserting an object into a binary search tree of n nodes?', '{"A": "O(1)   (B) O(log n)   (C) O(n)   (D) O(n log n)"}', '"A"', 'Detailed solution pending.'),
  ('a9001c33-ead3-4e7c-b368-814e39428496', (SELECT id FROM subjects WHERE name ILIKE '%Theory of Computation%' LIMIT 1), 2013, 2, 'MCQ', 'What is the time complexity of Bellman -Ford single-source shortest path algorithm on a
complete graph of n vertices?', '{"A": "\u0398(n2)    (B) \u0398(n2log n)  (C) \u0398(n3)    (D) \u0398(n3log n)"}', '"A"', 'Detailed solution pending.'),
  ('7e85ff30-e4e8-4aa2-bff1-75046c80ac97', (SELECT id FROM subjects WHERE name ILIKE '%Theory of Computation%' LIMIT 1), 2020, 1, 'MCQ', 'The number of elements that can be sorted in Θ (log n) time using heap sort is', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('06fef2f8-ff98-464e-a0b9-59c3f3300a1c', (SELECT id FROM subjects WHERE name ILIKE '%Theory of Computation%' LIMIT 1), 2020, 1, 'MCQ', 'Consider the following function:
int unknown(int n){
int i, j, k=0;
for (i=n/2; i<=n; i++)
for (j=2; j<=n; j=j*2)
k = k + n/2;
return (k);
}
The return value of the function is', '{"A": "\u0398(n2)         (b) \u0398(n2logn)        (c)\u0398(n3)        (d)\u0398(n3logn)"}', '"A"', 'Detailed solution pending.'),
  ('a92ffbfd-e4c5-497b-b15d-7b32d83ab9ef', (SELECT id FROM subjects WHERE name ILIKE '%Theory of Computation%' LIMIT 1), 2020, 1, 'MCQ', 'The preorder traversal sequence of a binary search tree is 30, 20, 10, 15, 25, 23, 39, 35,
42. Which one of the following is the postorder traversal sequence of the same tree?', '{"A": "10, 20, 15, 23, 25, 35, 42, 39, 30", "B": "15, 10, 25, 23, 20, 42, 35, 39, 30", "C": "15, 20, 10, 23, 25, 42, 35, 39, 30", "D": "15, 10, 23, 25, 20, 35, 42, 39, 30"}', '"A"', 'Detailed solution pending.'),
  ('35e7664d-a1c7-442b-b0ab-1320fa47f76d', (SELECT id FROM subjects WHERE name ILIKE '%Theory of Computation%' LIMIT 1), 2020, 1, 'MCQ', 'Consider the following operation along with Enqueue and Dequeue operations on
queues, where k is a global parameter.
MultiDequeue(Q){
m = k
while (Q is not empty) and (m > 0) {
Dequeue(Q)
m = m – 1
}
}
What is the worst case time complexity of a sequence of n queue operations on an initially
empty queue?', '{"A": "\u0398(n)", "B": "\u0398(n + k)", "C": "\u0398(nk)", "D": "\u0398(n2)"}', '"A"', 'Detailed solution pending.'),
  ('64b9cc19-4c05-4439-b6db-5ac552da492c', (SELECT id FROM subjects WHERE name ILIKE '%Theory of Computation%' LIMIT 1), 2014, 1, 'MCQ', 'Let G be a graph with n vertices and m edges. What is the tightest upper bound on the
running time of Depth First Search on G, when G is represented as an adjacency matrix?
(a)θ(n)
(b)θ(n+m)
(c)θ(n2 )
(d)θ(m2 )', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('91695d5f-32fd-4e04-bb64-7298a3ed9d7f', (SELECT id FROM subjects WHERE name ILIKE '%Theory of Computation%' LIMIT 1), 2014, 1, 'MCQ', 'Consider a rooted n node binary tree represented using pointers. The best upper bound
on the time required to determine the number of subtrees having exactly 4 nodes is
O(nalogbn). Then the value of a+10b is ________.', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('0aec11de-9639-43f3-8fba-5873fbf390b4', (SELECT id FROM subjects WHERE name ILIKE '%Theory of Computation%' LIMIT 1), 2014, 2, 'MCQ', 'Consider the directed graph given below. Which one of the following is TRUE?', '{"A": "The graph doesn\u2019t have any topological ordering", "B": "Both PQRS and SRPQ are topological ordering", "C": "Both PSRQ and SPRQ are topological ordering", "D": "PSRQ is the only topological ordering"}', '"A"', 'Detailed solution pending.'),
  ('b7d6085d-9c89-4e81-9e8c-8613b48831eb', (SELECT id FROM subjects WHERE name ILIKE '%Theory of Computation%' LIMIT 1), 2014, 2, 'MCQ', 'Let P be a quicksort program to sort numbers in ascending order using the first elements
as the pivot. Let t1 and t2 be the number of comparisons made by P for the inputs [1 2 3
4 5] and [4 1 5 3 2] respectively. Which one of the following holds?', '{"A": "t1=5    (b) t12    (c) t1>t2  (d) t1=t2"}', '"A"', 'Detailed solution pending.'),
  ('614bf1c5-c1ad-4b50-97bc-593f4e08d317', (SELECT id FROM subjects WHERE name ILIKE '%Theory of Computation%' LIMIT 1), 2014, 1, 'MCQ', 'Consider a hash table with 9 slots.  The hash function is h(k) = k mod 9.  The collisions
are resolved by chaining.  The following 9 keys are inserted in the order: 5, 28, 19, 15, 20,
33, 12, 17, 10.  The maximum, minimum, and average chain lengths in the hash table,
respectively, are
(a)3, 0, and 1
(b)3, 3, and 3
(c)4, 0, and 1
(d)3, 0, and 2', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('352cee4b-d03b-4d27-b6c3-ce2b963d826f', (SELECT id FROM subjects WHERE name ILIKE '%Theory of Computation%' LIMIT 1), 2014, 2, 'MCQ', 'Consider the following C function in which size is the number of elements in the array E:
int MyX(int *E, unsigned int size)
{
int Y = 0;
int Z;
int i, j, k;
for(i = 0; i< size; i++)
Y = Y + E[i];
for(i=0; i < size; i++)
for(j = i; j < size; j++)
{
Z = 0;
for(k = i; k <= j; k++)
Z = Z + E[k];
if(Z > Y)
Y = Z;
}
return Y;
}
The value returned by the function MyXis the', '{"A": "maximum possible sum of elements in any sub-array of array E.", "B": "maximum element in any sub-array of array E.", "C": "sum of the maximum elements in all possible sub-arrays of array E.", "D": "the sum of all the elements in the array E."}', '"A"', 'Detailed solution pending.'),
  ('ba171c09-120a-444d-aeb5-81f5aae77795', (SELECT id FROM subjects WHERE name ILIKE '%Theory of Computation%' LIMIT 1), 2014, 2, 'MCQ', 'Consider the following pseudo code. What is the total number of multiplications to be
performed?
D = 2
for i = 1 to n do
for j = i to n do
for k = j + 1 to n do
D = D * 3', '{"A": "Half of the product of the 3 consecutive integers.", "B": "One-third of the product of the 3 consecutive integers.", "C": "One-sixth of the product of the 3 consecutive integers.", "D": "None of the above."}', '"A"', 'Detailed solution pending.'),
  ('e097b2d8-9bfb-4f11-853c-8d57e1b4e235', (SELECT id FROM subjects WHERE name ILIKE '%Theory of Computation%' LIMIT 1), 2020, 1, 'MCQ', 'The minimum number of comparisons required to find the minimum and the maximum
of 100 numbers is________________', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('3da35b33-2ed0-4c89-894e-eb824e11cc2e', (SELECT id FROM subjects WHERE name ILIKE '%Theory of Computation%' LIMIT 1), 2014, 1, 'MCQ', 'Consider a 6 -stage instruction pipeline, where all stages are perfectly balanced. Assume
that there is no cycle -time overhead of pipelining. When an application is executing on
this 6-stage pipeline, the speedup achieved with respect to non-pipelined execution if 25%
of the instructions incur 2 pipeline stall cycles is ______________________.', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('422f5f37-70fe-4bf5-8ab2-5541843ca94b', (SELECT id FROM subjects WHERE name ILIKE '%Theory of Computation%' LIMIT 1), 2020, 1, 'MCQ', 'An access sequence of cache block addresses is of length N and contains n unique block
addresses. The number of  unique block addresses between two consecutive accesses to
the same block address is bounded above by k. What is the miss ratio if the access
sequence is passed through a cache of associativity A≥k exercising least -recently-used
replacement policy?', '{"A": "n/N", "B": "1/N", "C": "1/A", "D": "k/n       [Marks:1][GATE:  2014][SET-1]"}', '"A"', 'Detailed solution pending.'),
  ('24d140f1-96b4-4096-91eb-e6c374a73899', (SELECT id FROM subjects WHERE name ILIKE '%Theory of Computation%' LIMIT 1), 2014, 1, 'MCQ', 'A priority queue is implemented as a Max -Heap. Initially, it has 5 elements. The level -
order traversal of the heap is: 10, 8, 5, 3, 2. Two new elements 1 and 7 are inserted into
the heap in that order. The level -order traversal of the heap after the insertion of the
elements is:
(a)10, 8, 7, 3, 2, 1, 5
(b)10, 8, 7, 2, 3, 1, 5
(c)10, 8, 7, 1, 2, 3, 5
(d)10, 8, 7, 5, 3, 2, 1', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('d98c3e6e-f079-4e86-a57f-4d04d97080df', (SELECT id FROM subjects WHERE name ILIKE '%Theory of Computation%' LIMIT 1), 2014, 2, 'MCQ', 'Consider the tree arcs of a BFS  traversal from a source node W in an unweighted,
connected, undirected graph.  The tree T formed by the tree arcs is a data structure for
computing', '{"A": "the shortest path between every pair of vertices.", "B": "the shortest path from W to every vertex in the graph.", "C": "the shortest paths from W to only those nodes that are leaves of T.", "D": "the longest path in the graph."}', '"A"', 'Detailed solution pending.'),
  ('371d0f90-8cd1-4839-9d54-c022451eeef5', (SELECT id FROM subjects WHERE name ILIKE '%Theory of Computation%' LIMIT 1), 2015, 1, 'MCQ', 'The height of a tree is the length of the longest root -to-leaf path in it. The maximum and
minimum number of nodes in a binary tree of height 5 are', '{"A": "63 and 6, respectively", "B": "64 and 5, respectively", "C": "32 and 6, respectively", "D": "31 and 5, respectively"}', '"A"', 'Detailed solution pending.'),
  ('ab8d9c8d-6e25-40fd-95cc-be62215944b8', (SELECT id FROM subjects WHERE name ILIKE '%Theory of Computation%' LIMIT 1), 2020, 1, 'MCQ', 'Which one of the following is the recurrence equation for the worst case time complexity
of the Quicksort algorithm for sorting n(≥ 2) numbers? In the recurrence equations given
in the options below, c is a constant.', '{"A": "T(n) = 2T (n/2) + cn", "B": "T(n) = T(n \u2013 1) + T(0) + cn", "C": "T(n) = 2T (n \u2013 2) + cn", "D": "T(n) = T(n/2) + cn"}', '"A"', 'Detailed solution pending.'),
  ('31d739fd-d2f9-4244-bb77-8af26851c142', (SELECT id FROM subjects WHERE name ILIKE '%Theory of Computation%' LIMIT 1), 2015, 2, 'MCQ', 'Consider a max heap, represented by the array: 40, 30, 20, 10, 15, 16, 17, 8, 4. N
now consider that a value 35 is inserted into this heap. After insertion, the new heap is
(a)40, 30, 20, 10, 15, 16, 17, 8, 4, 35
(b)40, 35, 20, 10, 30, 16, 17, 8, 4, 15
(c)40, 30, 20, 10, 35, 16, 17, 8, 4, 15
(d)40, 35, 20, 10, 15, 16, 17, 8, 4, 30', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('879aa326-0d75-42d3-8e71-c8f4ef6deb32', (SELECT id FROM subjects WHERE name ILIKE '%Theory of Computation%' LIMIT 1), 2020, 1, 'MCQ', 'Which of the following is/are correct inorder traversal sequence(s) of binary search
tree(s)?
I. 3, 5, 7, 8, 15, 19, 25
II. 5, 8, 9, 12, 10, 15, 25
III. 2, 7, 10, 8, 14, 16, 20
IV. 4, 6, 7, 9 18, 20, 25', '{"A": "I and IV only", "B": "II and III only", "C": "II and IV only", "D": "II only"}', '"A"', 'Detailed solution pending.'),
  ('d22b6590-2d8c-4699-9cdb-d726fceba4d2', (SELECT id FROM subjects WHERE name ILIKE '%Theory of Computation%' LIMIT 1), 2020, 1, 'MCQ', 'What are the worst-case complexities of insertion and deletion of a key in a binary search
tree?', '{"A": "\u03b8 (log)for both insertion and deletion", "B": "\u03b8 (n)for both insertion and deletion", "C": "\u03b8 (n)for insertion and \u03b8 (log)n deletion", "D": "\u03b8 (log n)for insertion and \u03b8(n) for deletion"}', '"A"', 'Detailed solution pending.'),
  ('5a54f71b-e936-48ca-b7d6-e2e907aa61cb', (SELECT id FROM subjects WHERE name ILIKE '%Theory of Computation%' LIMIT 1), 2020, 1, 'MCQ', 'Match the following:', '{"A": "P-iii, Q-ii, R-iv, S-i", "B": "P-i, Q-ii, R-iv, S-iii", "C": "P-ii, Q-iii, R-iv, S-i", "D": "P-ii, Q-i, R-iii, S-iv     [Marks: 2][GATE:  2015][SET-1]"}', '"A"', 'Detailed solution pending.'),
  ('10d4b58b-330d-45a5-87ca-a44eac38d6b1', (SELECT id FROM subjects WHERE name ILIKE '%Theory of Computation%' LIMIT 1), 2020, 1, 'MCQ', 'Let an represent the number of bit strings of length n containing two consecutive 1s.
What is the recurrence relation for an?', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('1ff1db88-4cae-4856-9d7a-8c787f20f804', (SELECT id FROM subjects WHERE name ILIKE '%Theory of Computation%' LIMIT 1), 2020, 1, 'MCQ', 'An algorithm performs (log N) 1/2 find operations, Ninsert operations, (logN) 1/2delete
operations, and (log N)1/2decrease-key operations on a set of data items with keys drawn
from a linearly ordered set. For a delete operation, a pointer is provided to the record that
must be deleted. For the decrease -key operation, a pointer is provided to  the record that
has its key decreased. Which one of the following data structures is the most suited for
the algorithm to use, if the goal is to achieve the best total asymptotic complexity
considering all the operations?', '{"A": "Unsorted array", "B": "Min-heap", "C": "Sorted array", "D": "Sorted doubly linked list"}', '"A"', 'Detailed solution pending.'),
  ('3c223e84-214b-4f99-8698-ccb74c60d0b6', (SELECT id FROM subjects WHERE name ILIKE '%Theory of Computation%' LIMIT 1), 2020, 1, 'MCQ', 'Consider the following C function.
Which one of the following most closely approximates the return value of the function
fun1?', '{"A": "n3    (B) n(log)2   (C)n logn  (D)n log(logn)"}', '"A"', 'Detailed solution pending.'),
  ('416c3deb-2d3b-4fd2-9305-5dab995e8e39', (SELECT id FROM subjects WHERE name ILIKE '%Theory of Computation%' LIMIT 1), 2020, 1, 'MCQ', 'Let G=(V,E) be a simple undirected graph, and s be a particular vertex in it called the
source. For x∈V, let d(x) denote the shortest distance in G from s to x. A breadth first
search (BFS) is performed starting at s. Let T be the resultant BFS tree. If (u,v) is an edge
of G that is not in T, then which one of the following CANNOT be the value of d(u)−d(v)?', '{"A": "-1   (B) 0    (C) 1   (D) 2"}', '"A"', 'Detailed solution pending.'),
  ('0b1ebea1-f7e4-4e2c-9814-28b6bf60c900', (SELECT id FROM subjects WHERE name ILIKE '%Theory of Computation%' LIMIT 1), 2020, 1, 'MCQ', 'An unordered list contains n distinct elements. The number of comparisons to find an
element in this list that is neither maximum nor minimum is', '{"A": "\u019f(n log n)  (B) \u019f(n)   (C) \u019f(log n)  (D) \u019f(1)"}', '"A"', 'Detailed solution pending.'),
  ('c056aa58-a3ae-4123-bf84-3edbf2d4839b', (SELECT id FROM subjects WHERE name ILIKE '%Theory of Computation%' LIMIT 1), 2020, 1, 'MCQ', 'Consider a complete binary tree where the left and the right subtrees of the root are
max-heaps. The lower bound for the number of operations to convert the tree to a heap
is', '{"A": "\u03a9(log\ud835\udc5b)  (b) \u03a9(\ud835\udc5b)   (c) \u03a9(\ud835\udc5blog\ud835\udc5b)  (d) \u03a9(\ud835\udc5b2)"}', '"A"', 'Detailed solution pending.'),
  ('129b96f8-b3f6-4b88-9af1-bffc31b21236', (SELECT id FROM subjects WHERE name ILIKE '%Theory of Computation%' LIMIT 1), 2015, 1, 'MCQ', 'A binary tree T has 20 leaves. The number of nodes in T having two children is_____.', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('84f9c0b7-2bca-4fa5-97b4-c65ab5aa0973', (SELECT id FROM subjects WHERE name ILIKE '%Theory of Computation%' LIMIT 1), 2020, 1, 'MCQ', 'Given below are some algorithms, and some algorithm design paradigms.
Match the above algorithms on the left to the corresponding design paradigm they follow.', '{"A": "1-i, 2-iii, 3-i, 4-v.", "B": "1-iii, 2-iii, 3-i, 4-v.", "C": "1-iii, 2-ii, 3-i, 4-iv.", "D": "1-iii, 2-ii, 3-i, 4-v."}', '"A"', 'Detailed solution pending.'),
  ('f16c8cf2-d089-4af6-a293-a0c0037b3d59', (SELECT id FROM subjects WHERE name ILIKE '%Theory of Computation%' LIMIT 1), 2020, 1, 'MCQ', 'A Young tableau is a 2D array of integers increasing from left to right and from top to
bottom. Any unfilled entries are marked with ∞, and hence there cannot be any entry to
the right of, or below a ∞. The following Young tableau consists of unique entries.
When an element is removed from a Young tableau, other elements should be moved into
its place so that the resulting table is still a Young tableau (unfilled entries may be filled
in with a ∞). The minimum number of entries (other than 1) to be shifted, to remove 1
from the given Young tableau is ______________.', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('8b2d65cc-2e27-493e-b71a-f37e40127a01', (SELECT id FROM subjects WHERE name ILIKE '%Theory of Computation%' LIMIT 1), 2020, 1, 'MCQ', 'Suppose you are provided with the following function declaration in the C programming
language.
int partition(int a[], int n);
The function treats the first element of a[] as a pivot, and rearranges the array so that all
elements less than or equ al to the pivot is in the left part of the array, and all elements
greater than the pivot is in the right part. In addition, it moves the pivot so that the pivot
is the last element of the left part. The return value is the number of elements in the left
part.
The following partially given function in the C programming language is used to find the
𝑘𝑡hsmallest element in an array a[] of size n using the partition function. We assume 𝑘≤𝑛.
int kth_smallest(int a[], int n, int k)
{ int left_end = partition(a,n);
if ( left_end+1 == k ){
return a[left_end]; }
if ( left_end+1 > k ){
return kth_smallest( _____________________ );
} else {
return kth_smallest( _____________________ );
}
}
The missing argument lists are respectively', '{"A": "(a, left_end, k) and (a+left_end+1, n-left_end-1, k-left_end-1)", "B": "(a, left_end, k) and (a, n-left_end-1, k-left_end-1)", "C": "(a+left_end+1, n-left_end-1, k-left_end-1) and (a, left_end, k)", "D": "(a, n-left_end-1, k-left_end-1) and (a, left_end, k)"}', '"A"', 'Detailed solution pending.'),
  ('fe2bd7be-82db-40bd-a807-db3123633fb6', (SELECT id FROM subjects WHERE name ILIKE '%Theory of Computation%' LIMIT 1), 2020, 1, 'MCQ', 'Which one of the following hash functions on integers will distribute keys most uniformly
over 10 buckets numbered 0 to 9 for 𝑖𝑖 ranging from 0 to 2020?', '{"A": "\u210e(\ud835\udc56)= \ud835\udc562 mod 10", "B": "\u210e(\ud835\udc56)= \ud835\udc563 mod 10", "C": "\u210e(\ud835\udc56)=(11\u2217\ud835\udc562) mod 10", "D": "\u210e(\ud835\udc56)=(12\u2217\ud835\udc56) mod 10"}', '"A"', 'Detailed solution pending.'),
  ('c03cb8c0-7dd9-48a7-a61c-a446f9782cbb', (SELECT id FROM subjects WHERE name ILIKE '%Theory of Computation%' LIMIT 1), 2015, 2, 'MCQ', 'Assume that the bandwidth for a TCP connection is 1048560 bits/sec. Let  α be the value
of RTT in milliseconds. (rounded off to the nearest integer) after which the TCP window
scale option is needed. Let β be the maximum possible window size the window sca le
option. Then the values of α and β are', '{"A": "63 milliseconds, 65535\u00d7214", "B": "63 milliseconds, 65535\u00d7216", "C": "500 milliseconds, 65535\u00d7214", "D": "500 milliseconds, 65535\u00d7216"}', '"A"', 'Detailed solution pending.'),
  ('bd953e25-c98a-4504-bae0-81da10f0634e', (SELECT id FROM subjects WHERE name ILIKE '%Theory of Computation%' LIMIT 1), 2015, 1, 'MCQ', 'Given a hash table T with 25 slots that stores 2000 elements, the load factor α for T is
___________.', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('deeb393d-a027-446f-91da-0c0046a61809', (SELECT id FROM subjects WHERE name ILIKE '%Theory of Computation%' LIMIT 1), 2020, 1, 'MCQ', 'Consider  the equality ∑ 𝑖3𝑛
𝑖=0  = X and the following choice for X
i.  (n4)
ii.  (n5)
iii. 0 (n5)
iv.  (n3)
The equality above remains correct if X is replaced by
A. Only I
B. Only II
C. I or III or IV but not II
D. II or III or IV but not I', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('42ebdda4-bcd6-43ad-a610-ca50187c7e79', (SELECT id FROM subjects WHERE name ILIKE '%Theory of Computation%' LIMIT 1), 2020, 1, 'MCQ', 'While inserting the elements 71, 65, 84, 69, 67, 83 in an empty binary search tree (BST) in the sequence shown, the
element in the lowest level is _____________________', '{"B": "67  (C) 69  (D) 83"}', '"A"', 'Detailed solution pending.'),
  ('df98a3b6-55b9-42c2-8ac9-425741674e2c', (SELECT id FROM subjects WHERE name ILIKE '%Theory of Computation%' LIMIT 1), 2020, 1, 'MCQ', 'The result evaluating the postfix expression 10 5 + 60 6 / * 8 − is', '{"A": "284", "B": "213", "C": "142", "D": "71"}', '"A"', 'Detailed solution pending.'),
  ('85d2dc57-2476-40c8-bdd4-87b2c0cf1899', (SELECT id FROM subjects WHERE name ILIKE '%Theory of Computation%' LIMIT 1), 2020, 1, 'MCQ', 'Consider a binary tree T that has 200 leaf nodes. Then, the number of nodes in T that
have exactly two children are ________.', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('880de9b8-a5e3-4911-974f-c3052bae47db', (SELECT id FROM subjects WHERE name ILIKE '%Theory of Computation%' LIMIT 1), 2020, 1, 'MCQ', 'Consider the following array of elements.
〈89,19,50,17,12,15,2,5,7,11,6,9,100〉 The minimum number of interchanges needed to
convert it into a max-heap is', '{"A": "4", "B": "5", "C": "2", "D": "3"}', '"A"', 'Detailed solution pending.'),
  ('2df3d6d4-c4a5-448a-a5a7-aa4c87df0b1f', (SELECT id FROM subjects WHERE name ILIKE '%Theory of Computation%' LIMIT 1), 2020, 1, 'MCQ', 'Suppose 𝑐=〈[0],…,𝑐[𝑘−1]〉 is an array of length 𝑘, where all the entries are from the set
{0,1}. For any positive integers 𝑎 and 𝑛𝑛, consider the following pseudocode.
DOSOMETHING(𝑐,𝑎 ,𝑛) 𝑧←1
for 𝑖←0 to 𝑘−1
do 𝑧←𝑧2 mod 𝑛
if 𝑐[𝑖 ]=1
then 𝑧←(𝑧×𝑎 ) mod 𝑛
return 𝑧
If 𝑘=4, 𝑐=〈1,0,1,1〉, 𝑎 =2 and 𝑛=8, then the output of DOSOMETHING( 𝑐,𝑎 ,𝑛) is
__________________.', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('12d8a4e6-94eb-4a8a-b2f1-27890f9af0d6', (SELECT id FROM subjects WHERE name ILIKE '%Theory of Computation%' LIMIT 1), 2020, 1, 'MCQ', 'Let f (n) = n and g  (n) = n (1+ Sin n) where n is a positive integer. Which of the following
statements is/are correct?
I. f(n) = 0 (g (n))
II. f(n) = (g(n))
f(n) = 0 (g (n)) f(n) = a(9(n))', '{"A": "Only I", "B": "Only II", "C": "Both I and II", "D": "Neither I nor II"}', '"A"', 'Detailed solution pending.'),
  ('14bfe342-1f47-48df-b259-a12df6eb63bf', (SELECT id FROM subjects WHERE name ILIKE '%Theory of Computation%' LIMIT 1), 2020, 1, 'MCQ', 'Assume that a mergesort algorithm in the worst case takes 30 seconds for an input of size
64. Which of the following most closely approximates the maximum input size of a
problem that can be solved in 6 minutes?', '{"A": "256", "B": "512", "C": "1024", "D": "2048"}', '"A"', 'Detailed solution pending.'),
  ('4c967afd-d60e-4c93-9058-ce70e3631b5f', (SELECT id FROM subjects WHERE name ILIKE '%Theory of Computation%' LIMIT 1), 2016, 1, 'MCQ', 'Let an be the number  of n-bit strings that do NOT contain two consecutive 1 ′s. Which
one of the following is the recurrence relation for an?', '{"A": "an=an\u22121+2an\u22122", "B": "an=an\u22121+an\u22122", "C": "an=2an\u22121+an\u22122", "D": "an=2an\u22121+2an\u22122"}', '"A"', 'Detailed solution pending.'),
  ('886c7889-9169-4fe0-b3b9-20b3b672ec38', (SELECT id FROM subjects WHERE name ILIKE '%Theory of Computation%' LIMIT 1), 2016, 1, 'MCQ', 'A queue is implemented using an array such that ENQUEUE and DEQUEUE operations
are performed efﬁciently. Which one of the following statements is CORRECT (n refers
to the number of items in the queue)?
other operation will be Ω(n)', '{"A": "Both operations can be performed in O(1) time", "B": "At most one operation can be performed in O(1) time  but the worst case time for the", "C": "The worst case time complexity for both operations will be \u2126(n)", "D": "Worst case time complexity for both operations will be \u2126(logn)"}', '"A"', 'Detailed solution pending.'),
  ('0a2518a8-f52c-44aa-ac7b-16145d0d4c52', (SELECT id FROM subjects WHERE name ILIKE '%Theory of Computation%' LIMIT 1), 2016, 1, 'MCQ', 'Consider the following directed graph:
The number of different topological orderings of the vertices of the graph is _______.
(a)7     (b)8    (c)9   (d)6', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('bd73ac17-504d-4a62-8b20-b75bc840fcc1', (SELECT id FROM subjects WHERE name ILIKE '%Theory of Computation%' LIMIT 1), 2016, 1, 'MCQ', 'The worst case running times of Insertion sort, Merge sort and Quick sort, respectively,
are:', '{"A": "\u0398(n log n), \u0398(n log n) and \u0398(n2)", "B": "\u0398(n2), \u0398(n2) and \u0398(n Log n)", "C": "\u0398(n2), \u0398(n log n) and \u0398(n log n)", "D": "\u0398(n2), \u0398(n log n) and \u0398(n2)"}', '"A"', 'Detailed solution pending.'),
  ('961fac45-f608-4720-aadd-968c8299f94a', (SELECT id FROM subjects WHERE name ILIKE '%Theory of Computation%' LIMIT 1), 2020, 1, 'MCQ', 'Let G be a weighted connected undirected graph with distinct positive edge weights. If
every edge weight is increased by the same value, then which of the following statements
is/are TRUE?
P: Minimum spanning tree of G does not change
Q: Shortest path between any pair of vertices does not change
(a)P only       (b)Q only
(c)Neither P nor Q      (d)Both P and Q', '{"A": "[Marks:1][GATE:  2016][SET-1]"}', '"A"', 'Detailed solution pending.'),
  ('2a2df8c0-948f-4b97-b209-c4c1080c7ae0', (SELECT id FROM subjects WHERE name ILIKE '%Theory of Computation%' LIMIT 1), 2016, 2, 'MCQ', 'An operator delete(i) for a binary heap data structure is to be designed to delete the Item
in the i-th node. Assume that the heap is implemented in an array and i refers tothe i -th
index of the array. If the heap tree has depth d (number of edges on the path from the root
to the farthest leaf), then what is the time complexity to re-ﬁx the heap efﬁciently after the
removal of the element?', '{"A": "O(1)", "B": "O(d) but not O(1)", "C": "O(2d) but not O", "D": "O(d 2d) but not O(2d)"}', '"A"', 'Detailed solution pending.'),
  ('e1c8359e-0e68-4312-87ba-7b546ed45c0d', (SELECT id FROM subjects WHERE name ILIKE '%Theory of Computation%' LIMIT 1), 2020, 1, 'MCQ', 'Consider the recurrence relation a1 = 8, an = 6n2 + 2n + 1. Let a99 = k x 104. The  value of
K is ____       Marks:2][GATE:  2016][SET-1]', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('1b8b8608-019a-45ee-b936-d82f811445a6', (SELECT id FROM subjects WHERE name ILIKE '%Theory of Computation%' LIMIT 1), 2016, 2, 'MCQ', 'Consider the weighted undirected graph with 4 vertices, where the weight of edge {i,j}
is given by the entry Wij  in the matrix W.
The largest possible integer value of x, for which at least one shortest path between some
pair of vertices will contain the edge with weight x is _________.', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('155450a0-9c1c-4870-a375-2d1661660d20', (SELECT id FROM subjects WHERE name ILIKE '%Theory of Computation%' LIMIT 1), 2016, 2, 'MCQ', 'Let Q denote a queue containing sixteen numbers and S be an empty stack. Head(Q)
returns the element at the head of the queue Q without removing it from Q. Similarly
Top(S) returns the element at the top of S without removing it from S. Consider the
algorithm given below.
while Q is not Empty do
if S is Empty OR Top(S) ≤ Head (Q) then
x:= Dequeue (Q);
Push (S, x);
else
x:= Pop(S);
Enqueue (Q, x);
end
end
The maximum possible number of iterations of the while loop in the algorithm is _______.', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('5d579f2f-8690-4a15-b2c6-4a0a398fefe1', (SELECT id FROM subjects WHERE name ILIKE '%Algorithms%' LIMIT 1), 2016, 1, 'MCQ', 'Breadth First Search (BFS) is started on a binary tree beginning from the root vertex.
There is a vertex t at a distance four from the root. If t is the n -th vertex in this BFS
traversal, then the maximum possible value of n is _________.', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('78c5022b-ab67-472e-9c18-979144a1ea95', (SELECT id FROM subjects WHERE name ILIKE '%Algorithms%' LIMIT 1), 2016, 1, 'MCQ', 'Assume that the algorithms considered here sort the input sequences in ascending order.
If the input is already in ascending order, which of the following are TRUE ?
I.   Quicksort runs in Θ(n2) time
II.  Bubblesort runs in Θ(n2) time
III. Mergesort runs in  Θ(n) time
IV.  Insertion sort runs in  Θ(n) time', '{"A": "I and II only", "B": "I and III only", "C": "II and IV only", "D": "I and IV only"}', '"A"', 'Detailed solution pending.'),
  ('0bf12f3f-1f8a-4cd9-94ac-fb55ceb78099', (SELECT id FROM subjects WHERE name ILIKE '%Algorithms%' LIMIT 1), 2016, 1, 'MCQ', 'N items are stored in a sorted doubly linked list. For a delete operation, a pointer is
provided to the record to be deleted. For a decrease -key operation, a pointer is provided
to the record on which the operation is to be performed.An algorithm performs the
following operations on the list in this order: Θ(N) delete,O(logN) insert, O(logN) ﬁnd,
and Θ(N) decrease-key. What is the time complexity of all these operations put together?
(a)O(log2 N)
(b)O(N)
(c)O(N2)
(d)Θ(N2 logN)', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('6670ffef-2dfe-4d0f-8f7e-a4c326a71e5c', (SELECT id FROM subjects WHERE name ILIKE '%Algorithms%' LIMIT 1), 2016, 1, 'MCQ', 'The Floyd-Warshall algorithm for all-pair shortest paths computation is based on:', '{"A": "Greedy paradigm.", "B": "Divide-and-Conquer paradigm.", "C": "Dynamic Programming paradigm.", "D": "neither Greedy nor Divide-and-Conquer nor Dynamic Programming paradigm"}', '"A"', 'Detailed solution pending.'),
  ('695e479c-1ca7-4e43-9f80-4cec1c14361b', (SELECT id FROM subjects WHERE name ILIKE '%Algorithms%' LIMIT 1), 2016, 2, 'MCQ', 'A complete binary min-heap is made by including each integer in [1, 1023] exactly once.
The depth of a node in the heap is the length of the path from the root of the heap to that
node. Thus, the root is at depth 0. The maximum depth at which integer 9 can appear is
_________.', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('616ba464-71a7-400c-8193-20d9b31f0657', (SELECT id FROM subjects WHERE name ILIKE '%Algorithms%' LIMIT 1), 2016, 2, 'MCQ', 'Consider the following New-order strategy for traversing a binary tree:
 Visit the root;
 Visit the right subtree using New-order;
 Visit the left subtree using New-order;
The New -order traversal of the expression tree corresponding to the reverse polish
expression 3 4 * 5 - 2 ˆ 6 7 * 1 + - is given by:', '{"A": "+ - 1 6 7 * 2 \u02c6 5 - 3 4 *", "B": "- + 1 * 6 7 \u02c6 2 - 5 * 3 4", "C": "- + 1 * 7 6 \u02c6 2 - 5 * 4 3", "D": "1 7 6 * + 2 5 4 3 * - \u02c6 -"}', '"A"', 'Detailed solution pending.'),
  ('038aee92-8805-4d06-b800-018b34eeb9a0', (SELECT id FROM subjects WHERE name ILIKE '%Algorithms%' LIMIT 1), 2016, 2, 'MCQ', 'The number of ways in which the numbers 1, 2, 3, 4, 5, 6, 7 can be inserted in an empty
binary search tree, such that the resulting tree has height 6, is _________.
Note: The height of a tree with a single node is 0.', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('94c4228e-7648-40b6-89a6-90fcc2389bb7', (SELECT id FROM subjects WHERE name ILIKE '%Algorithms%' LIMIT 1), 2016, 2, 'MCQ', 'In an adjacency list representation of an undirected simple graph G = (V,E), each edge
(u,v) has two adjacency list entries: [v] in the adjacency list of u, and [u] in the adjacency
list of v. These are called twins of each other. A twin pointer is a pointer from an adjacency
list entry to its twin. If |E| = m and |V| = n, a nd the memory size is not a constraint,
what is the time complexity of the most efﬁcient algorithm to set the twin pointer in each
entry in each adjacency list?
(a)Θ(n2)
(b)Θ(n+m)
(c)Θ(m2)
(d)Θ(n4)', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('ee4e4542-0f70-4886-a19d-c4a1f0ed64c5', (SELECT id FROM subjects WHERE name ILIKE '%Algorithms%' LIMIT 1), 2016, 2, 'MCQ', 'The following function computes XY for positive integers X and Y.
int exp (int X, int Y) {
int res =1, a = X, b = Y;
while (b != 0) {
if (b % 2 == 0) {a = a * a; b = b/2; }
else         {res = res * a; b = b - 1; }
}
return res;
}
Which one of the following conditions is TRUE before every iteration of the loop?
a) XY=ab
b) (res ∗ a)Y=(res ∗ X)b
c) XY=res ∗ ab
d) XY=(res ∗ a)b', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('4a34d20a-3ac8-4eff-9139-2e756bd45af3', (SELECT id FROM subjects WHERE name ILIKE '%Algorithms%' LIMIT 1), 2016, 2, 'MCQ', 'Let A1, A2, A3, and A4 be four matrices of dimensions 10 x 5, 5 x 20, 20 x 10, and 10
x 5, respectively. The minimum number of scalar multiplications required to find the
product A1A2A3A4 using the basic matrix multiplication method is._________', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('0b434b03-5b71-4340-a178-0294621ad6b3', (SELECT id FROM subjects WHERE name ILIKE '%Algorithms%' LIMIT 1), 2020, 1, 'MCQ', 'The given diagram shows the flowchart for a recursive function A(n). Assume that
allstatements, except for the recursive calls, have O(1) time complexity. If the worst
casetime complexity of this function is O(n α), then the least possible value (accurate up
totwo decimal positions) of α is ________.
Flow chart for Recursive Function A(n).', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('326c070f-c1bc-4cff-87b7-041a198fce73', (SELECT id FROM subjects WHERE name ILIKE '%Algorithms%' LIMIT 1), 2017, 1, 'MCQ', 'Consider the C code fragment given below.
typedef struct node
{
int data;
node* next ;
} node;
void join(node* m, node* n)
{
node* p = n;
while (p->next != NULL)
{
p = p->next;
}
p–>next = m;
}
Assuming that m and n point to valid NULL- terminated linked lists, invocation of join
will', '{"A": "append list m to the end of list n for all inputs", "B": "either cause a null pointer dereference or append list m to the end of list n", "C": "cause a null pointer dereference for all inputs.", "D": "append list n to the end of list m for all inputs."}', '"A"', 'Detailed solution pending.'),
  ('b7e95529-ef8c-41fa-ad8f-b6553ada2a87', (SELECT id FROM subjects WHERE name ILIKE '%Algorithms%' LIMIT 1), 2017, 1, 'MCQ', 'Let T be a tree with 10 vertices. The sum of the degrees of all the vertices in T is
_________.', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('456e65bb-d5a6-4a69-92d2-e9e559d43587', (SELECT id FROM subjects WHERE name ILIKE '%Algorithms%' LIMIT 1), 2017, 2, 'MCQ', 'Consider the following functions from positives integers to real numbers
10, √n, n, log2n, 100/n.
The CORRECT arrangement of the above functions in increasing order of asymptotic
complexity is:', '{"A": "log2n, 100/n , 10, \u221an, n", "B": "100/n, 10, log2n, \u221an, n", "C": "10, 100/n ,\u221an, log2n, n", "D": "100/n, log2n, 10 ,\u221an, n"}', '"A"', 'Detailed solution pending.'),
  ('c440fcb6-cb2d-4f9a-9082-d5d68b14de18', (SELECT id FROM subjects WHERE name ILIKE '%Algorithms%' LIMIT 1), 2017, 1, 'MCQ', 'Consider the following table
Match the algorithm to design paradigms they are based on:(a) P-(ii), Q-(iii), R-(i)
P-(i), Q-(ii), R-(iii)', '{"B": "P-(iii), Q-(i), R-(ii)(c) P-(ii), Q-(i), R-(iii)    (d)"}', '"A"', 'Detailed solution pending.'),
  ('a2ce2770-f2c5-4b4f-b922-9289161d6785', (SELECT id FROM subjects WHERE name ILIKE '%Algorithms%' LIMIT 1), 2017, 2, 'MCQ', 'Let T be a binary search tree with 15 nodes. The minimum and maximum possible heights
of T are: Note: The height of a tree with a single node is 0.', '{"A": "4 and 15 respectively", "B": "3 and 14 respectively", "C": "4 and 14 respectively", "D": "3 and 15 respectively"}', '"A"', 'Detailed solution pending.'),
  ('ba1aa541-cddb-4b97-a590-5f13cf0cf94c', (SELECT id FROM subjects WHERE name ILIKE '%Algorithms%' LIMIT 1), 2017, 1, 'MCQ', 'A circular queue has been implemented using a singly linked list where each node consists
of a value and a single pointer pointing to the next node. We maintain exactly two
external pointers FRONT and REAR pointing to the front node and the rear node of the
queue, respectively. Which of the following statements is/are CORRECT for such a
circular queue, so that insertion and deletion operations can be performed in O(1) time?
I. Next pointer of front node points to the rear node.
II. Next pointer of rear node points to the front node.
(a)I only   (b)II only  (c)Both I and II   (d)Neither I nor II', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('4a59062f-7c81-4545-9a75-cede8dfd390b', (SELECT id FROM subjects WHERE name ILIKE '%Algorithms%' LIMIT 1), 2017, 1, 'MCQ', 'The Breadth First Search (BFS) algorithm has been implemented using the queue data
structure. Which one of the following is a possible order of visiting the nodes in the
(a)MNOPQR   (b)NQMPOR  (c)QMNROP   (d)POQNMR', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('84b7c47b-ddd8-4897-bf82-7112dd466190', (SELECT id FROM subjects WHERE name ILIKE '%Algorithms%' LIMIT 1), 2017, 2, 'MCQ', 'The pre-order traversal of a binary search tree is given by 12, 8, 6, 2, 7, 9, 10, 16, 15, 19,
17, 20. Then the post-order traversal of this tree is:
(a)2, 6, 7, 8, 9, 10, 12, 15, 16, 17, 19, 20
(b)2, 7, 6, 10, 9, 8, 15, 17, 20, 19, 16, 12
(c)7, 2, 6, 8, 9, 10, 20, 17, 19, 15, 16, 12
(d)7, 6, 2, 10, 9, 8, 15, 16, 17, 20, 19, 12', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('4390da52-5459-484a-aae8-764d9d565c3b', (SELECT id FROM subjects WHERE name ILIKE '%Algorithms%' LIMIT 1), 2017, 1, 'MCQ', 'Match the algorithms with their time complexities:
(d)P→(iv)Q→(iii)r→(ii)S→(i)', '{"A": "P\u2192(iii)Q\u2192(iv)r\u2192(i)S\u2192(ii)", "B": "P\u2192(iv)Q\u2192(iii)r\u2192(i)S\u2192(ii)", "C": "P\u2192(iii)Q\u2192(iv)r\u2192(ii)S\u2192(i)"}', '"A"', 'Detailed solution pending.'),
  ('5da1912f-7c2a-4c7b-b516-12a2f35de4bd', (SELECT id FROM subjects WHERE name ILIKE '%Algorithms%' LIMIT 1), 2017, 2, 'MCQ', 'Consider the following C function.
int fun(int n)
{
int i, j;
for (i = 1; i <= n ; i++)
{
for (j = 1;  j < n; j += i)
{
printf("%d %d", i, j);
}
}
}
Time complexity of fun in terms of θ notation is:      (a)
θ(n √𝑛)   (b) θ(n2)  (c) θ(n log n)(d) θ(n 2 log n)', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('f6a833b6-0fd6-4838-8d59-41092f8ad95b', (SELECT id FROM subjects WHERE name ILIKE '%Algorithms%' LIMIT 1), 2017, 2, 'MCQ', 'Consider the recurrence function
Then T(n) in terms of Θ notation is', '{"A": "\u0398(loglogn)", "B": "\u0398(logn)", "C": "\u0398(\u221a\ud835\udc41)", "D": "\u0398(n)"}', '"A"', 'Detailed solution pending.'),
  ('f80d0e2b-0761-4d4e-930b-311563d7ead6', (SELECT id FROM subjects WHERE name ILIKE '%Algorithms%' LIMIT 1), 2017, 2, 'MCQ', 'A message is made up entirely of characters from the set X={P,Q,R,S,T}. The table  of
probabilities for each of the characters is shown below:
If a message of 100 characters over X is encoded using Huffman coding, then the expected
length of the encoded message in bits is ______.', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('ebd8c5a6-c5cd-4720-a41a-3a22fdebff49', (SELECT id FROM subjects WHERE name ILIKE '%Algorithms%' LIMIT 1), 2018, 1, 'MCQ', 'The postorder traversal of a binary tree is 8, 9, 6, 7, 4, 5, 2, 3, 1. The inorder traversal of
the same tree is 8, 6, 9, 4, 7, 2, 5, 1, 3. The height of a tree is the length of the longest path
from the root to any leaf. The height of the binary tree above is _______.', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('9840b1e5-5834-4756-99bd-6cf8b28de424', (SELECT id FROM subjects WHERE name ILIKE '%Algorithms%' LIMIT 1), 2018, 1, 'MCQ', 'A queue is implemented using a non -circular singly linked list. The queue has a head
queue. Let ''enqueue'' be implemented by inserting a new node at the head, and ''dequeue''
be implemented by deletion of a node from the tail.
Which one of the following is the time complexity of the most time -efficient
implementation of ''enqueue'' and ''dequeue, respectively, for this data structure?
(a)θ(1), θ(1)
(b)θ(1), θ(n)
(c)θ(n), θ(1)
(d)θ(n), θ(n)', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('be45fe52-4ea8-4b4b-b8d0-0830cf7b9491', (SELECT id FROM subjects WHERE name ILIKE '%Algorithms%' LIMIT 1), 2018, 2, 'MCQ', 'Let G be a simple undirected graph. Let T D be a depth first search tree of G. Let T B be a
breadth first search tree of G. Consider the following statements.
(I) No edge of G is a cross edge with respect to T D.(A cross edge in G is between two
nodes neither of which is an ancestor of the other in TD.)
(II) For every edge (u,v) of G, if u is at depth i and v is at depth j in TB, then ∣i−j∣ = 1.
Which of the statements above must necessarily be true?', '{"A": "I only", "B": "II only", "C": "Both I and II", "D": "Neither I nor II"}', '"A"', 'Detailed solution pending.'),
  ('29507807-2bd2-4ade-9d9a-05b461d4ff43', (SELECT id FROM subjects WHERE name ILIKE '%Algorithms%' LIMIT 1), 2018, 2, 'MCQ', 'The number of possible min-heaps containing each value from {1, 2, 3, 4, 5, 6, 7} exactly
once is ___________.', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('eb506359-9bfd-45a8-8fa9-c2888c270c01', (SELECT id FROM subjects WHERE name ILIKE '%Algorithms%' LIMIT 1), 2020, 1, 'MCQ', 'Assume that multiplying a matrix G1 of dimension 𝑝 × 𝑞 with another matrix G2 of
dimension𝑞 × 𝑟 requires 𝑝𝑞𝑟 scalar multiplications. Computing the product of n matrices
G1G2G3…Gn can be done by parenthesizing in different ways. Define G i Gi+1 as an
explicitlycomputed pair for a given paranthesization if they are directly multiplied. For
example, in the matrix multiplication chain G1G2G3G4G5G6 using parenthesization
(G1(G2G3))(G4(G5G6)), G2G3 and G5G6 are the only explicitly computed pairs.
Consider a matrix multiplication chain F 1F2F3F4F5, where matrices F 1, F 2, F 3, F 4 and
F5areof dimensions 2×25, 25×3, 3×16, 16×1 and 1×1000, respectively. In the
parenthesization of F1F2F3F4F5 that minimizes the total number of scalar multiplications,
the explicitly
computed pairs is/are', '{"A": "F1F2 and F3F4 only", "B": "F2F3 only", "C": "F3F4 only", "D": "F1F2 and F4F5 only      [Marks: 2][GATE:  2018]"}', '"A"', 'Detailed solution pending.'),
  ('e11280ae-9d88-4a02-8e02-6087d19bfb59', (SELECT id FROM subjects WHERE name ILIKE '%Algorithms%' LIMIT 1), 2020, 1, 'MCQ', 'Consider the following program written in pseudo-code. Assume that x and y are integers.
Count(x,y) {
if (y != 1){
if (x != 1) {
print("*");
Count(x/2, y);
}
else {
y = y-1;
Count(1024, y);
}
}
}
The number of times that the print statement is executed by the call Count(1024,1024) is
_____.', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('023ff563-f25e-496a-9b07-71afe6ed9b1a', (SELECT id FROM subjects WHERE name ILIKE '%Algorithms%' LIMIT 1), 2020, 1, 'MCQ', 'Consider the weights and values of items listed below. Note that there is only one unit
Ofeach item.
The task is to pick a subset of these items such that their total weight is no more than 11
Kgsand their total value is maximized. Moreover, no item may  be split. The total value
of itemspicked by an optimal algorithm is denoted by 𝑉opt. A greedy algorithm sorts the
items by their value-to-weight ratios in descending order and packs them greedily, starting
from the first item in the ordered list. The tot al value of items picked by the greedy
algorithm is denoted by 𝑉greedy.
The value of 𝑉opt−𝑉greedy is ____________.
[Marks: 2][GATE:  2018', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('d1a45116-2c1c-4d84-b931-0068685b1eda', (SELECT id FROM subjects WHERE name ILIKE '%Algorithms%' LIMIT 1), 2019, 2, 'MCQ', 'Let T be a full binary tree with 8 leaves. (A full binary tree has every level full). Suppose
two leaves a and b of T are chosen uniformly and independently at random.
The expected value of the distance between a and b in T (i.e., the number of edges in
the unique path between a and b) is (rounded off to 2 decimal places) _____.', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('dcfca13e-f85b-48c4-aa73-814f89f10727', (SELECT id FROM subjects WHERE name ILIKE '%Algorithms%' LIMIT 1), 2019, 1, 'MCQ', 'An array of 25 distinct elements is to be sorted using quicksort. Assume that the pivot
element is chosen uniformly at random. The probability that the pivot element gets placed
in the worst possible location in the first round of partitioning (rounded off to 2 decima l', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('6b44eba7-4d55-4d22-a799-ef0cd436adc3', (SELECT id FROM subjects WHERE name ILIKE '%Algorithms%' LIMIT 1), 2019, 1, 'MCQ', 'Consider a sequence of 14 elements: A=[ −5,−10,6,3,−1,−2,13,4,−9,−1,4,12,−3,0]. The
sequence sum S(i,j)= ∑ 𝐴[𝐾]𝐽
𝐾=1 . Determine the maximum of S(i,j), where 0 ≤i≤j<14.', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('06883acc-a3c5-4ee2-96ad-190256beef68', (SELECT id FROM subjects WHERE name ILIKE '%Algorithms%' LIMIT 1), 2019, 2, 'MCQ', 'There are n unsorted arrays: A 1,A2,…,An. Assume that n is odd.Each of A 1,A2,…,An
contains n distinct elements. There are no common elements between any two arrays.
The worst-case time complexity of computing the median of the medians of A1,A2,…,An
is', '{"A": "O(n)   (b) O(nlogn)   (c) O(n2)  (d) \u03a9(n2logn)"}', '"A"', 'Detailed solution pending.'),
  ('b1f7740e-12ea-4f71-9581-5fb526102c02', (SELECT id FROM subjects WHERE name ILIKE '%Algorithms%' LIMIT 1), 2019, 2, 'MCQ', 'Consider the following statements:
I. The smallest element in a max-heap is always at a leaf nod
II. The second largest element in a max-heap is always a child of a root node
III. A max-heap can be constructed from a binary search tree in Θ(n) time
IV. A binary search tree can be constructed from a max-heap in Θ(n) time
Which of the above statements are TRUE?', '{"A": "I, II and III", "B": "I, II and IV", "C": "I, III and IV", "D": "II, III and IV"}', '"A"', 'Detailed solution pending.'),
  ('841f8f05-01a8-4564-bc43-284519a7ed6a', (SELECT id FROM subjects WHERE name ILIKE '%Algorithms%' LIMIT 1), 2020, 1, 'MCQ', 'For parameters a and b, both of which are ω(1), T(n)=T(n1/a)+1, and T(b)=1. Then
T(n) is
(c)Θ(logblogan)', '{"A": "[Marks:1 ][GATE:  2020]", "B": "\u0398(logabn)", "D": "\u0398(log2log2n)"}', '"A"', 'Detailed solution pending.'),
  ('dd1d639e-bcf9-4e19-ac5d-52118a0d8356', (SELECT id FROM subjects WHERE name ILIKE '%Algorithms%' LIMIT 1), 2020, 1, 'MCQ', 'The preorder traversal of a binary search tree is 15, 10, 12, 11, 20, 18, 16, 19.Which one
of the following is the postorder traversal of the tree?', '{"A": "20, 19, 18, 16, 15, 12, 11, 10", "B": "11, 12, 10, 16, 19, 18, 20, 15", "C": "10, 11, 12, 15, 16, 18, 19, 20", "D": "19, 16, 18, 20, 11, 12, 10, 15"}', '"A"', 'Detailed solution pending.'),
  ('b436c2f0-99f5-4eaa-8edc-51de5966fb06', (SELECT id FROM subjects WHERE name ILIKE '%Algorithms%' LIMIT 1), 2020, 1, 'MCQ', 'Consider a double hashing scheme in which the primary hash function is h 1(k)=k mod
23, and the secondary hash function is h 2(k)=1+(k mod 19). Assume that the table size
is 23. Then the address returned by probe 1 in the probe sequence (assume that the probe
sequence begins at probe 0) for key value k=90 is _______.', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('a879c9a3-cd81-4bcb-bb04-21e423feb067', (SELECT id FROM subjects WHERE name ILIKE '%Algorithms%' LIMIT 1), 2020, 1, 'MCQ', 'What is the worst case time complexity of inserting n elements into an empty linked list,
if the linked list needs to be maintained in sorted order ?', '{"A": "\u0398(n)", "B": "\u0398(n log n)", "C": "\u0398(n2)", "D": "\u0398(1)"}', '"A"', 'Detailed solution pending.'),
  ('d9c23fdb-12ca-4e40-aada-d1db6084b248', (SELECT id FROM subjects WHERE name ILIKE '%Algorithms%' LIMIT 1), 2020, 1, 'MCQ', 'Consider the following C program.
#include
int main () {
int a [4] [5] = {{1, 2, 3, 4, 5},
{6, 7, 8, 9, 10},
{11, 12, 13, 14, 15},
{16, 17, 18, 19, 20}};
printf (“%d\n”, *(* (a+**a+2) +3));
return (0);
}
The output of the program is _______.', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('b15e1b7a-f1ab-4e11-a105-3cc076eeaefc', (SELECT id FROM subjects WHERE name ILIKE '%Algorithms%' LIMIT 1), 2020, 1, 'MCQ', 'What is the worst case time complexity of inserting n2 elements into an AVL-tree with
n elements initially ?', '{"A": "\u0398(n4)", "B": "\u0398(n2)", "C": "\u0398(n2 log n)", "D": "\u0398(n3)       [Marks:1 ][GATE:  2020]"}', '"A"', 'Detailed solution pending.'),
  ('9cc179c9-7cd6-405a-b965-1033ac0b49f9', (SELECT id FROM subjects WHERE name ILIKE '%Algorithms%' LIMIT 1), 2020, 2, 'MCQ', 'In a balanced binary search tree with n elements, what is the worst case time complexity
of reporting all elements in range [a,b]? Assume that the number of reported elements is
k.', '{"A": "\u0398(logn)   (b) \u0398(logn+k)  (c) \u0398(klogn)  (d)\u0398(nlogk)"}', '"A"', 'Detailed solution pending.'),
  ('770575b5-12c8-4849-8ccd-fa0efc15665b', (SELECT id FROM subjects WHERE name ILIKE '%Algorithms%' LIMIT 1), 2020, 2, 'MCQ', 'Consider the array representation of a binary min -heap containing 1023 elements. The
minimum number of comparisons required to find the maximum in the heap is _______.', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('a542bfcf-2165-4c42-95b3-4b379c0397e1', (SELECT id FROM subjects WHERE name ILIKE '%Algorithms%' LIMIT 1), 2020, 2, 'MCQ', 'Let  G=(V,E) be a weighted undirected graph and let T be a Minimum Spanning Tree
(MST) of G maintained using adjacency lists. Suppose a new weighed edge (u,v)∈V×V is
added to G. The worst case time complexity of determining if T is still an MST of the
resultant graph is', '{"A": "\u0398(\u2223E\u2223+\u2223V\u2223)  (b) \u0398(\u2223E\u2223\u2223V\u2223)   (c)\u0398(E\u2223log\u2223V\u2223) (d)\u0398(\u2223V\u2223)"}', '"A"', 'Detailed solution pending.'),
  ('ab00eb1a-f067-4f79-807e-deed176c0687', (SELECT id FROM subjects WHERE name ILIKE '%Algorithms%' LIMIT 1), 2017, 1, 'MCQ', 'Let T be a binary search tree with 15 nodes. The minimum and maximum possible heights
of T are:
Note: The height of a tree with a single node is 0.
(a)4 and 15 respectively
(b)3 and 14 respectively
(c)4 and 14 respectively
(d)3 and 15 respectively
ADA PYQs  Answer key:', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('723f5382-aac0-466d-b144-71dca7b5f917', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2020, 1, 'MCQ', 'Which one of the following is TRUE for any simple connected undirected graph
with more than 2 vertices?
][GATE:  2009]', '{"A": "No two vertices have the same degree.", "B": "At least two vertices have the same degree.", "C": "At least three vertices have the same degree.", "D": "All vertices have the same degree.                                            [Marks:"}', '"A"', 'Detailed solution pending.'),
  ('4281cad7-bde7-4ec5-862e-c47fc1101fdb', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2009, 1, 'MCQ', 'What is the chromatic number of an n-vertex simple connected graph which does
not contain any odd length cycle? Assume n ≥ 2.
(a)2    (b)3    (c)n-1    (d)n', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('a6617b7e-d5c3-467b-9ff9-5da27565f375', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2009, 1, 'MCQ', 'Which one of the following in NOT necessarily a property of a Group?
(c)Existence of inverse for every element   (d) Existence of identity', '{"A": "Commutativity      (b) Associativity"}', '"A"', 'Detailed solution pending.'),
  ('12bdb867-43e8-4f50-8300-99bcf04a7be6', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2009, 1, 'MCQ', 'Consider the binary relation R = {(x, y), (x, z), (z, x), (z, y)} on the set {x, y, z}.
Which one of the following is TRUE?', '{"A": "R is symmetric but NOT anti-symmetric", "B": "R is NOT symmetric but anti-symmetric", "C": "R is both symmetric and anti-symmetric", "D": "R is neither symmetric nor anti-symmetric"}', '"A"', 'Detailed solution pending.'),
  ('5362f5b3-f527-47f0-9735-cbfa518a2b44', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2009, 1, 'MCQ', 'An unbalanced dice (with 6 faces, numbered from 1 to 6) is thrown. The
is even. The probability of getting any even numbered face is the same. If the
of the following options is closest to the probability that the face value exceeds
3?', '{"A": "0.453    (b) 0.468    (c) 0.485    (d) 0.492"}', '"A"', 'Detailed solution pending.'),
  ('d8a97a61-e44d-4ba1-8631-7da015aed297', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2020, 1, 'MCQ', 'For the composition table of a cyclic group shown below correct?
[Marks: ][GATE:
2009]', '{"A": "a, b are generators    (b) b, c are generators", "C": "c, d are generators    (d) d, a are generators"}', '"A"', 'Detailed solution pending.'),
  ('97fe0fcc-9244-4ea8-bf6d-415c182b4b22', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2020, 1, 'MCQ', 'Which one of the following is the most appropriate logical formula to represent
the statement?
“Gold and silver ornaments are precious”.
The following notations are used:
G(x): x is a gold ornament,
S(x): x is a silver ornament,
P(x): x is precious', '{"A": "\u2200x(P(x) \u2192 (G(x) \u2227 S(x)))", "B": "\u2200x((G(x) \u2227 S(x)) \u2192 P(x))", "C": "\u2203x((G(x) \u2227 S(x)) \u2192 P(x)", "D": "\u2200x((G(x) \u2228 S(x)) \u2192 P(x))     [Marks: ][GATE:  2009]"}', '"A"', 'Detailed solution pending.'),
  ('bda444d6-e0a1-470b-9947-5d761433f433', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2009, 1, 'MCQ', 'The binary operation ◻ is defined as follows
P Q PQ
T T T
T F T
F T F
F F T', '{"A": "\u00acQ\u25a1\u00acP    (b) P\u25a1\u00acQ   (c) \u00acP\u25a1Q  (d) \u00acP\u25a1\u00acQ"}', '"A"', 'Detailed solution pending.'),
  ('8e01c49c-c87b-4e90-8552-17511dc2e486', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2009, 1, 'MCQ', '∫ (1 − tanx)/(1 + tanx)dx
𝜋/4
0  is equivalent to
(a)0    (b)1    (c)ln2   (d)0.5 ln 2', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('dc64a577-b716-424f-aa65-ae791080a156', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2010, 1, 'MCQ', 'Consider the following well-formed formulae:
(I) ¬∀x(P(x))   (II)¬∃x(P(x))  (III)¬∃x(¬P(x)) (IV) ∃x(¬P(x))
Which of the above are equivalent?', '{"A": "I and III   (b)I and IV   (b)II and III  (d)II and IV"}', '"A"', 'Detailed solution pending.'),
  ('c2720757-0c0d-43a5-a361-78265213a83e', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2020, 1, 'MCQ', 'Let G = (V, E) be a graph. Define ξ (G) =  ∑ 𝑖d ∗ dd  , where id is the number of
vertices of degree d in G. If S and T are two different trees with ξ(S) = ξ(T),then', '{"A": "|S| = 2|T|", "B": "|S| = |T|-1", "C": "|S| = |T|", "D": "|S| = |T|+1       [Marks: 1][GATE:2010]"}', '"A"', 'Detailed solution pending.'),
  ('48e20253-511a-46d6-aee8-85ec1a77db17', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2010, 1, 'MCQ', 'What is the possible number of reflexive relations on a set of 5 elements?
(a)2 10   (b)215     (c)220    (d)225', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('2d12ab8e-eaac-474c-b6ee-4e19dc8af0b7', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2010, 1, 'MCQ', 'Consider the set S = {1, ω, ω2}, where ω and ω2 are cube roots of unity. If
*denotes the
multiplication operation, the structure (S, *) forms', '{"A": "A group       (b) A ring", "C": "An integral domain     (d) A field"}', '"A"', 'Detailed solution pending.'),
  ('83482471-0dd0-4e69-aec4-a6e03d5bf6e7', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2010, 2, 'MCQ', 'The degree sequence of a simple graph is the sequence of the degrees of the
nodes in the graph in decreasing order. Which of the following sequences can not
be the degree sequence of any graph?
I. 7, 6, 5, 4, 4, 3, 2, 1     II. 6, 6, 6, 6, 3, 3, 2, 2
III. 7, 6, 6, 4, 4, 3, 2, 2     IV. 8, 7, 7, 6, 4, 2, 1, 1', '{"A": "I and II      (b) III and IV", "C": "IV only                 (d) II and IV"}', '"A"', 'Detailed solution pending.'),
  ('8cdf0381-cf3b-4e07-ad03-badedee357de', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2010, 2, 'MCQ', 'Suppose the predicate F(x, y, t) is used to represent the statement that person x
can fool person y at time t. Which one of the statements below expresses best the
meaning of the formula, ∀𝑥∃𝑦∃𝑡(𝐹(𝑥, 𝑦, 𝑡))?', '{"A": "Everyone can fool some person at some time", "B": "No one can fool everyone all the time", "C": "Everyone cannot fool some person all the time", "D": "No one can fool some person at some time"}', '"A"', 'Detailed solution pending.'),
  ('53d9ef8a-40f9-4b1f-892a-05c572df233c', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2010, 2, 'MCQ', 'Consider a complete undirected graph with vertex set {0, 1, 2, 3, 4}. Entry Wij in
the matrix W below is the weight of the edge {i, j}.
What is the minimum possible weight of a spanning tree T in this graph such
that vertex 0 is a leaf node in the tree T?', '{"A": "7   (b) 8  (c) 9   (d) 10"}', '"A"', 'Detailed solution pending.'),
  ('bedafff8-69a3-4401-8059-4cf0333b9142', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2010, 1, 'MCQ', 'What is the value of lim
𝑛→∞
(1 −
1
𝑛)
2𝑛
?
(a)0        (b)e-2', '{"C": "e-1/2       (d)1"}', '"A"', 'Detailed solution pending.'),
  ('841ac223-8590-498b-9d2e-55d2fd8561d7', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2010, 1, 'MCQ', 'Consider a company that assembles computers. The probability of a faulty
assembly of any computer is p. The company therefore subjects each computer
to a testing process. This testing process gives the correct result for any computer
with a probability of q. What is the probability of a computer being declared
faulty?
(a)pq + (1 - p)(1 - q)         (b)(1 - q)p
(c)(1 - p)q           (d)pq', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('56e0031b-6f31-4989-b16c-441e293657b0', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2010, 1, 'MCQ', 'What is the probability that divisor of 1099 is a multiple of 1096?
(a)1/625       (b)4/625
(c)12/625       (d) 16/625', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('d5d0db19-a396-4e81-891c-2cd1bb24d215', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2010, 1, 'MCQ', 'Consider the following matrix 𝐴 = [2 3
𝑥 𝑦] If the eigenvalues of A are 4 and 8,then
(a)x=4, y=10
(b)x=5, y=8
(c)x=-3, y=9
(d)x=-4, y=10', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('413628f2-56bd-420b-be4b-3ebc1bd3905f', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2020, 1, 'MCQ', 'K4 and Q3 are graphs with the following structures', '{"A": "K4 is planar while Q3 is not", "B": "Both K4 and Q3 are planar", "C": "Q3 is planar while K4 is not", "D": "Neither K4 nor Q3 are planar                                  [Marks: 1][GATE: 2011]"}', '"A"', 'Detailed solution pending.'),
  ('ff89708f-c36f-4743-8c25-46be86092b89', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2011, 1, 'MCQ', 'Which one of the following options is CORRECT given three positive integers x, y
and z, and a predicate?
P(x) = ¬(x = 1) ∧ ∀y (∃z (x = y * z) ⇒ (y = x) ∨ (y = 1))', '{"A": "P(x) being true means that x is a prime number", "B": "P(x) being true means that x is a number other than 1", "C": "P(x) is always true irrespective of the value of x", "D": "P(x) being true means that x has exactly two factors other than 1 and x"}', '"A"', 'Detailed solution pending.'),
  ('69158ba2-4acd-4063-905f-04ac99244db6', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2020, 1, 'MCQ', 'An undirected graph G (V, E) contains n (n > 2) nodes named v1, v2 ,….vn.
Two nodes vi, vj are connected if and only if 0 < |i – j| <= 2. Each edge (v i, vj) is
assigned a weight i + j. A sample graph with n = 4 is shown below.
What will be the cost of the minimum spanning tree (MST) of such a graph with
n nodes?
(a)11 n2 – 5', '{"B": "n2 \u2013 n + 1", "C": "6n \u2013 11", "D": "2n + 1             [Marks: 2][GATE:2011]"}', '"A"', 'Detailed solution pending.'),
  ('347c3eac-fb62-453d-8c5b-d5ec00acd78a', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2020, 1, 'MCQ', 'An undirected graph G (V, E) contains n (n > 2) nodes named v 1 , v2 ,….vn. Two
nodes v i , v j are connected if and only if 0 < |i – j| <= 2. Each edge (v i, v j) is
assigned a weight i + j. A sample graph with n = 4 is shown below.
The length of the path from v5 to v6 in the MST of previous question with n = 10
is', '{"A": "11", "B": "25", "C": "31", "D": "41         [Marks: 2][GATE: 2011]"}', '"A"', 'Detailed solution pending.'),
  ('01a6c33f-d8b2-49b9-b579-da7058146597', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2011, 1, 'MCQ', 'If the difference between the expectation of the square of a random variable
(E[X2]) and the square of the expectation of the random variable (E[X2]) is denoted
by R, then', '{"A": "R = 0", "B": "R < 0", "C": "R \u2265 0", "D": "R > 0"}', '"A"', 'Detailed solution pending.'),
  ('2e45bb7a-7ba4-41e7-882d-9c80df096c82', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2011, 1, 'MCQ', 'Consider the matrix as given below Which one of the following provides the
CORRECT values of eigenvalues of the matrix?
[
1 2 3
0 4 7
0 0 3
]', '{"A": "1, 4, 3", "B": "3, 7, 3", "C": "7, 3, 2", "D": "1, 2, 3"}', '"A"', 'Detailed solution pending.'),
  ('3ee15bbf-b19b-4bb6-9305-fdaf4490f4eb', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2011, 1, 'MCQ', 'Given i=√−1what will be the evaluation of the definite integral∫
cos 𝑥+𝑖 𝑠𝑖𝑛𝑥
cos 𝑥−𝑖𝑠𝑖𝑛 𝑥
𝜋/2
0 dx ?
(a)0    (b)2       (c)-i    (d)i', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('04673d4c-ac7b-4f37-862e-5be4a03b6076', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2011, 1, 'MCQ', 'Consider a finite sequence of random values X = [x 1, x 2, …, xn]. Let μx be the
mean and σx be the standard deviation  of X. Let another finite sequence Y of
equal length be derived from this as yi = a * x i + b, where a and b are positive
constants. Let μy be the mean and σy be the standard deviation of this sequence.
Which one of the following statements is INCORRECT?
(a)Index position of mode of X in X is the same as the index position of mode of
Y in Y.
(b)Index position of median of X in X is the same as the index position of median
of Y in Y.
(c)μy = aμx + b
(d)σy = aσx + b', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('aa75107e-d375-4302-a58e-d6479fec3a4d', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2011, 1, 'MCQ', 'A deck of 5 cards (each carrying a distinct number from 1 to 5) is shuffled
thoroughly. Two cards are then removed one at a time from the deck. What is the
being one higher than the number on the second?
(a)1/5    (b)4/25    (c)1/4   (d)2/5', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('98f05a33-03f5-46ba-af2e-5f01268db80f', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2020, 1, 'MCQ', 'Consider the following logical inferences.
I1: If it rains then the cricket match will not be played.
The cricket match was played.
Inference: There was no rain.
I2: If it rains then the cricket match will not be played.
It did not rain.
Inference: The cricket match was played.
Which of the following is TRUE?
but I2 is a correct inference', '{"A": "Both I1 and I2 are correct inferences", "B": "I1 is correct but I2 is not a correct inference", "C": "I1 is not correct", "D": "Both I1 and I2 are not correct inferences                [Marks: 1][GATE:  2012]"}', '"A"', 'Detailed solution pending.'),
  ('66e8b513-ee47-4b40-944e-7c1ffb838567', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2020, 1, 'MCQ', 'What is the correct translation of the  following statement into mathematical
logic?
“Some real numbers are rational”', '{"A": "\u2203x(real(x)\u2228rational(x))", "B": "\u2200x(real(x)\u2192rational(x))", "C": "\u2203x(real(x)\u2227rational(x))", "D": "\u2203x(rational(x)\u2192real(x))     [Marks:1][GATE:  2012]"}', '"A"', 'Detailed solution pending.'),
  ('b750ce9e-c9cf-469c-bee3-d3950730ed31', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2012, 1, 'MCQ', 'Let G be a simple undirected planar graph on 10 vertices with 15 edges. If G is a
connected graph, then the number of bounded faces in any embedding of G on
the plane is equal to', '{"A": "3   (b) 4   (c) 5   (d) 6"}', '"A"', 'Detailed solution pending.'),
  ('f660e699-e93d-4358-92d1-dbb79befb2fc', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2012, 2, 'MCQ', 'Which of the following graphs is isomorphic to', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('65cba0e5-7961-4b37-ab2f-1ea6c7e82757', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2020, 1, 'MCQ', 'Let G be a weighted graph with edge weights greater than one and G’ be the graph
constructed by squaring the weights of edges in G. Let T and T’ be the minimum
spanning trees of G and G’, respectively, with total weights t and t’. Which of the
following statements is TRUE?', '{"A": "T\u2019 = T with total weight t\u2019 = t2", "B": "T\u2019 = T with total weight t\u2019 < t2", "C": "T\u2019 != T but total weight t\u2019 = t2", "D": "None of the above                [Marks:2][GATE:  2012]"}', '"A"', 'Detailed solution pending.'),
  ('23d6ee5b-6c8e-4a32-8f24-994c2ba81935', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2012, 2, 'MCQ', 'How many onto (or surjective) functions are there from an n-element (n >= 2) set
to a   2-element set?', '{"A": "2n     (b) 2n \u2013 1   (c) 2n \u2013 2  (d) 2(2n \u2013 2)"}', '"A"', 'Detailed solution pending.'),
  ('42833344-32bf-4aba-8b7b-8abe18ea51ef', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2012, 2, 'MCQ', 'Let G be a complete undirected graph on 6 vertices. If vertices of G are labeled,
then the number of distinct cycles of length 4 in G is equal to', '{"A": "15    (b) 30                         (c) 90            (d) 360"}', '"A"', 'Detailed solution pending.'),
  ('2adbf734-e04c-426d-9a81-edd9d930a53a', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2012, 2, 'MCQ', 'Consider the directed graph shown in the figure below. There are multiple
shortest paths between vertices S and T. Which one will be reported by Dijkstra’s
shortest path algorithm? Assume that, in any iteration, the shortest path to a
vertex v is updated only when a strictly shorter path to v is
Discovered.', '{"A": "SDT    (B) SBDT    (C) SACDT   (D) SACET"}', '"A"', 'Detailed solution pending.'),
  ('b2c1b566-39a4-4f29-baf7-7689a3c3bfab', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2012, 1, 'MCQ', 'Consider the function f(x) = sin(x) in the interval x ∈ [π/4, 7π/4]. The number
and location(s) of the local minima of this function are', '{"A": "One, at \u03c0/2", "B": "One, at 3\u03c0/2", "C": "Two, at \u03c0/2 and 3\u03c0/2", "D": "Two, at \u03c0/4 and 3\u03c0/2"}', '"A"', 'Detailed solution pending.'),
  ('e33aa2f3-9d75-428e-a804-feaba1c4e02e', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2012, 1, 'MCQ', 'Let A be the 2×2 matrix with elements a11 = a12 = a21 = +1 and a22 = -1. Then the
eigenvalues of the matrix A19 are
(a)1024 and -1024
(b)1024√2 and -1024√2
(c)4√2 and -4√2
(d)512√2 and -512√2', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('49f3173d-5654-483e-8c78-9a51534ba78e', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2012, 1, 'MCQ', 'Consider a random variable X that takes values +1 and −1 with probability 0.5
each. The values of the cumulative distribution function F(x) at x = −1 and +1
are
(a)0 and 0.5
(b)0 and 1
(c)0.5 and 1
(d)0.25 and 0.75', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('ddf28c57-3632-46c2-b2c4-a635cdd94fd3', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2012, 1, 'MCQ', 'Suppose a fair six-sided die is rolled once. If the value on the die is 1, 2, or 3,
the die is rolled a second time. What is the probability that the sum total of
values that turn up is at least 6?
(a)10/21
(b)5/12
(c)2/3
(d)1/6', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('9eb4415d-50a3-488e-acff-aa5ef84c5f96', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2020, 1, 'MCQ', 'A binary operation on a set of integers is defined as x  y = x2 + y2. Which one
of the following statements is TRUE about ?', '{"A": "Commutative but not associative", "B": "Both commutative and associative", "C": "Associative but not commutative", "D": "Neither commutative nor associative                       [Marks: 1][GATE: 2013]"}', '"A"', 'Detailed solution pending.'),
  ('1d4bbdd9-44d4-4601-855c-9e2d129b56fa', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2020, 1, 'MCQ', 'Which of the following statements is/are TRUE for undirected graphs?
P: Number of odd degree vertices is even.
Q: Sum of degrees of all vertices is even.', '{"A": "P only", "B": "Q only", "C": "Both P and Q", "D": "Neither P nor Q            [Marks:1][GATE:  2013]"}', '"A"', 'Detailed solution pending.'),
  ('e7a60f5c-151f-4c4c-ad9a-32ae96ebbf18', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2020, 1, 'MCQ', 'The line graph L(G) of a simple graph G is defined as follows:
 There is exactly one vertex v(e) in L(G) for each edge e in G.
 For any two edges e and e’ in G, L(G) has an edge between v(e) and v(e’), if and
only if e and e’ are incident with the same vertex in G.
Which of the following statements is/are TRUE?
(P) The line graph of a cycle is a cycle.
(Q) The line graph of a clique is a clique.
(R) The line graph of a planar graph is planar.
(S) The line graph of a tree is a tree.', '{"A": "P only", "B": "P and R only", "C": "R only", "D": "P, Q and S only      [Marks:2][GATE:  2013]"}', '"A"', 'Detailed solution pending.'),
  ('a14b4fbb-8a1c-45f0-90b8-7ff4c9b0c9f2', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2013, 2, 'MCQ', 'What is the logical translation of the following statement?
“None of my friends are perfect.”
(a)∃x(F(x)∧¬P(x))
(b)∃x(¬F(x)∧P(x))', '{"C": "\u2203x(\u00acF(x)\u2227\u00acP(x))", "D": "\u00ac\u2203x"}', '"A"', 'Detailed solution pending.'),
  ('4df6a93f-e4fa-4c92-9b20-6403de87e2ed', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2013, 2, 'MCQ', 'Which one of the following is NOT logically equivalent to ¬∃x(∀y(α)∧∀z(β)) ?
(c)∀x(∀y(α)→∃z(¬β))    (d) ∀x(∃y(¬α)→∃z(¬β', '{"A": "\u2200x(\u2203z(\u00ac\u03b2)\u2192\u2200y(\u03b1))    (b) \u2200x(\u2200z(\u03b2)\u2192\u2203y(\u00ac\u03b1))"}', '"A"', 'Detailed solution pending.'),
  ('3bdbb547-0b75-4a1a-b786-e3ac17699bb8', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2013, 1, 'MCQ', 'Suppose p is the number of cars per minute passing through a certain road
junction between 5 PM and 6 PM, and p has a Poisson distribution with mean 3.
What is the probability of observing fewer than 3 cars during any given minute
in this interval?
(a)8/(2e3)   (b)9/(2e3)  (c)17/(2e3)  (d) 26 /(2e3)', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('f98f8339-8a11-4fbb-bcf5-908162d3b048', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2013, 1, 'MCQ', 'Which one of the following does NOT equal to?
|
1 𝑥 𝑥2
1 𝑦 𝑦2
1 𝑧 𝑧2
|
(a)
|
1 𝑥 (𝑥 + 1) 𝑥 + 1
1 𝑦 ( 𝑦 + 1) 𝑦 + 1
1 𝑧 (𝑧 + 1) 𝑧 + 1
|
(b)
|
1  (𝑥 + 1) 𝑥2 + 1
1 ( 𝑦 + 1) 𝑦2 + 1
1 (𝑧 + 1) 𝑧2 + 1
|
(c)
|
0 𝑥 − 𝑦 𝑥2 − 𝑦2
0 𝑦 − 𝑧 𝑦2 − 𝑧2
1 𝑧 𝑧2
|
(d)
|
2  (𝑥 + 𝑦) 𝑥2 + 𝑦2
2 ( 𝑦 + 𝑧) 𝑦2 + 𝑧2
1 𝑧 𝑧2
|', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('6e5cd757-c7ff-4510-b90f-cd6c7a4fc5b3', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2013, 1, 'MCQ', 'Which one of the following functions is continuous at x = 3?
.', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('cec78954-21fa-4fdd-b5ac-05fa172212c9', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2020, 1, 'MCQ', 'Consider the statement: "Not all that glitters is gold”
Predicate glitters(x) (x) is true if xx glitters and predicate gold(x) (x) is true
if xx is gold.  Which one of the following logical formulae represents the above
statement?', '{"A": "\u2200x: glitters(x)\u21d2\u00acgold(x)", "B": "\u2200x: gold(x)\u21d2glitters(x)", "C": "\u2203x: gold(x)\u2227\u00acglitters(x)", "D": "\u2203x: glitters(x)\u2227\u00acgold(x)                                 [Marks: 1][GATE:  2014][SET-1]"}', '"A"', 'Detailed solution pending.'),
  ('f51c9c05-c3c3-452e-86af-f8561f577768', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2020, 1, 'MCQ', 'Consider the directed graph below given.
Which one of the following is TRUE?', '{"A": "The graph does not have any topological ordering.", "B": "Both PQRS and SRQP are topological orderings.", "C": "Both PSRQ and SPRQ are topological orderings.", "D": "PSRQ is the only topological ordering         [Marks: 1][GATE:  2014][SET-1]"}', '"A"', 'Detailed solution pending.'),
  ('24b50600-3131-4da0-a05a-2fed55e5b8f9', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2014, 2, 'MCQ', 'A pennant is a sequence of numbers, each number being 1 or 2. An n -pennant
is a sequence of numbers with sum equal to n. For example, (1, 1, 2) is a 4-
pennant. The set of all possible 1 -pennants is {(1)}, the set of all possible 2 -
pennants is {(2), (1, 1)} and the set of all 3 -pennants is {(2, 1), (1, 1, 1), (1, 2)}.
Note that the pennant (1, 2) is not the same as the pennant (2, 1). The number', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('6178daac-9d4b-46e2-80cb-c3c9d0b97a6e', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2014, 2, 'MCQ', 'Let S denotes the set of all functions f :{ 0, 1}4→ {0, 1}. Denote by N the number
of functions from S to the set {0, 1}. The value of log2 log 2 N is ______', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('158df30d-b155-4025-95fd-c356347b1441', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2014, 2, 'MCQ', 'An ordered n-tuple (d1, d2, … , dn) with d1  d2 ⋯  dn is called graphic if
there exists a simple undirected graph with n vertices having degrees d 1, d2,
… , dn respectively. Which of the following 6 -tuples is NOT graphic?', '{"A": "(1, 1, 1, 1, 1, 1)", "B": "(2, 2, 2, 2, 2, 2)", "C": "(3, 3, 3, 1, 0, 0)", "D": "(3, 2, 1, 1, 1, 0)"}', '"A"', 'Detailed solution pending.'),
  ('fc642748-4d18-4d1f-93c5-82d98716003e', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2020, 1, 'MCQ', 'Which one of the following propositional logic formulas is TRUE when exactly two
of p, q and r are TRUE?
(a)((p ↔ q) ∧ r) ∨ (p ∧ q ∧ ∼r)
(b)(∼(p ↔ q) ∧ r) ∨ (p ∧ q ∧ ∼r)
(c)((p → q) ∧ r) ∨ (p ∧ q ∧ ∼r)
(d)(∼(p ↔ q) ∧ r) ∧ (p ∧ q ∧ ∼r)
[Marks:2][GATE:
2014][SET-1]', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('2bf16e2d-dd36-4127-8853-fc6c7e902ecd', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2014, 2, 'MCQ', 'Let G = (V, E) be a directed graph where V is the set of vertices and E the set of
edges. Then which one of the following graphs has the same strongly connected
components as G?
(a)G1 = (V, E1) where E1 = {(u, v)|(u, v)∉E}
(b)G2 = (V,E2 )where E2={(u, v)│(u, v)∈E}
(c)G3 = (V,E3) where E3={(u, v)|there is a path of length≤2 from u to v in E}
(d)G4 = (V4,E) where V4 is the set of vertices in G which are not isolated', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('fba20259-ee4b-4000-9e44-075132c88593', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2014, 1, 'MCQ', 'The value of the dot product of the eigenvectors corresponding to any pair of
different eigenvalues of a 4 -by-4 symmetric positive definite m atrix is', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('f2e86b73-83a9-458e-8142-526d27921ad0', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2014, 1, 'MCQ', 'Let the function
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
3]such that f′(θ)≠0', '{"A": "I only  (b)II only   (c) Both I and II      (d)Neither I nor II"}', '"A"', 'Detailed solution pending.'),
  ('8bdc1612-2d42-4713-9bb0-321d1f3ee48b', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2020, 1, 'MCQ', 'The function f(x) = x sin x satisfies the following equation: f ''''(x) + f (x) + t cos x
= 0. The value of t is __________.                                   [Marks: ][GATE:
2014][SET-1]', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('5294df79-cf79-48a3-9900-9a644ee73dcf', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2014, 1, 'MCQ', 'A function f(x) is continuous in the interval [0, 2].
It is known that f(0) = f(2) = -1 and f(1) = 1.
Which one of the following statements must be true?
(a)There exists a y in the interval (0,1) such that f(y)=f(y+1)
(b)For every y in the interval (0,1),f(y)=f(2 -y)
(c)The maximum value of the function in the interva l (0,2) is 1
(d)There exists a y in the interval (0, 1) such that f(y)= -f(2-y)', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('781c701c-0243-4478-87a4-052d47c034bc', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2014, 1, 'MCQ', 'Four fair six -sided dice are rolled. The probability that the sum of the results
being 22 is X⁄1296. The value of X is ___________.', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('d09053ef-acaf-4a7c-809a-ed9e68523340', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2014, 2, 'MCQ', 'Consider an undirected graph where self-loops are not allowed.
The vertex set of G is {(i, j): 1 ≤ i ≤ 12, 1 ≤ j ≤ 12}.
There is an edge between (a, b) and (c, d) if |a - c| ≤ 1 and |b - d| ≤ 1.
The number of edges in this graph is __________.
(a)506   (b)507   (c)508   (d)509', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('e31c61ff-7a51-4e70-a7b9-49938809dbd7', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2014, 1, 'MCQ', 'Consider the following relation on subsets of the set S of integers between 1 and
2014. For two distinct subsets U and V of S we say U < V if the minimum element
in the symmetric difference of the two sets is in U. Consider the following two
statements:
S1: There is a subset of S that is larger than every other subset.
S2: There is a subset of S that is smaller than every other subset.
Which one of the following is CORRECT?
(a)Both S1 and S2 are true
(b)S1 is true and S2 is false
(c)S2 is true and S1 is false', '{"D": "Neither S1 nor S2 is true    [SET-1]"}', '"A"', 'Detailed solution pending.'),
  ('fe9de2fa-bfee-404a-ade5-8ce219feaaae', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2014, 1, 'MCQ', 'A cycle on n vertices is isomorphic to its complement. The value of n is _____.', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('d6801f6b-20a7-4e62-8c73-f973557759d8', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2020, 1, 'MCQ', 'The number of distinct minimum spanning trees for the weighted graph below is
_____
[Marks: 2][GATE:  201[SET-2]', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('8103710e-d03b-4604-818a-58c5aca86c52', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2014, 2, 'MCQ', 'Which one of the following Boolean expressions is NOT a tautology?
(A)((𝑎 → 𝑏) ∧ (𝑏 → 𝑐)) → (𝑎 → 𝑐)
(𝐵) (𝑎 → 𝑐) → (∼ 𝑏 → (𝑎 ∧ 𝑐))
(𝐶)(𝑎 ∧ 𝑏 ∧ 𝑐) → (𝑐 ∨ 𝑎)', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('851a6e6b-982b-4b6f-b950-f1e99445a78c', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2014, 1, 'MCQ', 'The security system at an IT office is composed of 10 computers of which exactly
four are working. To check whether the system is functional, the officials inspect
four of the computers picked at random (without replacement). The system is
deemed functional if at least three of the four computers inspected are
working.  Let the probability that the system is deemed functional be denoted by
p. Then 100p =_____________.
(a)11.90   (b)11.91   (c)11.92  (d)11.93', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('56f9c330-68bf-4e0c-92c9-8830f430da48', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2014, 1, 'MCQ', 'Each of the nine words in the sentence "The quick brown fox jumps over the lazy
dog" is written on a separate piece of paper. These nine pieces of paper are kept
in a box. One of the pieces is drawn at random from the box. The expected length
of the word drawn is _____________. (The answer should be rounded to one decimal
place.)
(a)3.9    (b)4.0    (c)4.1   (d)4.2', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('49a88260-9810-45a5-95d8-56b9423ec88c', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2014, 1, 'MCQ', 'The maximum number of edges in a bipartite graph on 12 vertices is ______.
(a)36    (b)37    (c)38   (d)39', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('3fbe4ea4-a76b-4b92-936f-cc889b1aa553', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2014, 1, 'MCQ', 'If the matrix A is Such that
A=[
2
−4
7
] [1 9 5].
Then the determinant of A is equal to ___________________.
(a)0     (b)1   (c)2    (d)3', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('37b24ef9-870b-4912-beb1-a7fb327216b9', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2014, 1, 'MCQ', 'A non-zero polynomial f(x) of degree 3 has roots at x = 1, x = 2 and x = 3.
Which one of the following must be TRUE?
(a)f(0)f(4) < 0    (b)f(0)f(4) > 0  (c)f(0) + f(4) > 0   (d)f(0) + f(4) < 0', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('7878ab84-3678-4d3a-a8d5-d2b6f3235bc7', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2014, 1, 'MCQ', 'The product of the non-zero eigenvalues of the matrix is .____________', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('32a032d1-240a-4603-926e-093181c7180f', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2014, 1, 'MCQ', 'The probability that a given positive integer lying between 1 and 100 (both
inclusive) is NOT divisible by 2, 3 or 5 is ______ .
(a)0.259 to 0.261
(b)0.260 to 0.262
(c)0.261 to 0.263
(d)0.262 to 0.264', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('62506acc-27a4-4047-946f-be81aad5fa88', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2014, 1, 'MCQ', 'The number of distinct positive integral factors of 2014 is _________', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('c4451ad4-0926-4edb-a52b-3882edf4e572', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2014, 1, 'MCQ', 'Consider the following statements:
P: Good mobile phones are not cheap
Q: Cheap mobile phones are not good
L: P implies Q
M: Q implies P
N: P is equivalent to Q
Which one of the following about L, M, and N is CORRECT?', '{"A": "Only L is TRUE.", "B": "Only M is TRUE.", "C": "Only N is TRUE.", "D": "L, M and N are TRUE."}', '"A"', 'Detailed solution pending.'),
  ('c40d24d5-d572-4ceb-be90-7c158b5e1125', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2020, 1, 'MCQ', 'Let X and Y be finite sets and f: X→Y be a function. Which one of the following
statements is TRUE?                                   [GATE:  2014][SET-3]', '{"A": "For any subsets \ud835\udc34 \ud835\udc4e\ud835\udc5b\ud835\udc51 \ud835\udc35 \ud835\udc5c\ud835\udc53 \ud835\udc4b, |\ud835\udc53(\ud835\udc34 \u222a \ud835\udc35)| = |\ud835\udc53(\ud835\udc34)| + |\ud835\udc53(\ud835\udc35)|", "B": "For any subsets \ud835\udc34 \ud835\udc4e\ud835\udc5b\ud835\udc51 \ud835\udc35 \ud835\udc5c\ud835\udc53 \ud835\udc4b, \ud835\udc53(\ud835\udc34 \u2229 \ud835\udc35) = \ud835\udc53(\ud835\udc34) \u2229 \ud835\udc53(\ud835\udc35)", "C": "For any subsets \ud835\udc34 \ud835\udc4e\ud835\udc5b\ud835\udc51 \ud835\udc35 \ud835\udc5c\ud835\udc53 \ud835\udc4b, |\ud835\udc53(\ud835\udc34 \u2229 \ud835\udc35)| = \ud835\udc5a\ud835\udc56\ud835\udc5b{|\ud835\udc53(\ud835\udc34)|, |\ud835\udc53(\ud835\udc35)|}", "D": "For any subsets \ud835\udc46 \ud835\udc4e\ud835\udc5b\ud835\udc51 \ud835\udc47 \ud835\udc5c\ud835\udc53 \ud835\udc4c, \ud835\udc53\u22121(\ud835\udc46 \u2229 \ud835\udc47) = \ud835\udc53\u22121(\ud835\udc46) \u2229 \ud835\udc53\u22121((\ud835\udc47)"}', '"A"', 'Detailed solution pending.'),
  ('857bb9c3-b4ed-4a18-a2f6-a1bcbd2d6d1d', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2014, 1, 'MCQ', 'Let G be a group with 15 elements. Let L be a subgroup of G. It is known that L
≠ G and that the size of L is at least 4. The size of L is __________.', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('64c3208f-e5ee-46a2-b641-ef5d1c80f6e5', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2020, 1, 'MCQ', '𝐶𝑜𝑛𝑠𝑖𝑑𝑒𝑟 𝑡ℎ𝑒 𝑠𝑒𝑡 𝑜𝑓 𝑎𝑙𝑙 𝑓𝑢𝑛𝑐𝑡𝑖𝑜𝑛𝑠 𝑓: {0, 1…2014} → {0, 1…2014} 𝑠𝑢𝑐ℎ 𝑡ℎ𝑎𝑡 𝑓(𝑓(𝑖)) =
𝑖, 𝑓𝑜𝑟 𝑎𝑙𝑙  0 ≤ 𝑖 ≤ 2014. 𝐶𝑜𝑛𝑠𝑖𝑑𝑒𝑟 𝑡ℎ𝑒 𝑓𝑜𝑙𝑙𝑜𝑤𝑖𝑛𝑔 𝑠𝑡𝑎𝑡𝑒𝑚𝑒𝑛𝑡𝑠:
𝑃. 𝐹𝑜𝑟 𝑒𝑎𝑐ℎ 𝑠𝑢𝑐ℎ 𝑓𝑢𝑛𝑐𝑡𝑖𝑜𝑛 𝑖𝑡 𝑚𝑢𝑠𝑡 𝑏𝑒 𝑡ℎ𝑒 𝑐𝑎𝑠𝑒 𝑡ℎ𝑎𝑡 𝑓𝑜𝑟 𝑒𝑣𝑒𝑟𝑦 𝑖, 𝑓(𝑖) = 𝑖.
𝑄. 𝐹𝑜𝑟 𝑒𝑎𝑐ℎ 𝑠𝑢𝑐ℎ 𝑓𝑢𝑛𝑐𝑡𝑖𝑜𝑛 𝑖𝑡 𝑚𝑢𝑠𝑡 𝑏𝑒 𝑡ℎ𝑒 𝑐𝑎𝑠𝑒 𝑡ℎ𝑎𝑡 𝑓𝑜𝑟 𝑠𝑜𝑚𝑒 𝑖, 𝑓(𝑖) = 𝑖.
𝑅. 𝐸𝑎𝑐ℎ 𝑓𝑢𝑛𝑐𝑡𝑖𝑜𝑛 𝑚𝑢𝑠𝑡 𝑏𝑒 𝑜𝑛𝑡𝑜.
𝑊ℎ𝑖𝑐ℎ 𝑜𝑛𝑒 𝑜𝑓 𝑡ℎ𝑒 𝑓𝑜𝑙𝑙𝑜𝑤𝑖𝑛𝑔 𝑖𝑠 𝐶𝑂𝑅𝑅𝐸𝐶𝑇?', '{"A": "\ud835\udc43, \ud835\udc44 \ud835\udc4e\ud835\udc5b\ud835\udc51 \ud835\udc45 \ud835\udc4e\ud835\udc5f\ud835\udc52 \ud835\udc61\ud835\udc5f\ud835\udc62\ud835\udc52", "B": "\ud835\udc42\ud835\udc5b\ud835\udc59\ud835\udc66 \ud835\udc44 \ud835\udc4e\ud835\udc5b\ud835\udc51 \ud835\udc45 \ud835\udc4e\ud835\udc5f\ud835\udc52 \ud835\udc61\ud835\udc5f\ud835\udc62\ud835\udc52", "C": "\ud835\udc42\ud835\udc5b\ud835\udc59\ud835\udc66 \ud835\udc43 \ud835\udc4e\ud835\udc5b\ud835\udc51 \ud835\udc44 \ud835\udc4e\ud835\udc5f\ud835\udc52 \ud835\udc61\ud835\udc5f\ud835\udc62\ud835\udc52", "D": "Only R is true       [Marks:2][GATE:  2014][SET-3]"}', '"A"', 'Detailed solution pending.'),
  ('eab00bda-b4b6-4446-85f0-ed06f7a2c601', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2014, 2, 'MCQ', 'There are two elements x, y in a group (G,∗) such that every element in the
group can be written as a product of some number of x''s and y''s in some order.
It is known that x*x = y*y = x*y*x*y = y*x*y*x = e; where e is the identity
element. The maximum number of elements in such a group is ____.', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('8351b624-6f61-4377-bc74-abd4c4f582ae', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2014, 2, 'MCQ', 'If G is the forest with  n vertices and k connected components, how many edges
does G have?
(a)⌊n/k⌋   (b)⌈n/k⌉  (c)n – k    (d) n – k + 1', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('6198e841-3573-49a9-890e-f495564d7734', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2014, 2, 'MCQ', 'Let d denote the minimum degree of a vertex in a graph. For all planar graphs
on n vertices with d ≥ 3, which one of the following is TRUE?
+ 2
n/(d+1)', '{"A": "In any planar embedding, the number of faces is at least n/2 + 2", "B": "In any planar embedding, the number of faces is less than n/2 + 2", "C": "There is a planar embedding in which the number of faces is less than n/2", "D": "There is a planar embedding in which the number of faces is at most"}', '"A"', 'Detailed solution pending.'),
  ('59f882ff-45f2-4efc-98fc-9aa9131621d5', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2014, 1, 'MCQ', 'Let δ denote the minimum degree of a vertex in a graph. For all planar graphs on
n vertices with δ ≥3, which one of the following is TRUE?
𝑛
2 +2
𝑛
2+2
𝑛
2+2
𝑛
δ+1', '{"A": "In any planar embedding, the number of faces is at least", "B": "In any planar embedding, the number of faces is less than", "C": "There is a planar embedding in which the number of faces is less than", "D": "There is a planar embedding in which the number of faces is at most"}', '"A"', 'Detailed solution pending.'),
  ('540543b6-ad12-45dc-9e12-73fb353277d5', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2020, 1, 'MCQ', 'The CORRECT formula for the sentence, "not all Rainy days are Cold" is', '{"A": "\u2200\ud835\udc51(\ud835\udc45\ud835\udc4e\ud835\udc56\ud835\udc5b\ud835\udc66(\ud835\udc51) \u2227 ~\ud835\udc36\ud835\udc5c\ud835\udc59\ud835\udc51(\ud835\udc51))", "B": "\u2200\ud835\udc51(~\ud835\udc45\ud835\udc4e\ud835\udc56\ud835\udc5b\ud835\udc66(\ud835\udc51) \u2192 \ud835\udc36\ud835\udc5c\ud835\udc59\ud835\udc51(\ud835\udc51))", "C": "\u2203\ud835\udc51(~\ud835\udc45\ud835\udc4e\ud835\udc56\ud835\udc5b\ud835\udc66(\ud835\udc51) \u2192 \ud835\udc36\ud835\udc5c\ud835\udc59\ud835\udc51(\ud835\udc51))", "D": "\u2203\ud835\udc51(\ud835\udc45\ud835\udc4e\ud835\udc56\ud835\udc5b\ud835\udc66(\ud835\udc51) \u2227 ~\ud835\udc36\ud835\udc5c\ud835\udc59\ud835\udc51(\ud835\udc51))     [GATE:  2014][SET-3]"}', '"A"', 'Detailed solution pending.'),
  ('64b5f133-ccaf-4132-8803-3324e04de5a6', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2014, 1, 'MCQ', 'Which one of the following statements is TRUE about every n × n matrix with
only real eigenvalues?
negative, at least one of its eigenvalues is negative.
eigenvalues are positive.', '{"A": "If the trace of the matrix is positive and the determinant of the matrix is", "B": "If the trace of the matrix is positive, all its eigenvalues are positive.", "C": "If the determinant of the matrix is positive, all its eigenvalues are positive.", "D": "If the product of the trace and determinant of the matrix is positive, all its"}', '"A"', 'Detailed solution pending.'),
  ('f6181812-c466-48c0-a7f8-155fe1f0d1e3', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2020, 1, 'MCQ', 'If V1 and V2 are 4-dimensional subspaces of a 6-dimensional vector space V, then
the smallest possible dimension of V1∩V2   is ______.
(a)2
(b)3
(c)4
(d)5
[GATE:  2014][SET-3]', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('b3a94ba5-ddb4-4f0e-b99d-5e941f2e1f01', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2014, 1, 'MCQ', 'If ∫ |𝑥 𝑠𝑖𝑛 𝑥|𝑑𝑥
2𝜋
0  = k𝜋, then the value of K is equal to _____________.', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('b8ead6fc-379c-4cf0-8196-9cc4c1e18f79', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2014, 1, 'MCQ', 'The value of the integral given below is∫ 𝑥2𝜋
0  𝑐𝑜𝑠 𝑥𝑑𝑥
(A)-2π
(C)- π
(D)2 π', '{"B": "\u03c0"}', '"A"', 'Detailed solution pending.'),
  ('12c0c77b-788f-46b9-9637-361c4971c3ca', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2020, 1, 'MCQ', 'Let S be a sample space and two mutually exclusive events A and B be such
that A∪B = S. If P(∙) denotes the probability of the event, the maximum value of
P(A)P(B) is __________.
(a)0.25   (b)0.26  (c)0.27  (d)0.28
[GATE: 2014][SET-3]', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('2d119e5a-917f-461b-be5e-bda2613c06ae', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2014, 1, 'MCQ', 'Consider the set of all functions f:{0, 1 …2014}→{0, 1 … 2014} such that f(f(i)) =
i, for all  0 ≤ i ≤ 2014. Consider the following statements:
P. For each such function it must be the case that for every i, f(i) = i.
Q. For each such function it must be the case that for some i, f(i) = i.
R. Each function must be onto.
Which one of the following is CORRECT?', '{"A": "P, Q and R are true", "B": "Only Q and R are true", "C": "Only P and Q are true", "D": "Only R is true"}', '"A"', 'Detailed solution pending.'),
  ('ee8fcdfc-873e-4c58-89a3-4b60bbd23129', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2020, 1, 'MCQ', 'If g (X) =1− x and h (x) =
𝑥
𝑥−1, then
𝑔(ℎ(𝑥))
ℎ(𝑔(𝑥)) is
(a)
ℎ(𝑥)
𝑔(𝑥)
(b)
−1
𝑥
(c)
𝑔(𝑥)
ℎ(𝑥)
(d)
𝑥
(1−𝑥)2
[GATE:  2015][SET-1]', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('bf272508-32bb-443f-a2b8-ed9353ed0959', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2020, 1, 'MCQ', 'Which one of the following is NOT equivalent to p ↔ q?
(𝑎)(¬𝑝 ∨ 𝑞) ∧ (𝑝 ∨ ¬𝑞)
(𝑏)(¬𝑝 ∨ 𝑞) ∧ (𝑞 → 𝑝)
(c)(¬𝑝 ∧ 𝑞) ∨ (𝑝 ∧ ¬𝑞)', '{"D": "(\u00ac\ud835\udc5d \u2227 \u00ac\ud835\udc5e) \u2228 (\ud835\udc5d \u2227 \ud835\udc5e)                    [GATE:  2015][SET-1]"}', '"A"', 'Detailed solution pending.'),
  ('f725375a-53bb-4ca2-aaf5-8df8c6829b78', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2020, 1, 'MCQ', 'For a set  A, the power set of  A is denoted by  2A. If A = {5, {6}, {7}}, which of the
following options are TRUE?
I. ∅ ∈ 2𝐴  II. ∅ ⊆ 2𝐴      III.{5, {6}} ∈ 2𝐴  IV. {5, {6}} ⊆ 2𝐴', '{"A": "I and III only", "B": "II and III only", "C": "I, II and III only", "D": "I, II and IV only             [GATE:  2015][SET-1]"}', '"A"', 'Detailed solution pending.'),
  ('e43f1e65-8dc1-4e3c-b62f-f08e7212b9ec', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2020, 1, 'MCQ', 'The binary operator ≠ is defined by the following truth table.
Which one of the following is true about the binary operator ≠?', '{"A": "Both commutative and associative", "B": "Commutative but not associative", "C": "Not commutative but associative", "D": "Neither commutative nor associative  [Marks:][GATE:  2015][SET-1]"}', '"A"', 'Detailed solution pending.'),
  ('7ac64548-ef4c-41e9-8675-ffad59f1cc5d', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2020, 1, 'MCQ', 'Suppose L={p, q, r, s, t} is a lattice represented by the following Hasse diagram:
For any x, y ∈ L, not necessarily distinct, x ∨ y and x ∧ y are join and meet of x,
y respectively. Let L 3 = {(x, y, z): x, y, z ∈ L} be the set of all ordered triplets of
the elements of L. Let p r be the probability that an element (x, y, z) ∈ L3 chosen
equiprobably satisfies x ∨ (y ∧ z) = (x ∨ y) ∧ (x ∨ z). Then
1
5  (d)
1
5< Pr< 1
[GATE:  2015][SET-1]', '{"A": "Pr = 0  (b) Pr = 1   (c) 0 < Pr \u2264"}', '"A"', 'Detailed solution pending.'),
  ('20bbec71-cbf8-43c3-98f4-13f3e452cfae', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2015, 1, 'MCQ', 'Let G be a connected planar graph with 10 vertices. If the number of edges on
each face is three, then the number of edges in G is_______________.', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('822d26b5-422c-4ef9-9c6e-5ded15baebef', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2015, 1, 'MCQ', 'The graph shown below has 8 edges with distinct integer edge weights. The
minimum spanning tree (MST) is of weight 36 and contains the edges:
{(A, C), (B, C), (B, E), (E, F), (D, F)}. The edge weights of only those edges which
are in the MST are given in the figure shown below. The minimum possible sum
of weights of all 8 edges of this graph is_______________.', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('6a303973-c639-4bcc-99f2-cb7885127ff7', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2015, 1, 'MCQ', 'The cardinality of the power set of {0, 1, 2, …, 10} is _________.', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('c284d6a0-ec5a-4dad-9f75-72aec8409b99', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2015, 1, 'MCQ', 'In the LU decomposition of the matrix [2 2
4 9], if the diagonal elements of U are
both 1, then the lower diagonal entry l22 of L is ____________', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('552938c1-ec74-4bd5-b19d-101e6658d3e6', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2020, 1, 'MCQ', 'Consider the following 2 × 2 matrix A where two elements are unknown and are
marked by a and b. The eigenvalues of this matrix are –1 and 7. What are the
values of a and b?
𝑨 = [𝟏 𝟒
𝒃 𝒂]', '{"A": "a = 6, b = 4", "B": "a = 4, b = 6", "C": "a = 3, b = 5", "D": "a = 5, b = 3      [Marks:][GATE:  2015][SET-1]"}', '"A"', 'Detailed solution pending.'),
  ('e6683043-7ec6-4e7e-a794-12716b84474b', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2015, 1, 'MCQ', 'Let G = (V, E) be a simple undirected graph, and s be a particular vertex in it
called the source.  For x ∈V, let d(x) denote the shortest distance in G from s to
x. A breadth first search (BFS) is performed starting at s. Let T be the resultant
BFS tree. If (u, v) is an edge of G that is not in T, then which one of the following
cannot be the value of d(u) - d(v) ?
(a)-1                 (b)0        (c)1   (d)2
Q101.
∫
𝑐𝑜𝑠 (
1
𝑥)
𝑥2
2/𝜋
1/𝜋
𝑑𝑥 = ____________
(a)-1               (b)-2      (c)-3   (d)-4', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('d1885645-9afb-4919-8d11-54569054de73', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2015, 1, 'MCQ', '∑ 1
𝑥(𝑥+1)
99
𝑋=1 _______________________
(a)0.99      (b)1   (c)2   (d)3', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('dd8aabec-06ef-4548-b5e8-cd1eb0bab896', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2015, 1, 'MCQ', 'Let 𝑅 be the relation on the set of positive integers such that 𝑎Rb if and only if 𝑎
and 𝑏 are distinct and have a common divisor other than 1. Which one of the
following statements about 𝑅 is true?
.', '{"A": "\ud835\udc45 is symmetric and reflexive but not transitive", "B": "\ud835\udc45 is reflexive but not symmetric and not transitive", "C": "\ud835\udc45 is transitive but not reflexive and not symmetric", "D": "\ud835\udc45 is symmetric but not reflexive and not transitive"}', '"A"', 'Detailed solution pending.'),
  ('ff60bef8-71e5-41b2-ae57-15106765c9f1', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2015, 1, 'MCQ', 'The number of onto functions (surjective functions) from set 𝑋 = {1, 2, 3, 4} to set', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('be428bdf-ced7-47d7-8c14-26ff39a8d73f', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2015, 1, 'MCQ', 'Let 𝑋 and 𝑌 denote the sets containing 2 and 20 distinct objects respectively and
𝐹 denotes the set of all possible functions defined from 𝑋 to 𝑌. Let 𝑓 be randomly
chosen from 𝐹. The probability of 𝑓 being one-to-one is ________.', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('5a8e9e2f-0c29-481a-8e73-143c8f6368d6', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2020, 1, 'MCQ', 'A graph is self-complementary if it is isomorphic to its complement. For all self -
complementary graphs on 𝑛 vertices, 𝑛 is', '{"A": "A multiple of 4", "B": "Even", "C": "Odd", "D": "Congruent to 0 \ud835\udc5aod 4, or, 1 \ud835\udc5aod 4.                              [GATE:  2015][SET-2]"}', '"A"', 'Detailed solution pending.'),
  ('3283c910-b691-4587-b3b2-04d55d302808', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2015, 1, 'MCQ', 'In a connected graph, a bridge is an edge whose removal disconnects a graph.
Which one of the following statements is true?
subgraph of a graph)', '{"A": "A tree has no bridges", "B": "A bridge cannot be part of a simple cycle", "C": "Every edge of a clique with size \u2265 3 is a  bridge (A clique is any complete", "D": "A graph with bridges cannot have a cycle"}', '"A"', 'Detailed solution pending.'),
  ('0f15889c-2c2c-4a84-967e-f17a065b7e0b', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2015, 1, 'MCQ', 'Consider the following statements:
S1: if a candidate is known to be corrupt, then he will not be elected .
S2 : if a candidate is kind , he will be elected
Which one the following statement following form S1 and S2 per sound
inference rules logic?', '{"A": "If a person is known to corrupt, he is kind", "B": "If a person is not known to be corrupt, he is not kind", "C": "If a person is kind, he is not known to be corrupt", "D": "If a person is not kind, he is not known to be corrupt"}', '"A"', 'Detailed solution pending.'),
  ('98977b62-20fb-4864-9f15-371a0b931feb', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2015, 1, 'MCQ', 'The larger of the eigenvalues of the matrix [4 5
2 1] is __________
(a)6    (b)7    (c)8    (d)9', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('39233476-b7f1-4bfe-aeff-97796e57ffe4', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2020, 1, 'MCQ', 'The number of divisors of 2100 is ______.
(a)36    (b)37    (c)38    (d)39
[GATE:  2015][SET-2]', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('2b5ecca2-ad40-4a88-900c-56e7f811d372', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2020, 1, 'MCQ', 'Perform the following operations on the matrix
[
3 4 45
7 9 105
13 2 195
]
(I) add the third row to the second row
(II) Subtract the third column from the first column
The determinant of the resultant matrix is ____________[GATE:  2015][SET-2]', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('08f4ed0a-78fa-458e-8c24-098a4d20901a', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2015, 1, 'MCQ', 'Which one of the following well formed formulae is a tautology?
(a)∀x ∃y R(x, y)↔∃y ∀x R(x, y)
(b)(∀x [∃y R(x, y)→S(x, y)])→∀x∃y S(x, y)
(c)[∀x ∃y (P(x, y)→R(x, y)]↔[∀x ∃y ( ¬ P(x, y)∨R(x, y)]
(d)∀x ∀y P(x, y)→∀x ∀y P(y, x)', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('e8d51943-bf63-47d9-9acf-803a10cdc8e9', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2015, 1, 'MCQ', 'Let 𝑓(𝑥) = 𝑥(−1/3) and A denote the area of the region bounded by f(x) and the     X-
axis, when x varies from -1 to 1. Which of the following statements is/are TRUE?
I) f is continuous in [-1,1]
II) f is not bounded in [-1,1]
III) A is nonzero and finite
(a)II only    (b)III only   (c)II and III only   (d)I, II and III', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('30b50b19-ddcf-475e-b08a-66ba7afa3219', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2015, 1, 'MCQ', 'Suppose 𝑈 is the power set of the set 𝑆 = {1, 2, 3, 4, 5, 6}. For any 𝑇∈𝑈, let | 𝑇|
denote the number of elements in 𝑇 and 𝑇′ denote the complement of 𝑇. For any
𝑇∈𝑈, let 𝑇∖𝑅  be the set of all elements in 𝑇 which are not in 𝑅. Which one of the
following is true?
(𝑏) ∃𝑋 ∈ 𝑈 ∃𝑌 ∈ 𝑈 (|𝑋| = 5, |𝑌| = 5 𝑎𝑛𝑑 𝑋 ∩ 𝑌 = ∅)
(𝑐) ∀𝑋 ∈ 𝑈 ∀𝑌 ∈ 𝑈 (|𝑋| = 2, |𝑌| = 3 𝑎𝑛𝑑 𝑋 ∖ 𝑌 = ∅)', '{"A": "\u2200\ud835\udc4b \u2208 \ud835\udc48 (|\ud835\udc4b| = |\ud835\udc4b\u2032|)"}', '"A"', 'Detailed solution pending.'),
  ('33a8784b-7c10-483c-b55e-3526688e29b8', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2020, 1, 'MCQ', 'Let # be a binary operator defined as X # Y = X ′ + Y′; where X and Y are
Boolean variables.
Consider the following two statements:
S1: (P # Q) # R = P # (Q # R)
S2: Q # R = R # Q
Which of the following is/are true for the Boolean variables P, Q and R?', '{"A": "Only S1 is True", "B": "Only S2 is True", "C": "Both S1 and S2 are True", "D": "Neither S1 nor S2 are True       [Marks:][GATE:  2015][SET-3]"}', '"A"', 'Detailed solution pending.'),
  ('8527ca95-2f4d-43b8-98fe-3a0f09f06454', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2020, 1, 'MCQ', 'Consider a binary tree T that has 200 leaf nodes. Then, the number of nodes in
T that have exactly two children are _________. [GATE:  2015][SET-3]', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('d4b08f18-a10f-474d-b7ad-72e049dce523', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2020, 1, 'MCQ', 'In a room there are only two types of people, namely Type 1 and Type 2. Type
1 people always tell the truth and Type 2 people always lie. You give a fair coin
to a person in that room, without knowing which type he is from and tell him to
toss it and hide the result from you till you ask for it. Upon asking the person
replies the following
"The result of the toss is head if and only if I am telling the truth"
Which of the following options is correct?', '{"A": "The result is head", "B": "The result is tail", "C": "If the person is of Type 2, then the result is tail", "D": "If the person is of Type 1, then the result is tail          [GATE:  2015][SET-3]"}', '"A"', 'Detailed solution pending.'),
  ('fcb0a8ca-4106-4c50-94f4-c4e97411cc09', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2015, 1, 'MCQ', 'Let G be connected undirected graph of 100 vertices and 300 edges. The weight
of a minimum spanning tree of G is 500. When the weight of each edge of G is
increased by five, the weight of a minimum spanning tree becomes ________', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('12deb2af-ca5b-446f-942c-e2d7077811ed', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2015, 1, 'MCQ', 'Let R be a relation on the set of ordered pairs of positive integers such that
((p, q), (r, s)) ∈ R if and only if p–s = q–r.
Which one of the following is true about R?', '{"A": "Both reflexive and symmetric", "B": "Reflexive but not symmetric", "C": "Not reflexive but symmetric", "D": "Neither reflexive nor symmetric"}', '"A"', 'Detailed solution pending.'),
  ('1dcc5d90-d63d-46a6-857b-8bc1bbc0b55f', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2015, 1, 'MCQ', 'The number of 4 digit numbers having their digits in non-decreasing order (from
left to right) constructed by using the digits belonging to the set {1, 2, 3} is _____
.
Q121.
In the given matrix [
1 −1 2
0 1 0
1 2 1
], one of the eigenvalues is 1. The eigenvector
corresponding to the eigenvalues  1 are
(a){α(4, 2, 1) | α ≠ 0, α ∈ R}
(b){α(-4, 2, 1) | α ≠ 0, α ∈ R}
(c){α(2, 0, 1) | α ≠ 0, α ∈ R}
(d){α(-2, 0, 1) | α ≠ 0, α ∈ R}
Q122.', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('df981a6f-872c-4010-b50d-f336b602071f', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2016, 2, 'MCQ', 'If the following system has non-trivial solution,
px + qy + rz = 0
qx + ry + pz = 0
rx + py + qz = 0
Then which one of the following options is True?
Q124.', '{"A": "p \u2013 q + r = 0 or p = q = -r", "B": "p + q-r = 0 or p = -q = r", "C": "p + q + r = 0 or p = q = r", "D": "p \u2013 q + r = 0 or p = -q = -r"}', '"A"', 'Detailed solution pending.'),
  ('9727b226-a3b2-443d-97a0-5d02fb884e1a', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2016, 2, 'MCQ', 'Let G be a weighted connected undirected graph with distinct positive edge
weights. If every edge weight is increased by the same value, then which of the
following statements is/are TRUE?
 P: Minimum spanning tree of G does not change.
 Q: Shortest path between any pair of vertices does not change.', '{"A": "P only", "B": "Q only", "C": "Neither P nor Q", "D": "Both P and Q"}', '"A"', 'Detailed solution pending.'),
  ('cfdaff36-09f5-4f90-b5e7-4d9d68dc5631', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2016, 2, 'MCQ', 'A function f : N+→N+ , defined on the set of positive integers  N+, satisfies the
following properties:
f(n)=f(n/2)   if n is even
f(n)=f(n+5)  if n is odd
Let R={i∣∃j:f(j)=i} be the set of distinct values that f takes. The maximum possible', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('a5e7f1c7-af9f-472b-be8c-ea057fb863b3', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2016, 2, 'MCQ', 'Consider the weighted undirected graph with 4 vertices, where the weight of
edge {i,j} is.
given by the entry Wij in the matrix W
The largest possible integer value of x, for which at least one shortest path
between some pair of vertices will contain the edge with weight x is ___________.', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('fbc4defd-9f44-49c5-8919-0f60617dc6f2', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2016, 1, 'MCQ', 'Let G be a complete undirected graph on 4 vertices, having 6 edges with weights
being 1,2,3,4,5, and 6. The maximum possible weight that a minimum weight
spanning tree of G can have is __________', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('9d73fbd5-2079-4723-ada5-fd301e6cb407', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2016, 2, 'MCQ', 'G = (V, E) is an undirected simple graph in which each edge has a distinct weight,
and e is a particular edge of  G. Which of the following statements about the
minimum spanning trees (MSTs) of G is/are TRUE?
I. If e is the lightest edge of some cycle in G, then every MST of G includes e.
II. If e is the heaviest edge of some cycle in G, then every MST of G excludes e.', '{"A": "I only.                                     (b)II only.", "C": "Both I and II.            (d)Neither I nor II."}', '"A"', 'Detailed solution pending.'),
  ('42726f15-e1ea-4b0e-be16-194a93d1c302', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2016, 1, 'MCQ', 'Let p,q,r,s represent the following propositions.
p: x ∈ {8,9,10,11,12}
q: x is a composite number
r: x is a perfect square
s: x is a prime number
The integer x≥2 which satisﬁes ¬((p ⇒ q) ∧ (¬r ∨¬s))  is _________.', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('5780f828-eedf-4739-8baf-52582582ee23', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2016, 1, 'MCQ', 'Let an be the number of n-bit strings that do NOT contain two consecutive 1s.
Which one of the following is the recurrence relation for an?
(a)an = a(n-1) + 2a(n-2)
(b)an = a(n-1) + a(n-2)
(c)an = 2a(n-1) + a(n-2)
(d)an = 2a(n-1) + 2a(n-2)
Q132.', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('d2806454-708c-4899-bd2d-de7f4417ce96', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2016, 1, 'MCQ', 'A probability density function on the interval [a,1] is given by 1/x 2 and outside
this interval the value of the function is zero. The value of a is _________..', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('fab7aad7-7ffe-435f-85fa-2a8c8990f7a2', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2016, 1, 'MCQ', 'Two eigenvalues of a 3 × 3 real matrix P are (2 + √ -1) and 3. The determinant of
P is __________', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('e1dd148f-2387-422c-a938-852a222649ea', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2016, 2, 'MCQ', 'Consider the recurrence relation a 1 = 8, an = 6n2 + 2n + an-1. Let a99 = K × 10 4.
The value of K is ___________.', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('f4e69776-4ada-45d5-8b4d-8dc1d582c29b', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2016, 2, 'MCQ', 'The coefficient of x12 in (x3 + x4 + x5 + x6 + ...)3 is _________.', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('8afacc54-df12-48f7-957f-479cf298765a', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2016, 2, 'MCQ', 'Consider the following experiment.
Step1. Flip a fair coin twice.
Step2. If the outcomes are (TAILS, HEADS) then output Y and stop.
Step3. If the outcomes are either (HEADS, HEADS) or (HEADS, TAILS), then
output N and stop.
Step4. If the outcomes are (TAILS, TAILS), then go to Step 1.
The probability that the output of the experiment is Y is (up to two decimal places)
_____', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('6dd3154c-f491-4a57-954f-1d4c3ab7aaa1', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2016, 1, 'MCQ', 'Consider the following expressions:
i. false
ii. QQ
iii. true
iv. P∨Q
v. ¬Q∨P
The number of expressions given above that are logically implied by P∧(P⇒Q) is
___________.', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('67223212-3f48-4e53-b333-608508ce33d7', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2016, 1, 'MCQ', 'The minimum number of colours that is sufficient to vertex -colour any planar', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('ea40399f-26fa-424f-888c-9877a1c69320', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2016, 2, 'MCQ', 'A binary relation  R on N×N is defined as follows:  (a,b)R(c,d) if a≤c or b≤d.
Consider the following propositions:
 P: R is reflexive.
 Q: R is transitive.
Which one of the following statements is TRUE?
A. Both P and Q are true.
B. P is true and Q is false.
C. P is false and Q is true.
D. Both P and Q are false.', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('aab6785c-a239-418c-9401-ba3f56c09c3b', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2016, 2, 'MCQ', 'Which one of the following well -formed formulae in predicate calculus
is NOT valid ?
A. (∀𝑥𝑝(𝑥) ⟹ ∀𝑥𝑞(𝑥)) ⟹ (∃𝑥¬𝑝(𝑥) ∨ ∀𝑥𝑞(𝑥))
B. (∃𝑥𝑝(𝑥) ∨ ∃𝑥𝑞(𝑥)) ⟹ ∃𝑥(𝑝(𝑥) ∨ 𝑞(𝑥))
C. ∃𝑥(𝑝(𝑥) ∧ 𝑞(𝑥)) ⟹ (∃𝑥𝑝(𝑥) ∧ ∃𝑥𝑞(𝑥))
D. ∀𝑥(𝑝(𝑥) ∨ 𝑞(𝑥)) ⟹ (∀𝑥𝑝(𝑥) ∨ ∀𝑥𝑞(𝑥))', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('27ba5859-d6a9-4c7c-8db4-56d98ca8303b', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2016, 2, 'MCQ', 'Consider a set  U of 23 different compounds in a chemistry lab. There is a
subset S of U of 9 compounds, each of which reacts with exactly  3 compounds
of U. Consider the following statements:
I. Each compound in U \ S reacts with an odd number of compounds.
II. At least one compound in U \ S reacts with an odd number of compounds.
III. Each compound in U \ S reacts with an even number of compounds.
Which one of the above statements is  ALWAYS TRUE ?
(a))Only I   (b) Only II   (c) Only III   (d)None', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('ad5f7b3a-dd32-4a21-8e5c-046fd73f3d45', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2016, 2, 'MCQ', 'Let f(x) be a polynomial and g(x) = f''(x) be its derivative. If the degree of (f(x) + f(-
x)) is 10, then the degree of (g(x) - g(-x)) is __________.', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('3591c255-44b6-4e5a-90d3-253bb360ac72', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2016, 2, 'MCQ', 'Consider the systems, each consisting of m linear equations in n variables.
I. If m < n, then all such systems have a solution
II. If m > n, then none of these systems has a solution
III. If m = n, then there exists a system which has a solution
Which one of the following is CORRECT?
(a)I, II and III are true
(b)Only II and III are true
(c)Only III is true
(d)None of them is true', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('3114ad2c-316e-4e6b-9a2f-7f254f161ce1', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2016, 2, 'MCQ', 'Suppose that a shop has an equal number of LED bulbs of two different types.
The probability of an LED bulb lasting more than 100 hours given that it is of
Type 1 is 0.7, and given that it is of Type 2 is 0.4. The probability that an LED
bulb chosen uniformly at random lasts more than 100 hours is _________.', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('bf85516f-6811-413a-9bd0-0955a73bfce2', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2016, 2, 'MCQ', 'Suppose that the eigenvalues of matrix A are 1, 2, 4. The determinant of (A-1)T is
_________', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('41874326-f712-4efd-b294-81c5f6167150', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2016, 2, 'MCQ', 'The value of the expression 1399(mod 17), in the range 0 to 16, is ________.', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('df6df315-9ff6-436c-ad56-ba340a636436', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2017, 1, 'MCQ', 'The statement (¬ p) → (¬ q) is logically equivalent to which of the statements
below?
I. p → q       II. q → p
III. (¬ q) ∨ p      IV. (¬ p) ∨ q', '{"A": "I only       (b) I and IV only", "C": "II only       (d) II and III only"}', '"A"', 'Detailed solution pending.'),
  ('88ed4083-3468-4592-a394-ab4f09bc1399', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2017, 1, 'MCQ', 'Consider the first -order logic sentence
F: ∀ x (∃ y R(x,y)).
Assuming non-empty logical domains, which of the sentences below are implied
by F?
I. ∃y (∃x R(x,y))      II. ∃y (∀x R(x,y))
III. ∀y (∃x R(x,y))      IV. ∼∃x (∀y R(x,y))', '{"A": "IV only       (b) I and IV only", "C": "II only       (d) II and III only"}', '"A"', 'Detailed solution pending.'),
  ('e73b5d17-dcad-496f-acfa-6e7396aa2cf2', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2017, 2, 'MCQ', 'Let G = (V, E) be any connected undirected edge -weighted graph. The weights of
the edges in E are positive any distinct. Consider the following statements:
I. Minimum Spanning Tree of G is always unique.
II. Shortest path between any two vertices of G is always unique.
Which of the above statements is/are necessarily true?', '{"A": "I only", "B": "II only", "C": "both I and II", "D": "neither I and II"}', '"A"', 'Detailed solution pending.'),
  ('49aad6ac-c8a8-4921-8e3d-bfa4d39f9b8d', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2017, 2, 'MCQ', 'Let p, q, and r  be the propositions and the expression (p -> q) -> r be a
contradiction. Then, the expression (r -> p)-> q is', '{"A": "a tautology", "B": "a contradiction", "C": "always TRUE when p is FALSE", "D": "always TRUE when q is TRUE"}', '"A"', 'Detailed solution pending.'),
  ('b5d6268b-510d-40a2-b125-460ad9bfaedb', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2017, 2, 'MCQ', 'The number of integers between 1 and 500 (both inclusive) that are divisible by
3 or 5 or 7 is ______.', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('c8cdc319-ea97-4997-a680-137afbff29d3', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2017, 1, 'MCQ', 'Let c1, cn be scalars not all zero. Such that the following expression holds:∑ 𝑐𝑖𝑎𝑖
𝑛
𝑖=1
where ai is column vectors in R n. Consider the set of linear equations. Ax = B.
where A = [a1.......an] and  𝑏 = ∑ 𝑎𝑖
𝑛
𝑖=1 Then, Set of equations has
(a)a unique solution at x = Jn where Jn denotes a n-dimensional vector of all 1
(b)no solution
(c)infinitely many solutions
(d)finitely many solutions', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('5e6d7bc8-4464-4084-ba1b-74ef95da760c', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2017, 1, 'MCQ', 'Let X be a Gaussian random variable with mean 0 and variance σ2. Let Y =
max(X, 0) where max(a, b) is the maximum of a and b. The median of Y is
__________.
(a)0     (b)1   (c)2    (d)3
Q155.
The value oflim
𝑋→1
𝑥7−2𝑥5+1
𝑥3−3𝑥2+2
(a)is0     (b)is-1  (c)is1
(d)dose not exist', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('e48d144d-09d8-494a-b634-cb3586ec7bf3', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2017, 1, 'MCQ', 'Let p, q and r be prepositions and the expression (p → q) → r be a contradiction.
Then, the expression (r → p) → q is.
(a)a tautology
(b)a contradiction
(c)always TRUE when p is FALSE
(d)always TRUE when q is TRUE', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('19a2951c-4c7d-4ca8-9ea2-d06770e15295', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2017, 1, 'MCQ', 'Let u and v be two vectors in R2 whose Euclidean norms satisfy ||u||=2||v||.
What is the value of α such that w = u + αv bisects the angle between u and v?
(a)2     (b)1/2  (c)1   (d)-1/2', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('d2ab2072-a702-4739-8fec-f87409fe0d83', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2020, 1, 'MCQ', 'Let A be m×n real valued square symmetric matrix of rank 2 with expression
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
CORRECT?', '{"A": "Both (I) and (II)", "B": "(I) only", "C": "(II) only", "D": "Neither (I) nor (II)"}', '"A"', 'Detailed solution pending.'),
  ('dea6f6ae-55c5-4563-9145-a751e84e16cb', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2020, 1, 'MCQ', 'The number of integers between 1 and 500 (both inclusive) that are divisible by
3 or 5 or 7 is _____.
(a)271
(b)272
(c)273
(d)274', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('bc03c377-acda-48fa-9d6f-7593079c2970', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2017, 1, 'MCQ', 'Let p, q, r denote the statement “It is raining”, “It is cold”, and “It is pleasant”,
respectively. Then the statement “It is not raining and it is pleasant, and it is
not pleasant only if it is raining and it is cold” is represented by:', '{"A": "(\u00ac p \u2227 r) \u2227 ((\u00ac r \u2192 (p \u2227 q))", "B": "(\u00ac p \u2227 r) \u2227 ((p \u2227 q) \u2192 \u00ac r)", "C": "(\u00ac p \u2227 r) \u2228 ((p \u2227 q) \u2192 \u00ac r)", "D": "(\u00ac p \u2227 r) \u2228 ((r \u2192 (p \u2227 q))"}', '"A"', 'Detailed solution pending.'),
  ('be2ad0d4-f309-48bb-a15e-cf71b11a4b57', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2017, 2, 'MCQ', 'Consider the set  X={a,b,c,d,e}  under partial ordering
R={(a,a),(a,b),(a,c),(a,d),(a,e),(b,b),(b,c),(b,e),(c,c),(c,e),(d,d),(d,e),(e,e)}
The Hasse diagram of the partial order (X,R) is shown below.
The minimum number of ordered pairs that need to be added to R to make (X,R)
a lattice is ______', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('fe40ea0d-0ce2-4d4d-a336-bfff8a65c6da', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2017, 2, 'MCQ', 'G is undirected graph with n vertices and 25 edges such that each vertex has
degree at least 3. Then the maximum possible value of n is __ ______', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('c0908d37-debe-49c8-8065-8ab4c83f160d', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2017, 1, 'MCQ', 'If f (x) =Rsin(𝜋𝑥/2)+S,f(1/2)=√2 and ∫
1
0 f(x)dx=
2𝑅
𝜋 , then the constants R and S
are , respectively
(a)
2
𝜋and
16
𝜋     (b)
2
𝜋and 0
(c)
4
𝜋and 0    (d)
4
𝜋and
16
𝜋', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('87773ebf-d230-44fc-add2-37932b9a31b1', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2017, 1, 'MCQ', 'For any discrete random variable  X, with probability mass
functionP(X=j)=pj,pj≥0,j∈{0,…,N}, and  ∑ 𝑝𝑗
𝑁
𝑗=0 = 1 define the polynomial
function 𝑔𝑥(𝑧) = ∑ 𝑝𝑗
𝑁
𝑗=0 𝑧𝑖For a certain discrete random variable  Y, there exists a
scalar β∈[0,1] such that 𝑔𝑦(𝑧)=(1−β+βz)N. The expectation of Y is
of NN and ββ alone
Q165.', '{"A": "N\u03b2(1\u2212\u03b2)N\u03b2(1\u2212\u03b2)    (b) N\u03b2(1\u2212\u03b2)N\u03b2(1\u2212\u03b2)", "C": "N(1\u2212\u03b2)N(1\u2212\u03b2)     (d) Not expressible in terms"}', '"A"', 'Detailed solution pending.'),
  ('1d6f5efd-132e-4530-970e-19c0d44f2b2d', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2017, 1, 'MCQ', 'P and Q are considering to apply for job. The probability that p applies for job is
1/4. The probability that P applies for job given that Q applies for the job 1/2 and
The probability that Q applies for job given that P applies for the job 1/3.The
(a)
4
5    (b)
5
6    (c)
7
8    (d)
11
12', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('9599a75c-f880-4a54-8787-79e4c1e482d1', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2017, 1, 'MCQ', 'If a random variable X has a Poisson distribution with mean 5, then the
expectation E[(X + 2)2] equals _________.
Q168.', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('e8d3b404-273b-45d5-ae5f-dacb7b230035', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2020, 1, 'MCQ', 'If the characteristic polynomial of a 3 × 3 matrix M over R (the set of real numbers)
is λ3 - 4λ2 + aλ + 30, a ∈ℝ, and one eigenvalue of M is 2, then the largest among
the absolute values of the eigenvalues of M is ________.', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('f5ffaffd-963e-427b-9668-47c8956ce9a2', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2018, 1, 'MCQ', 'The chromatic number of the following graph is _______.', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('459c4248-45e7-442a-b3ca-f41239ab2770', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2018, 1, 'MCQ', 'Let G be a finite group on 84 elements. The size of a largest possible proper', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('6c74b9ea-77f2-4d09-b711-6c75f053f72c', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2018, 2, 'MCQ', 'L et G be a simple undirected graph. Let TD be a depth first search tree of G.
Let TB be a breadth first search tree of G. Consider the following statements.
(I) No edge of G is a cross edge with respect to TD. (A cross edge in G is between
two
Nodes neither of which is an ancestor of the other in TD.)
(II) For every edge (u, v) of G, if u is at depth i and v is at depth j in TB, then
|𝑖−𝑗| = 1.
Which of the statements above must necessarily be true?', '{"A": "I only      (b) II only", "C": "Both I and II     (d) Neither I nor II"}', '"A"', 'Detailed solution pending.'),
  ('03c0f302-2006-436d-ba6d-c40da7f906a7', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2018, 2, 'MCQ', 'Consider the first-order logic sentence
𝜑 ≡ ∃𝑠∃𝑡∃𝑢∀𝑣∀𝑤∀𝑥∀𝑦 𝜓(𝑠, 𝑡, 𝑢, 𝑣, 𝑤, 𝑥, 𝑦)
whereψ(s,t,u,v,w,x,y) is a quantifier-free first-order logic formula using only
predicate symbols, and possibly equality, but no function symbols. Suppose φ
has a model with a universe containing 7 elements.
Which one of the following statements is necessarily true?
3.', '{"A": "There exists at least one model of \u03c6 with universe of size less than or equal to", "B": "There exists no model of \u03c6 with universe of size less than or equal to 3.", "C": "There exists no model of \u03c6 with universe of size greater than 7.", "D": "Every model of \u03c6 has a universe of size equal to 7"}', '"A"', 'Detailed solution pending.'),
  ('4bce91b1-42ee-406c-80bd-e631eb345268', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2018, 2, 'MCQ', 'Let G be a graph with 100! Vertices, with each vertex labelled by a distinct
permutation of the numbers 1, 2, … , 100. There is an edge between vertices 𝑢
and 𝑣 if and only if the label of 𝑢 can be obtained by swapping two adjacent
numbers in the label of 𝑣. Let 𝑦 denote the degree of a vertex in G, and 𝑧 denote
the number of connected components in G. Then, 𝑦 + 10𝑧 = _____.', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('375cf3c6-4544-4d52-92df-ede79155971a', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2018, 1, 'MCQ', 'Consider the following undirected graph G:
Choose a value for x that will maximize the number of minimum weight
spanning trees (MWSTs) of G. The number of MWSTs of G for this value of x is', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('10e8a235-58c6-426f-90e3-27a987865032', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2020, 1, 'MCQ', 'Consider a matrix A = uv T where u =(1
2), v =(1
2). Note that v T denotes the
transpose of V. The largest eigenvalue of A is __________________
[Mark: 1][GATE: 2018]', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('3d9126b0-41f4-47f1-b336-b71ed80751c0', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2018, 1, 'MCQ', 'Two people, P and Q, decide to independently roll two identical dice, each with
6 faces, numbered 1 to 6. The person with the lower number wins. In case of a
tie, they roll the dice repeatedly until there is no tie. Define a trial as a throw
of the dice by P and Q. Assume that all 6 numbers on each dice are equi -
probable and that all trials are independent. The probability (rounded to 3
decimal places) that one of them wins on the third trial is __________', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('aa77b0a4-43d4-4ef5-9eea-d035b5b84dca', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2018, 1, 'MCQ', 'Which one of the following is a closed form expression for the generating
function of the sequence {a n}, where an = 2n+3 for all n = 0, 1, 2, …?
(a)3/(1-x)2   (b)3x/(1-x)2 (c)2-x/(1-x)2  (d)3-x/(1-x)2', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('005de5be-3362-435c-9ba3-65e75737918a', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2020, 1, 'MCQ', 'The value of ∫ 𝑥 cos (𝑥2)
𝜋/4
0  dx correct to three decimal places is
(Assuming that 𝜋 =3.14)
(a)0.289   (b)0.298  (c)0.28 (d)0.29         [GATE: 2018]', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('099ee624-c66b-4ac7-9511-240001c2aaa8', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2018, 1, 'MCQ', 'Consider Guwahati (G) and Delhi (D) whose temperatures can be classified as
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
(correct to two decimal places) that Guwahati has high temperature given that', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('3224ad89-7fa8-459d-8272-4fb979325905', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2018, 1, 'MCQ', 'Let N be the set of natural numbers. Consider the following sets,
P: Set of Rational numbers (positive and negative)
Q: Set of functions from {0, 1} to N
R: Set of functions from N to {0, 1}
S: Set of finite subsets of N
Which of the above sets are countable?
(a)Q and S only      (b)P and S only
(c)P and R only                                        (d)P, Q and S only', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('5689bad9-a88e-45ce-8233-d7e1ff71bfc8', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2018, 1, 'MCQ', 'Consider a matrix P whose only eigenvectors are the multiples of [1
4].
Consider the following statements.
(I) P does not have an inverse
(II) P has a repeated eigenvalue
(III) P cannot be diagonalized
Which one of the following options is correct?
(a)Only I and III are necessarily true
(b)Only II is necessarily true
(c)Only I and II are necessarily true', '{"D": "Only II and III are necessarily true"}', '"A"', 'Detailed solution pending.'),
  ('35018ab8-8dcf-410f-a72b-09605bef67af', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2019, 1, 'MCQ', 'Let U = {1,2,...,n}. Let A = {(x,X)|x ∈ X, X ⊆ U}. Consider the following two
statements on |A|.
(I)  |A|=n. 2 n-1
(II) |A| =∑ 𝑘. (𝑛
𝑘)𝑛
𝑘=1
Which of the above statements is/are TRUE?', '{"A": "Only I                                           (b) Only II", "C": "Both I and II                                 (d) Neither I nor II"}', '"A"', 'Detailed solution pending.'),
  ('6841a6b0-6f7a-4235-90fd-a39d51b7fdb5', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2019, 2, 'MCQ', 'Let G be an arbitrary group. Consider the following relations on G:
R1: ∀a b∈ G, aR1 b if and only if ∃g ∈ G such that a = g–1bg
R2: ∀a b∈ G, aR1 b if and only if a = b–1
Which of the above is/are equivalence relation/relations?
Q185.
Let G be an undirected complete graph, on n vertices, where n > 2. Then, the
number of different Hamiltonian cycles in G is equal to', '{"A": "n !    (b) (n \u2013 1)!   (c) 1 (d)   ( 1)(n-1)!/2", "C": "R2 only      (d) Neither R1 nor R2"}', '"A"', 'Detailed solution pending.'),
  ('ff3e87cf-49ee-4ea1-8e86-ae68ffe204d6', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2019, 2, 'MCQ', 'Consider the first order predicate formula ϕ  :
∀x[(∀z z⏐x ⇒ ((z = x) ∨ (z = 1))) ⇒∃w (w > x) ∧ (∀z z⏐w ⇒ ((w = z) ∨ (z = 1)))]
Here ‘a ⏐b’ denotes that ‘a divides b ’, where a and b are integers. Consider the
following sets:
S1 : {1, 2, 3, ..., 100}
S2: Set of all positive integers
S3: Set of all integers
Which of the above sets satisfy ϕ?', '{"A": "S1and S3       (b) S2and S3", "C": "S2and S3              (d) S1, S2 and S3"}', '"A"', 'Detailed solution pending.'),
  ('7b28c7a7-df1c-417b-b15f-95f98a01bbcc', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2019, 2, 'MCQ', 'Let G be any connected, weighted, undirected graph:
I. G has a unique minimum spanning tree, if no two edges of G have the same
weight.
II. G has a unique minimum spanning tree, if for every cut G, there is a unique
minimum
weight edge crossing the cut.
Which of the above two statements is/are TRUE?', '{"A": "Neither I nor II    (b) I only", "C": "II only      (d) Both I and II"}', '"A"', 'Detailed solution pending.'),
  ('56e017c6-7507-4bba-8152-9b58fb131dbd', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2019, 1, 'MCQ', 'Compute lim
𝑥→3
𝑥4−81
2𝑥2−5𝑥−3
(a)1      (b)Limit does not exist', '{"C": "53/12", "D": "108/7"}', '"A"', 'Detailed solution pending.'),
  ('b00de434-821b-4852-a329-61e602f44d17', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2019, 1, 'MCQ', 'Let X be a square matrix. Consider the following two statements on X
I. X is invertible.
II. Determinant of X is non-zero.
Which one of the following is TRUE?
(a)I implies II; II does not imply I.
(b)II implies I; I does not imply II.
(c)I and II are equivalent statements.', '{"D": "I does not imply II; II does not imply I."}', '"A"', 'Detailed solution pending.'),
  ('97a79a55-9907-4a15-a613-616bec449dcc', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2019, 1, 'MCQ', 'Suppose Y is distributed uniformly in the open interval (1, 6). The probability
that the polynomial 3x2 + 6xY + 3Y + 6 has only real roots is (rounded off to 1
decimal place) _________.
(a)0.3    (b)0.9   (c)0.1    (d)0.8', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('b122269b-2a49-4788-bd8a-a131c88d80ea', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2019, 1, 'MCQ', 'The absolute value of the product of Eigenvalues of R is ______.
𝑅 = [
1 2 4 8
1 3 9 27
1 4 16 64
1 5 25 125
]
(a)12    (b)17   (c)10    (d)8', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('6f7c43cf-a140-4b82-9f3e-ab38108e9525', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2020, 1, 'MCQ', 'Let G be a group of 35 elements. Then the largest possible size of a subgroup of', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('f0c27069-f635-4403-85d3-fa6d5728effa', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2020, 1, 'MCQ', 'Let R be the set of all binary relations on the set {1,2,3}. Suppose a relation is
chosen from R at random. The probability that the chosen relation is reflexive', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('dd6e60aa-c8c1-4e6b-a23f-56282476d750', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2020, 1, 'MCQ', 'Consider the functions
I. I. 𝑒−𝑥
II. II. 𝑥2 − 𝑠𝑖𝑛 𝑥
III. III√𝑥3 + 1
Which of the above functions is/are increasing everywhere in [0, 1]?', '{"A": "II and III only  (b) III only  (c) II only  (d) I and III only"}', '"A"', 'Detailed solution pending.'),
  ('dd1eda26-2d4e-46dd-814c-9aa932953923', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2020, 2, 'MCQ', 'For n > 2, let a {0, 1} n be a non-zero vector. Suppose that x is chosen uniformly
at random from {0, 1} n. Then the probability that ∑ 𝑎𝑖𝑋𝑖
𝑛
𝑖=1  is an odd number is', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('817b5411-d14a-44e7-981c-9fa89c546e9e', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2020, 2, 'MCQ', 'Graph G is obtained by adding vertex s to K3,4 and making s adjacent to every
vertex of K3,4. The minimum number of colours required to edge-colour G is
_____.', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('6f8d92b7-8896-416d-bc45-312554fc9d5d', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2020, 1, 'MCQ', 'Which one of the following predicate formulae is NOT logically valid? Note that
W is a predicate formula without any free occurrence of x.', '{"A": "\u2200x(p(x)\u2228W)\u2261\u2200x(px)\u2228W    (b) \u2203x(p(x)\u2227W)\u2261\u2203xp(x)\u2227W", "C": "\u2200x(p(x)\u2192W)\u2261\u2200xp(x)\u2192W     (d) \u2203x(p(x)\u2192W)\u2261\u2200xp(x)\u2192W"}', '"A"', 'Detailed solution pending.'),
  ('64435f92-534c-4a06-93da-fbef3b41ab86', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2020, 1, 'MCQ', 'The number of permutations of the characters in LILAC so that no character
appears in its original position, if the two L’s are indistinguishable, is _______.', '{"A": "Option A", "B": "Option B", "C": "Option C", "D": "Option D"}', '"A"', 'Detailed solution pending.'),
  ('b9a011e6-15b7-4cb3-9048-bb46139eb258', (SELECT id FROM subjects WHERE name ILIKE '%Discrete Mathematics%' LIMIT 1), 2020, 1, 'MCQ', 'Let A and B be two n×n matrices over real numbers. Let rank(M) and det(M)
denote the rank and determinant of a matrix M, respectively. Consider the
following statements,
I. rank(AB) = rank(A) rank(B)
II. det(AB) = det(A) det(B)
III. rank(A + B) ≤ rank(A) + rank(B)
IV. det(A + B) ≤ det(A) + det(B)
Which of the above statements are TRUE?
Discrete PYQs  Answer key:', '{"A": "I and II only", "B": "I and IV only", "C": "II and III only", "D": "III and IV only"}', '"A"', 'Detailed solution pending.')
ON CONFLICT (id) DO NOTHING;
