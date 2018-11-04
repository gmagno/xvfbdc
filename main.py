#!/usr/bin/env python3

from tkinter import Tk

def main():
    print('Running main.py...')
    window = Tk()
    window.title('X Virtual Frame Buffer Docker')
    window.after(3000, lambda: window.destroy())
    window.mainloop()
    print('Terminated!')

if __name__ == '__main__':
    main()
