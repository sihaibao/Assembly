; 130 - 使用adc指令完成24位加法
; =================================================================
; adc --> add carry (Cf)
; 
; adc是带进位加法指令，他利用了CF位上记录的进位值
; 
; 比如： adc ax, bx -->> (ax)=(ax)+(bx)+CF
; 
; 
; 
; =================================================================
assume cs:code, ds:data, ss:stack
; =================================================================
data segment
		dd	1000000
data ends
; =================================================================
stack segment stack
		db	128 dup (0)
stack ends
; =================================================================
code segment
start:		mov ax, stack
		mov ss, ax
		mov sp, 128
		
		; 计算 1E F000H + 20 1000H
		; 结果放在ax（高16位），bx（低16位）中

		mov ax, 1EH
		mov bx, 0F000H
		add bx, 1000H
		adc ax, 20H


	
	
code ends

end start
