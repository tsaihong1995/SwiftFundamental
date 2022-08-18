import Foundation
import PlaygroundSupport

PlaygroundPage.current.needsIndefiniteExecution = true

// Difference between global concurrent queue and main queue.

DispatchQueue.main.async {
    print(Thread.isMainThread ? "Execution on Main Thread" : "Execution on other thread")
}

DispatchQueue.global().async {
    print(Thread.isMainThread ? "Execution on Main Thread" : "Execution on Golbal concurrent queue")
}

/*
  Output:
 1. Execution on Golbal concurrent queue
 2. Execution on Main Thread
 
 Note:
 1. Main Queue:
 - System Created
 - Serial
 - Uses Main Thread
 - UI related operations must be performed on Main Queue
 
 2. Global Concurrent Queues
 - System Created
 - Concurrent
 - Do not use Main Thread
 */
