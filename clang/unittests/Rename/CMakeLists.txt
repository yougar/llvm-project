set(LLVM_LINK_COMPONENTS
  FrontendOpenMP
  support
  )

# We'd like clang/unittests/Tooling/RewriterTestContext.h in the test.
include_directories(${CLANG_SOURCE_DIR})

add_clang_unittest(ClangRenameTests
  RenameClassTest.cpp
  RenameEnumTest.cpp
  RenameAliasTest.cpp
  RenameMemberTest.cpp
  RenameFunctionTest.cpp
  )

clang_target_link_libraries(ClangRenameTests
  PRIVATE
  clangAST
  clangASTMatchers
  clangBasic
  clangFormat
  clangFrontend
  clangRewrite
  clangSerialization
  clangTooling
  clangToolingCore
  clangToolingRefactoring
  )
