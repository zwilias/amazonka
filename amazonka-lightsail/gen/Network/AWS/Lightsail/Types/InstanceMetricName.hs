{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Lightsail.Types.InstanceMetricName
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Lightsail.Types.InstanceMetricName (
  InstanceMetricName (
    ..
    , CPUUtilization
    , NetworkIn
    , NetworkOut
    , StatusCheckFailed
    , StatusCheckFailedInstance
    , StatusCheckFailedSystem
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data InstanceMetricName = InstanceMetricName' (CI
                                                 Text)
                            deriving (Eq, Ord, Read, Show, Data, Typeable,
                                      Generic)

pattern CPUUtilization :: InstanceMetricName
pattern CPUUtilization = InstanceMetricName' "CPUUtilization"

pattern NetworkIn :: InstanceMetricName
pattern NetworkIn = InstanceMetricName' "NetworkIn"

pattern NetworkOut :: InstanceMetricName
pattern NetworkOut = InstanceMetricName' "NetworkOut"

pattern StatusCheckFailed :: InstanceMetricName
pattern StatusCheckFailed = InstanceMetricName' "StatusCheckFailed"

pattern StatusCheckFailedInstance :: InstanceMetricName
pattern StatusCheckFailedInstance = InstanceMetricName' "StatusCheckFailed_Instance"

pattern StatusCheckFailedSystem :: InstanceMetricName
pattern StatusCheckFailedSystem = InstanceMetricName' "StatusCheckFailed_System"

{-# COMPLETE
  CPUUtilization,
  NetworkIn,
  NetworkOut,
  StatusCheckFailed,
  StatusCheckFailedInstance,
  StatusCheckFailedSystem,
  InstanceMetricName' #-}

instance FromText InstanceMetricName where
    parser = (InstanceMetricName' . mk) <$> takeText

instance ToText InstanceMetricName where
    toText (InstanceMetricName' ci) = original ci

-- | Represents an enum of /known/ $InstanceMetricName.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
--   fromEnum is a partial function, and will error on values unknown at generation time.
instance Enum InstanceMetricName where
    toEnum i = case i of
        0 -> CPUUtilization
        1 -> NetworkIn
        2 -> NetworkOut
        3 -> StatusCheckFailed
        4 -> StatusCheckFailedInstance
        5 -> StatusCheckFailedSystem
        _ -> (error . showText) $ "Unknown index for InstanceMetricName: " <> toText i
    fromEnum x = case x of
        CPUUtilization -> 0
        NetworkIn -> 1
        NetworkOut -> 2
        StatusCheckFailed -> 3
        StatusCheckFailedInstance -> 4
        StatusCheckFailedSystem -> 5
        InstanceMetricName' name -> (error . showText) $ "Unknown InstanceMetricName: " <> original name

-- | Represents the bounds of /known/ $InstanceMetricName.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
instance Bounded InstanceMetricName where
    minBound = CPUUtilization
    maxBound = StatusCheckFailedSystem

instance Hashable     InstanceMetricName
instance NFData       InstanceMetricName
instance ToByteString InstanceMetricName
instance ToQuery      InstanceMetricName
instance ToHeader     InstanceMetricName

instance ToJSON InstanceMetricName where
    toJSON = toJSONText

instance FromJSON InstanceMetricName where
    parseJSON = parseJSONText "InstanceMetricName"
