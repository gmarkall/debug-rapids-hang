; ModuleID = "run_udf_test.<locals>._udf_string_kernel$1"
target triple = "nvptx64-nvidia-cuda"
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-i128:128:128-f32:32:32-f64:64:64-v16:16:16-v32:32:32-v64:64:64-v128:128:128-n16:32:64"

@"_ZN08NumbaEnv16test_string_udfs12run_udf_test12_3clocals_3e18_udf_string_kernelB2v1B102cw51cXTLSUwv1sDUaKthqaNgoKmjgOR3W3CwAkMQkR5sQekNGN5oUY8kDEllSAKoKQcmgeQT22p1WPiqWylA40kdKAnkGddqAgA_3dE14string_view_2a5ArrayIbLi1E1C7mutable7alignedE" = common global i8* null
define void @"_ZN16test_string_udfs12run_udf_test12_3clocals_3e18_udf_string_kernelB2v1B102cw51cXTLSUwv1sDUaKthqaNgoKmjgOR3W3CwAkMQkR5sQekNGN5oUY8kDEllSAKoKQcmgeQT22p1WPiqWylA40kdKAnkGddqAgA_3dE14string_view_2a5ArrayIbLi1E1C7mutable7alignedE"({i8*, i32, i32}* %"arg.input_strings", i8* %"arg.output_col.0", i8* %"arg.output_col.1", i64 %"arg.output_col.2", i64 %"arg.output_col.3", i8* %"arg.output_col.4", i64 %"arg.output_col.5.0", i64 %"arg.output_col.6.0") alwaysinline
{
entry:
  %"inserted.meminfo" = insertvalue {i8*, i8*, i64, i64, i8*, [1 x i64], [1 x i64]} undef, i8* %"arg.output_col.0", 0
  %"inserted.parent" = insertvalue {i8*, i8*, i64, i64, i8*, [1 x i64], [1 x i64]} %"inserted.meminfo", i8* %"arg.output_col.1", 1
  %"inserted.nitems" = insertvalue {i8*, i8*, i64, i64, i8*, [1 x i64], [1 x i64]} %"inserted.parent", i64 %"arg.output_col.2", 2
  %"inserted.itemsize" = insertvalue {i8*, i8*, i64, i64, i8*, [1 x i64], [1 x i64]} %"inserted.nitems", i64 %"arg.output_col.3", 3
  %"inserted.data" = insertvalue {i8*, i8*, i64, i64, i8*, [1 x i64], [1 x i64]} %"inserted.itemsize", i8* %"arg.output_col.4", 4
  %".11" = insertvalue [1 x i64] undef, i64 %"arg.output_col.5.0", 0
  %"inserted.shape" = insertvalue {i8*, i8*, i64, i64, i8*, [1 x i64], [1 x i64]} %"inserted.data", [1 x i64] %".11", 5
  %".12" = insertvalue [1 x i64] undef, i64 %"arg.output_col.6.0", 0
  %"inserted.strides" = insertvalue {i8*, i8*, i64, i64, i8*, [1 x i64], [1 x i64]} %"inserted.shape", [1 x i64] %".12", 6
  %"input_strings" = alloca {i8*, i32, i32}*
  store {i8*, i32, i32}* null, {i8*, i32, i32}** %"input_strings"
  %"output_col" = alloca {i8*, i8*, i64, i64, i8*, [1 x i64], [1 x i64]}
  store {i8*, i8*, i64, i64, i8*, [1 x i64], [1 x i64]} zeroinitializer, {i8*, i8*, i64, i64, i8*, [1 x i64], [1 x i64]}* %"output_col"
  %"id" = alloca i64
  store i64 0, i64* %"id"
  %".41" = alloca i8*
  store i8* null, i8** %".41"
  %".56" = alloca {i8*, i32, i32}
  store {i8*, i32, i32} zeroinitializer, {i8*, i32, i32}* %".56"
  %".61" = alloca i8
  store i8 0, i8* %".61"
  %".73" = alloca i1
  store i1 0, i1* %".73"
  %".86" = alloca {i8*, i8*, i64, i64, i8*, [1 x i64], [1 x i64]}
  store {i8*, i8*, i64, i64, i8*, [1 x i64], [1 x i64]} zeroinitializer, {i8*, i8*, i64, i64, i8*, [1 x i64], [1 x i64]}* %".86"
  br label %"B0"
B0:
  store {i8*, i32, i32}* %"arg.input_strings", {i8*, i32, i32}** %"input_strings"
  store {i8*, i8*, i64, i64, i8*, [1 x i64], [1 x i64]} %"inserted.strides", {i8*, i8*, i64, i64, i8*, [1 x i64], [1 x i64]}* %"output_col"
  %".17" = trunc i64 1 to i32
  %".18" = call i32 @"llvm.nvvm.read.ptx.sreg.tid.x"()
  %".19" = sext i32 %".18" to i64
  %".20" = call i32 @"llvm.nvvm.read.ptx.sreg.ntid.x"()
  %".21" = sext i32 %".20" to i64
  %".22" = call i32 @"llvm.nvvm.read.ptx.sreg.ctaid.x"()
  %".23" = sext i32 %".22" to i64
  %".24" = mul i64 %".21", %".23"
  %".25" = add i64 %".24", %".19"
  %".27" = load i64, i64* %"id"
  store i64 %".25", i64* %"id"
  %".29" = load i64, i64* %"id"
  %".30" = icmp slt i64 %".29", 25
  br i1 %".30", label %"B62", label %"B118"
B62:
  %".32" = load {i8*, i32, i32}*, {i8*, i32, i32}** %"input_strings"
  %".33" = load i64, i64* %"id"
  %".34" = getelementptr {i8*, i32, i32}, {i8*, i32, i32}* %".32", i64 %".33"
  %".35" = load {i8*, i32, i32}, {i8*, i32, i32}* %".34"
  %".36" = load {i8*, i32, i32}*, {i8*, i32, i32}** %"input_strings"
  store {i8*, i32, i32}* null, {i8*, i32, i32}** %"input_strings"
  %".38" = alloca {i8*, i32, i32}
  %".39" = alloca {i8*, i32, i32}
  store {i8*, i32, i32} %".35", {i8*, i32, i32}* %".38"
  store i8* null, i8** %".41"
  %".44" = call i32 @"_ZN4cudf4core3udf16strings_lowering39call_create_udf_string_from_string_viewB2v5B40c8tJTC_2fWQA93W1AaAIYBPIqRBFCjDSyhCQA_3dE14string_view_2a13udf_string_2a"(i8** %".41", {i8*, i32, i32}* %".38", {i8*, i32, i32}* %".39")
  %".45" = icmp eq i32 %".44", 0
  %".46" = icmp eq i32 %".44", -2
  %".47" = or i1 %".45", %".46"
  %".48" = xor i1 %".47", -1
  %".49" = icmp eq i32 %".44", -1
  %".50" = icmp eq i32 %".44", -3
  %".51" = icmp sge i32 %".44", 1
  %".52" = load i8*, i8** %".41"
  br i1 %".48", label %"B62.if", label %"B62.endif", !prof !1
B118:
  %".122" = load {i8*, i8*, i64, i64, i8*, [1 x i64], [1 x i64]}, {i8*, i8*, i64, i64, i8*, [1 x i64], [1 x i64]}* %"output_col"
  store {i8*, i8*, i64, i64, i8*, [1 x i64], [1 x i64]} zeroinitializer, {i8*, i8*, i64, i64, i8*, [1 x i64], [1 x i64]}* %"output_col"
  %".124" = load {i8*, i32, i32}*, {i8*, i32, i32}** %"input_strings"
  store {i8*, i32, i32}* null, {i8*, i32, i32}** %"input_strings"
  %".126" = load i64, i64* %"id"
  store i64 0, i64* %"id"
  ret void
B62.if:
  ret void
B62.endif:
  %".55" = load {i8*, i32, i32}, {i8*, i32, i32}* %".39"
  store {i8*, i32, i32} zeroinitializer, {i8*, i32, i32}* %".56"
  store {i8*, i32, i32} %".55", {i8*, i32, i32}* %".56"
  %".60" = load {i8*, i32, i32}, {i8*, i32, i32}* %".56"
  store i8 0, i8* %".61"
  %"extracted.m_data" = extractvalue {i8*, i32, i32} %".60", 0
  %"extracted.m_bytes" = extractvalue {i8*, i32, i32} %".60", 1
  %"extracted.m_size" = extractvalue {i8*, i32, i32} %".60", 2
  %".64" = call i32 @"_ZN16test_string_udfs18test_string_udf_eq12_3clocals_3e4funcB2v2B100cw51cXTLSUwv1sDUaKthqaNgoKmjgOR3W3CwAkMQkR5sQekNGN5oUY8kDEllSAKoKQcmgeQT22p1IEvdSsFYR0EdFtJALtjNtZoAE10udf_string"(i8* %".61", i8* %"extracted.m_data", i32 %"extracted.m_bytes", i32 %"extracted.m_size")
  %".65" = icmp eq i32 %".64", 0
  %".66" = icmp eq i32 %".64", -2
  %".67" = or i1 %".65", %".66"
  %".68" = xor i1 %".67", -1
  %".69" = icmp eq i32 %".64", -1
  %".70" = icmp eq i32 %".64", -3
  %".71" = icmp sge i32 %".64", 1
  %".72" = load i8, i8* %".61"
  %".75" = icmp eq i8 %".72", 0
  br i1 %".75", label %"B62.endif.if", label %"B62.endif.else"
B62.endif.if:
  store i1 0, i1* %".73"
  br label %"B62.endif.endif"
B62.endif.else:
  store i1 1, i1* %".73"
  br label %"B62.endif.endif"
B62.endif.endif:
  %".81" = load i1, i1* %".73"
  br i1 %".68", label %"B62.endif.endif.if", label %"B62.endif.endif.endif", !prof !1
B62.endif.endif.if:
  ret void
B62.endif.endif.endif:
  %".84" = load {i8*, i8*, i64, i64, i8*, [1 x i64], [1 x i64]}, {i8*, i8*, i64, i64, i8*, [1 x i64], [1 x i64]}* %"output_col"
  %".85" = load i64, i64* %"id"
  store {i8*, i8*, i64, i64, i8*, [1 x i64], [1 x i64]} zeroinitializer, {i8*, i8*, i64, i64, i8*, [1 x i64], [1 x i64]}* %".86"
  store {i8*, i8*, i64, i64, i8*, [1 x i64], [1 x i64]} %".84", {i8*, i8*, i64, i64, i8*, [1 x i64], [1 x i64]}* %".86"
  %".90" = getelementptr inbounds {i8*, i8*, i64, i64, i8*, [1 x i64], [1 x i64]}, {i8*, i8*, i64, i64, i8*, [1 x i64], [1 x i64]}* %".86", i32 0, i32 5
  %".91" = getelementptr inbounds [1 x i64], [1 x i64]* %".90", i32 0, i32 0
  %".92" = load i64, i64* %".91", !range !2
  %".93" = insertvalue [1 x i64] undef, i64 %".92", 0
  %".94" = extractvalue [1 x i64] %".93", 0
  %".95" = getelementptr inbounds {i8*, i8*, i64, i64, i8*, [1 x i64], [1 x i64]}, {i8*, i8*, i64, i64, i8*, [1 x i64], [1 x i64]}* %".86", i32 0, i32 6
  %".96" = load [1 x i64], [1 x i64]* %".95"
  %".97" = extractvalue [1 x i64] %".96", 0
  %".98" = icmp slt i64 %".85", 0
  %".99" = add i64 %".85", %".94"
  %".100" = select  i1 %".98", i64 %".99", i64 %".85"
  %".101" = getelementptr inbounds {i8*, i8*, i64, i64, i8*, [1 x i64], [1 x i64]}, {i8*, i8*, i64, i64, i8*, [1 x i64], [1 x i64]}* %".86", i32 0, i32 5
  %".102" = getelementptr inbounds [1 x i64], [1 x i64]* %".101", i32 0, i32 0
  %".103" = load i64, i64* %".102", !range !2
  %".104" = insertvalue [1 x i64] undef, i64 %".103", 0
  %".105" = extractvalue [1 x i64] %".104", 0
  %".106" = getelementptr inbounds {i8*, i8*, i64, i64, i8*, [1 x i64], [1 x i64]}, {i8*, i8*, i64, i64, i8*, [1 x i64], [1 x i64]}* %".86", i32 0, i32 6
  %".107" = load [1 x i64], [1 x i64]* %".106"
  %".108" = extractvalue [1 x i64] %".107", 0
  %".109" = getelementptr inbounds {i8*, i8*, i64, i64, i8*, [1 x i64], [1 x i64]}, {i8*, i8*, i64, i64, i8*, [1 x i64], [1 x i64]}* %".86", i32 0, i32 4
  %".110" = load i8*, i8** %".109"
  %".111" = mul i64 %".100", 1
  %".112" = add i64 0, %".111"
  %".113" = getelementptr i8, i8* %".110", i64 %".112"
  %".114" = zext i1 %".81" to i8
  store i8 %".114", i8* %".113"
  %".116" = load {i8*, i8*, i64, i64, i8*, [1 x i64], [1 x i64]}, {i8*, i8*, i64, i64, i8*, [1 x i64], [1 x i64]}* %"output_col"
  store {i8*, i8*, i64, i64, i8*, [1 x i64], [1 x i64]} zeroinitializer, {i8*, i8*, i64, i64, i8*, [1 x i64], [1 x i64]}* %"output_col"
  %".118" = load i64, i64* %"id"
  store i64 0, i64* %"id"
  ret void
}

