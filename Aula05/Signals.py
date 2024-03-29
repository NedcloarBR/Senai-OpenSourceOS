import signal
import os
import time
import sys

def readConfiguration(signalNumber, frame):
  print('(SIGHUP) reading configuration')
  return

def terminateProcess(signalNumber, frame):
  print('(SIGTERM) terminating the process')
  sys.exit()

def receiveSignal(signalNumber, frame):
  print('Received Signal: ', signalNumber)
  return

if __name__ == '__main__':
  # registrar as funções que irão tratar cada sinal recebido
  signal.signal(signal.SIGHUP, readConfiguration)
  signal.signal(signal.SIGINT, receiveSignal)
  signal.signal(signal.SIGQUIT, receiveSignal)
  signal.signal(signal.SIGILL, receiveSignal)
  signal.signal(signal.SIGTRAP, receiveSignal)
  signal.signal(signal.SIGABRT, receiveSignal)
  signal.signal(signal.SIGBUS, receiveSignal)
  signal.signal(signal.SIGFPE, receiveSignal)
  # signal.signal(signal.SIGKILL, receiveSignal)
  signal.signal(signal.SIGUSR1, receiveSignal)
  signal.signal(signal.SIGSEGV, receiveSignal)
  signal.signal(signal.SIGUSR2, receiveSignal)
  signal.signal(signal.SIGPIPE, receiveSignal)
  signal.signal(signal.SIGALRM, receiveSignal)
  signal.signal(signal.SIGTERM, terminateProcess)

  # Imprime o PID desse processo
  print('My PID is:', os.getpid())

  # Loop que não faz nada :)
  while True:
    print('Waiting...')
    time.sleep(3)