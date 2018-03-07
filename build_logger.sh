cd apache-log4cxx-0.10.0 && \

chmod +x  ./configure && \
    PATH=/opt/qnx700/host/linux/x86_64/usr/bin/:$PATH:
    ac_cv_lbl_unaligned_fail=yes \
    ac_cv_func_mmap_fixed_mapped=yes \
    ac_cv_func_memcmp_working=yes \
    ac_cv_have_decl_malloc=yes \
    gl_cv_func_malloc_0_nonnull=yes \
    ac_cv_func_malloc_0_nonnull=yes \
    ac_cv_func_calloc_0_nonnull=yes \
    ac_cv_func_realloc_0_nonnull=yes \
    lt_cv_sys_lib_search_path_spec="" \
    ac_cv_c_bigendian=no \
    ac_cv_file__dev_zero=yes \
    ac_cv_func_setpgrp_void=yes \
    apr_cv_process_shared_works=yes \
    apr_cv_mutex_recursive=yes \
    apr_cv_mutex_robust_shared=no \
    apr_cv_tcp_nodelay_with_cork=no \
    ac_cv_sizeof_struct_iovec=8 \
    CC=$CC \
    CXX=$CXX \
./configure --host=$HOST --target=$TARGET \
            --prefix=$PREFIX \
            --with-apr=$PREFIX/bin/apr-1-config \
            --with-apr-util=$PREFIX/bin/apu-1-config &&\
make