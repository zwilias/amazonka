{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SMS.Types.ConnectorCapability
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.SMS.Types.ConnectorCapability (
  ConnectorCapability (
    ..
    , CCVsphere
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Capabilities for a Connector
data ConnectorCapability = ConnectorCapability' (CI
                                                   Text)
                             deriving (Eq, Ord, Read, Show, Data, Typeable,
                                       Generic)

pattern CCVsphere :: ConnectorCapability
pattern CCVsphere = ConnectorCapability' "VSPHERE"

{-# COMPLETE
  CCVsphere,
  ConnectorCapability' #-}

instance FromText ConnectorCapability where
    parser = (ConnectorCapability' . mk) <$> takeText

instance ToText ConnectorCapability where
    toText (ConnectorCapability' ci) = original ci

-- | Represents an enum of /known/ $ConnectorCapability.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
--   fromEnum is a partial function, and will error on values unknown at generation time.
instance Enum ConnectorCapability where
    toEnum i = case i of
        0 -> CCVsphere
        _ -> (error . showText) $ "Unknown index for ConnectorCapability: " <> toText i
    fromEnum x = case x of
        CCVsphere -> 0
        ConnectorCapability' name -> (error . showText) $ "Unknown ConnectorCapability: " <> original name

-- | Represents the bounds of /known/ $ConnectorCapability.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
instance Bounded ConnectorCapability where
    minBound = CCVsphere
    maxBound = CCVsphere

instance Hashable     ConnectorCapability
instance NFData       ConnectorCapability
instance ToByteString ConnectorCapability
instance ToQuery      ConnectorCapability
instance ToHeader     ConnectorCapability

instance FromJSON ConnectorCapability where
    parseJSON = parseJSONText "ConnectorCapability"
