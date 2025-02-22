// RUN: %empty-directory(%t)
// RUN: %target-swift-frontend -swift-version 5 %S/../Inputs/lazy_typecheck.swift -enable-library-evolution -parse-as-library -package-name Package -typecheck -verify
// RUN: %target-swift-frontend -swift-version 5 %S/../Inputs/lazy_typecheck.swift -module-name lazy_typecheck -emit-module -emit-module-path %t/lazy_typecheck.swiftmodule -enable-library-evolution -parse-as-library -package-name Package -experimental-lazy-typecheck -experimental-skip-all-function-bodies -experimental-serialize-external-decls-only

// RUN: %target-swift-frontend -package-name Package -typecheck %S/../Inputs/lazy_typecheck_client.swift -D TEST_PACKAGE -I %t
