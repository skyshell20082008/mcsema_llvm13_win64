/*
 * Copyright (c) 2019-present, Trail of Bits, Inc.
 * All rights reserved.
 *
 * This source code is licensed in accordance with the terms specified in
 * the LICENSE file found in the root directory of this source tree.
 */

#pragma once

#include <llvm/IR/PassManager.h>

namespace anvill {

class LowerRemillMemoryAccessIntrinsics final
    : public llvm::PassInfoMixin<LowerRemillMemoryAccessIntrinsics> {
 public:
  LowerRemillMemoryAccessIntrinsics(void) {}

  static llvm::StringRef name(void);

  llvm::PreservedAnalyses run(llvm::Function &F,
                              llvm::FunctionAnalysisManager &AM);
};
}  // namespace anvill