declare i32 @"llvm.nvvm.read.ptx.sreg.tid.x"()

declare i32 @"llvm.nvvm.read.ptx.sreg.ntid.x"()

declare i32 @"llvm.nvvm.read.ptx.sreg.ctaid.x"()

declare i32 @"_ZN4cudf4core3udf16strings_lowering39call_create_udf_string_from_string_viewB2v5B40c8tJTC_2fWQA93W1AaAIYBPIqRBFCjDSyhCQA_3dE14string_view_2a13udf_string_2a"(i8** %".ret", {i8*, i32, i32}* %"arg.sv", {i8*, i32, i32}* %"arg.udf_str")

declare i32 @"_ZN16test_string_udfs18test_string_udf_eq12_3clocals_3e4funcB2v2B100cw51cXTLSUwv1sDUaKthqaNgoKmjgOR3W3CwAkMQkR5sQekNGN5oUY8kDEllSAKoKQcmgeQT22p1IEvdSsFYR0EdFtJALtjNtZoAE10udf_string"(i8* %".ret", i8* %"arg.st.0", i32 %"arg.st.1", i32 %"arg.st.2") alwaysinline

@"llvm.used" = appending global [1 x i8*] [i8* bitcast (void ({i8*, i32, i32}*, i8*, i8*, i64, i64, i8*, i64, i64)* @"_ZN16test_string_udfs12run_udf_test12_3clocals_3e18_udf_string_kernelB2v1B102cw51cXTLSUwv1sDUaKthqaNgoKmjgOR3W3CwAkMQkR5sQekNGN5oUY8kDEllSAKoKQcmgeQT22p1WPiqWylA40kdKAnkGddqAgA_3dE14string_view_2a5ArrayIbLi1E1C7mutable7alignedE" to i8*)], section "llvm.metadata"
!nvvmir.version = !{ !0 }
!nvvm.annotations = !{ !3 }
!0 = !{ i32 2, i32 0, i32 3, i32 1 }
!1 = !{ !"branch_weights", i32 1, i32 99 }
!2 = !{ i64 0, i64 9223372036854775807 }
!3 = !{ void ({i8*, i32, i32}*, i8*, i8*, i64, i64, i8*, i64, i64)* @"_ZN16test_string_udfs12run_udf_test12_3clocals_3e18_udf_string_kernelB2v1B102cw51cXTLSUwv1sDUaKthqaNgoKmjgOR3W3CwAkMQkR5sQekNGN5oUY8kDEllSAKoKQcmgeQT22p1WPiqWylA40kdKAnkGddqAgA_3dE14string_view_2a5ArrayIbLi1E1C7mutable7alignedE", !"kernel", i32 1 }

