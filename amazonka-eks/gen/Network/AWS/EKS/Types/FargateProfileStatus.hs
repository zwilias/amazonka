{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EKS.Types.FargateProfileStatus
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.EKS.Types.FargateProfileStatus (
  FargateProfileStatus (
    ..
    , FPSActive
    , FPSCreateFailed
    , FPSCreating
    , FPSDeleteFailed
    , FPSDeleting
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data FargateProfileStatus = FargateProfileStatus' (CI
                                                     Text)
                              deriving (Eq, Ord, Read, Show, Data, Typeable,
                                        Generic)

pattern FPSActive :: FargateProfileStatus
pattern FPSActive = FargateProfileStatus' "ACTIVE"

pattern FPSCreateFailed :: FargateProfileStatus
pattern FPSCreateFailed = FargateProfileStatus' "CREATE_FAILED"

pattern FPSCreating :: FargateProfileStatus
pattern FPSCreating = FargateProfileStatus' "CREATING"

pattern FPSDeleteFailed :: FargateProfileStatus
pattern FPSDeleteFailed = FargateProfileStatus' "DELETE_FAILED"

pattern FPSDeleting :: FargateProfileStatus
pattern FPSDeleting = FargateProfileStatus' "DELETING"

{-# COMPLETE
  FPSActive,
  FPSCreateFailed,
  FPSCreating,
  FPSDeleteFailed,
  FPSDeleting,
  FargateProfileStatus' #-}

instance FromText FargateProfileStatus where
    parser = (FargateProfileStatus' . mk) <$> takeText

instance ToText FargateProfileStatus where
    toText (FargateProfileStatus' ci) = original ci

-- | Represents an enum of /known/ $FargateProfileStatus.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
--   fromEnum is a partial function, and will error on values unknown at generation time.
instance Enum FargateProfileStatus where
    toEnum i = case i of
        0 -> FPSActive
        1 -> FPSCreateFailed
        2 -> FPSCreating
        3 -> FPSDeleteFailed
        4 -> FPSDeleting
        _ -> (error . showText) $ "Unknown index for FargateProfileStatus: " <> toText i
    fromEnum x = case x of
        FPSActive -> 0
        FPSCreateFailed -> 1
        FPSCreating -> 2
        FPSDeleteFailed -> 3
        FPSDeleting -> 4
        FargateProfileStatus' name -> (error . showText) $ "Unknown FargateProfileStatus: " <> original name

-- | Represents the bounds of /known/ $FargateProfileStatus.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
instance Bounded FargateProfileStatus where
    minBound = FPSActive
    maxBound = FPSDeleting

instance Hashable     FargateProfileStatus
instance NFData       FargateProfileStatus
instance ToByteString FargateProfileStatus
instance ToQuery      FargateProfileStatus
instance ToHeader     FargateProfileStatus

instance FromJSON FargateProfileStatus where
    parseJSON = parseJSONText "FargateProfileStatus"
