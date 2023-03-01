#!/usr/bin/env runhaskell

--function f
f True = g True
f False = g False

--function g
g True = False
g False = True

--main function
main = do
--Preamble
  putStrLn ""
  putStrLn "-------------------------------------------------------"
  putStrLn "-- Function f(x) predicts what function g(x) will do --"
  putStrLn "-- given f(g(x))and then g(x) does the opposite.     --"
  putStrLn "-------------------------------------------------------"
  putStrLn ""
--First input
  putStrLn "The input x = True"
  putStrLn ("f(g(True)) = " ++ (show (f (g True))))
  putStrLn ("g(True) = " ++ (show (g True)))
  putStrLn ""
--Second input
  putStrLn "The input x = False"
  putStrLn ("f(g(False)) = " ++ (show (f (g False))))
  putStrLn ("g(False) = " ++ (show (g False)))
  putStrLn ""
