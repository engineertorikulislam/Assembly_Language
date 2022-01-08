
org 100h

include 'emu8086.inc'
 
org 100h

        print "Input Marks :"  
        
        call scan_num ; 
        
        printn ''
        
        
        
        cmp cx,80
        jge gradeA+
        
        cmp cx,75
        jge gradeA
        
        cmp cx,70
        jge grdA-
        
        cmp cx,65
        jge gradeB+
        
        cmp cx,60
        jge gradeB
        
        cmp cx,55
        jge grdB- 
        
        cmp cx,50
        jge gradeC+ 
        
        cmp cx,45
        jge gradeC 
        
        cmp cx,40
        jge gradeD 
        
        cmp cx,40
        jl gradeF
        
        gradeA+: 
        printn 'Grade: A+' 
        
        jmp stop
        
        gradeA: 
        printn 'Grade: A'
        
        jmp stop
        
        grdA-: 
        printn 'Grade: A-' 
         
        jmp stop
        
        gradeB+: 
        printn 'Grade: B+'
        
        jmp stop
        
        gradeB: 
        printn 'Grade: B'
        
        jmp stop
        
        grdB-: 
        printn 'Grade: B-'  
        
        jmp stop
        
        gradeC+: 
        printn 'Grade: C+'
        
        jmp stop
        
        gradeC: 
        printn 'Grade: C'
        
        jmp stop 
        
        gradeD: 
        printn 'Grade: D'
        
        jmp stop 
        
        
        gradeF: 
        printn 'Grade: F (Fail)'
        
        jmp stop 
        
        stop:
        
        ret 

define_scan_num

define_print_num
define_print_num_uns
end







