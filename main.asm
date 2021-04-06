extern printf
extern scanf
extern exit

global main

section .text

main:
  ;printf("Enter your name(no more than 50 characters): ");
  mov rdi, prompt1
  mov rax, 0
  push rbx
  call printf
  pop rbx
  ;scanf("%s", &name);
  mov rdi, inputFormat1
  mov rsi, name
  mov rax, 0
  push rcx
  call scanf
  pop rcx
  
  ;printf("Enter your age");
  mov rdi, prompt2
  mov rax, 0
  push rdx
  call printf
  pop rdx
  ;scanf("%d", &age);
  mov rdi, inputFormat2
  mov rsi, age
  mov rax, 0
  push rcx
  call scanf
  pop rcx

  mov rax, [age]
  mov rcx, [ageDog]
  mul rcx

  mov rdi, resultFormat1
  mov rsi, name
  mov rdx, rax
  mov rax, 0
  push rbx
  call printf
  pop rbx

  mov rax, [age]
  mov rcx, [age2100]
  add rax, rcx

  mov rdi, resultFormat2
  mov rsi, name
  mov rdx, rax
  mov rax, 0
  push rbx
  call printf
  pop rbx

  ; exit(0)
  mov rax, 0
  call exit

section .data
  ;int age = 0;
  age dq 0
  ;string name = "";
  name db "", 0
  prompt1 db "What is your name? ", 0
  prompt2 db "How old are you? ", 0
 
  inputFormat1 db "%s", 0
  inputFormat2 db "%d", 0
  resultFormat1 db "%s is %d dog years old.", 0ah, 0dh, 0
  resultFormat2 db "%s will be %d years old in the year 2100 ", 0ah, 0dh, 0
  
  
  

  ageDog dq 7
  age2100 dq 79

  