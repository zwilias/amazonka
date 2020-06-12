{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

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
module Network.AWS.S3.Types.TransitionStorageClass where

import Network.AWS.Prelude
import Network.AWS.S3.Internal
  
data TransitionStorageClass = TSCGlacier
                            | TSCOnezoneIA
                            | TSCStandardIA
                                deriving (Eq, Ord, Read, Show, Enum, Bounded,
                                          Data, Typeable, Generic)

instance FromText TransitionStorageClass where
    parser = takeLowerText >>= \case
        "glacier" -> pure TSCGlacier
        "onezone_ia" -> pure TSCOnezoneIA
        "standard_ia" -> pure TSCStandardIA
        e -> fromTextError $ "Failure parsing TransitionStorageClass from value: '" <> e
           <> "'. Accepted values: glacier, onezone_ia, standard_ia"

instance ToText TransitionStorageClass where
    toText = \case
        TSCGlacier -> "GLACIER"
        TSCOnezoneIA -> "ONEZONE_IA"
        TSCStandardIA -> "STANDARD_IA"

instance Hashable     TransitionStorageClass
instance NFData       TransitionStorageClass
instance ToByteString TransitionStorageClass
instance ToQuery      TransitionStorageClass
instance ToHeader     TransitionStorageClass

instance FromXML TransitionStorageClass where
    parseXML = parseXMLText "TransitionStorageClass"

instance ToXML TransitionStorageClass where
    toXML = toXMLText
