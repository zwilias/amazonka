{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SMS.Types.VMManagerType
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.SMS.Types.VMManagerType (
  VMManagerType (
    ..
    , Vsphere
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | VM Management Product
data VMManagerType = VMManagerType' (CI Text)
                       deriving (Eq, Ord, Read, Show, Data, Typeable,
                                 Generic)

pattern Vsphere :: VMManagerType
pattern Vsphere = VMManagerType' "VSPHERE"

{-# COMPLETE
  Vsphere,
  VMManagerType' #-}

instance FromText VMManagerType where
    parser = (VMManagerType' . mk) <$> takeText

instance ToText VMManagerType where
    toText (VMManagerType' ci) = original ci

-- | Represents an enum of /known/ $VMManagerType.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
--   fromEnum is a partial function, and will error on values unknown at generation time.
instance Enum VMManagerType where
    toEnum i = case i of
        0 -> Vsphere
        _ -> (error . showText) $ "Unknown index for VMManagerType: " <> toText i
    fromEnum x = case x of
        Vsphere -> 0
        VMManagerType' name -> (error . showText) $ "Unknown VMManagerType: " <> original name

-- | Represents the bounds of /known/ $VMManagerType.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
instance Bounded VMManagerType where
    minBound = Vsphere
    maxBound = Vsphere

instance Hashable     VMManagerType
instance NFData       VMManagerType
instance ToByteString VMManagerType
instance ToQuery      VMManagerType
instance ToHeader     VMManagerType

instance FromJSON VMManagerType where
    parseJSON = parseJSONText "VMManagerType"
