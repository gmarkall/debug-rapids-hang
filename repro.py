from numba.cuda.cudadrv import nvvm

filenames = (
    "03_strst_string_udf_eq.ll",
    "05_udf_string_kernel.ll",
)

irs = []

for filename in filenames:
    with open(filename) as f:
        irs.append(f.read())


ptx = nvvm.compile_ir(irs)
print(ptx)
