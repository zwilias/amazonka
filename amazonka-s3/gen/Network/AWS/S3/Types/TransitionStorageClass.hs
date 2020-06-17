{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.S3.Types.TransitionStorageClass
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.S3.Types.TransitionStorageClass (
  TransitionStorageClass (
    ..
    , TSCGlacier
    , TSCOnezoneIA
    , TSCStandardIA
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude
import Network.AWS.S3.Internal

data TransitionStorageClass = TransitionStorageClass' (CI
                                                         Text)
                                deriving (Eq, Ord, Read, Show, Data, Typeable,
                                          Generic)

pattern TSCGlacier :: TransitionStorageClass
pattern TSCGlacier = TransitionStorageClass' "GLACIER"

pattern TSCOnezoneIA :: TransitionStorageClass
pattern TSCOnezoneIA = TransitionStorageClass' "ONEZONE_IA"

pattern TSCStandardIA :: TransitionStorageClass
pattern TSCStandardIA = TransitionStorageClass' "STANDARD_IA"

{-# COMPLETE
  TSCGlacier,
  TSCOnezoneIA,
  TSCStandardIA,
  TransitionStorageClass' #-}

instance FromText TransitionStorageClass where
    parser = (TransitionStorageClass' . mk) <$> takeText

instance ToText TransitionStorageClass where
    toText (TransitionStorageClass' ci) = original ci

-- | Represents an enum of /known/ $TransitionStorageClass.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
--   fromEnum is a partial function, and will error on values unknown at generation time.
instance Enum TransitionStorageClass where
    toEnum i = case i of
        0 -> TSCGlacier
        1 -> TSCOnezoneIA
        2 -> TSCStandardIA
        _ -> (error . showText) $ "Unknown index for TransitionStorageClass: " <> toText i
    fromEnum x = case x of
        TSCGlacier -> 0
        TSCOnezoneIA -> 1
        TSCStandardIA -> 2
        TransitionStorageClass' name -> (error . showText) $ "Unknown TransitionStorageClass: " <> original name

-- | Represents the bounds of /known/ $TransitionStorageClass.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
instance Bounded TransitionStorageClass where
    minBound = TSCGlacier
    maxBound = TSCStandardIA

instance Hashable     TransitionStorageClass
instance NFData       TransitionStorageClass
instance ToByteString TransitionStorageClass
instance ToQuery      TransitionStorageClass
instance ToHeader     TransitionStorageClass

instance FromXML TransitionStorageClass where
    parseXML = parseXMLText "TransitionStorageClass"

instance ToXML TransitionStorageClass where
    toXML = toXMLText
