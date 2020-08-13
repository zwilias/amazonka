{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EKS.Types.AMITypes
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.EKS.Types.AMITypes (
  AMITypes (
    ..
    , AL2X86_64
    , AL2X86_64Gpu
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data AMITypes = AMITypes' (CI Text)
                  deriving (Eq, Ord, Read, Show, Data, Typeable,
                            Generic)

pattern AL2X86_64 :: AMITypes
pattern AL2X86_64 = AMITypes' "AL2_x86_64"

pattern AL2X86_64Gpu :: AMITypes
pattern AL2X86_64Gpu = AMITypes' "AL2_x86_64_GPU"

{-# COMPLETE
  AL2X86_64,
  AL2X86_64Gpu,
  AMITypes' #-}

instance FromText AMITypes where
    parser = (AMITypes' . mk) <$> takeText

instance ToText AMITypes where
    toText (AMITypes' ci) = original ci

-- | Represents an enum of /known/ $AMITypes.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
--   fromEnum is a partial function, and will error on values unknown at generation time.
instance Enum AMITypes where
    toEnum i = case i of
        0 -> AL2X86_64
        1 -> AL2X86_64Gpu
        _ -> (error . showText) $ "Unknown index for AMITypes: " <> toText i
    fromEnum x = case x of
        AL2X86_64 -> 0
        AL2X86_64Gpu -> 1
        AMITypes' name -> (error . showText) $ "Unknown AMITypes: " <> original name

-- | Represents the bounds of /known/ $AMITypes.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
instance Bounded AMITypes where
    minBound = AL2X86_64
    maxBound = AL2X86_64Gpu

instance Hashable     AMITypes
instance NFData       AMITypes
instance ToByteString AMITypes
instance ToQuery      AMITypes
instance ToHeader     AMITypes

instance ToJSON AMITypes where
    toJSON = toJSONText

instance FromJSON AMITypes where
    parseJSON = parseJSONText "AMITypes"
