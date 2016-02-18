; ModuleID = 'led.bc'
target datalayout = "e-p:16:8:8-i8:8:8-i16:8:8-i32:8:8-i64:8:8-f32:8:8-f64:8:8-n8"
target triple = "avr"

; Function Attrs: noreturn nounwind optsize
define i16 @main() #0 {
entry:
  %0 = load volatile i8, i8* inttoptr (i16 36 to i8*), align 4, !tbaa !1
  %or = or i8 %0, 32
  store volatile i8 %or, i8* inttoptr (i16 36 to i8*), align 4, !tbaa !1
  br label %while.body

while.body:                                       ; preds = %entry, %while.body
  %1 = load volatile i8, i8* inttoptr (i16 37 to i8*), align 1, !tbaa !1
  %or3 = or i8 %1, 32
  store volatile i8 %or3, i8* inttoptr (i16 37 to i8*), align 1, !tbaa !1
  tail call void @__builtin_avr_delay_cycles(i32 16000000) #2
  %2 = load volatile i8, i8* inttoptr (i16 37 to i8*), align 1, !tbaa !1
  %and = and i8 %2, -33
  store volatile i8 %and, i8* inttoptr (i16 37 to i8*), align 1, !tbaa !1
  tail call void @__builtin_avr_delay_cycles(i32 16000000) #2
  br label %while.body
}

; Function Attrs: optsize
declare void @__builtin_avr_delay_cycles(i32) #1

attributes #0 = { noreturn nounwind optsize "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="atmega328p" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="atmega328p" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.0 (/tmp/repo/clang-5lim0 55d2db19d360a92b3b87444a2ea5e07d1624a2bc) (/tmp/repo/llvm-5lim0 e2eff49fe4c8907952eca5fffe983b5478ddd39f)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"omnipotent char", !3, i64 0}
!3 = !{!"Simple C/C++ TBAA"}
