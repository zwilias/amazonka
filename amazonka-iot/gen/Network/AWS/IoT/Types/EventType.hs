{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoT.Types.EventType
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.IoT.Types.EventType (
  EventType (
    ..
    , Job
    , JobExecution
    , Thing
    , ThingGroup
    , ThingGroupHierarchy
    , ThingGroupMembership
    , ThingType
    , ThingTypeAssociation
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data EventType = EventType' (CI Text)
                   deriving (Eq, Ord, Read, Show, Data, Typeable,
                             Generic)

pattern Job :: EventType
pattern Job = EventType' "JOB"

pattern JobExecution :: EventType
pattern JobExecution = EventType' "JOB_EXECUTION"

pattern Thing :: EventType
pattern Thing = EventType' "THING"

pattern ThingGroup :: EventType
pattern ThingGroup = EventType' "THING_GROUP"

pattern ThingGroupHierarchy :: EventType
pattern ThingGroupHierarchy = EventType' "THING_GROUP_HIERARCHY"

pattern ThingGroupMembership :: EventType
pattern ThingGroupMembership = EventType' "THING_GROUP_MEMBERSHIP"

pattern ThingType :: EventType
pattern ThingType = EventType' "THING_TYPE"

pattern ThingTypeAssociation :: EventType
pattern ThingTypeAssociation = EventType' "THING_TYPE_ASSOCIATION"

{-# COMPLETE
  Job,
  JobExecution,
  Thing,
  ThingGroup,
  ThingGroupHierarchy,
  ThingGroupMembership,
  ThingType,
  ThingTypeAssociation,
  EventType' #-}

instance FromText EventType where
    parser = (EventType' . mk) <$> takeText

instance ToText EventType where
    toText (EventType' ci) = original ci

-- | Represents an enum of /known/ $EventType.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
--   fromEnum is a partial function, and will error on values unknown at generation time.
instance Enum EventType where
    toEnum i = case i of
        0 -> Job
        1 -> JobExecution
        2 -> Thing
        3 -> ThingGroup
        4 -> ThingGroupHierarchy
        5 -> ThingGroupMembership
        6 -> ThingType
        7 -> ThingTypeAssociation
        _ -> (error . showText) $ "Unknown index for EventType: " <> toText i
    fromEnum x = case x of
        Job -> 0
        JobExecution -> 1
        Thing -> 2
        ThingGroup -> 3
        ThingGroupHierarchy -> 4
        ThingGroupMembership -> 5
        ThingType -> 6
        ThingTypeAssociation -> 7
        EventType' name -> (error . showText) $ "Unknown EventType: " <> original name

-- | Represents the bounds of /known/ $EventType.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
instance Bounded EventType where
    minBound = Job
    maxBound = ThingTypeAssociation

instance Hashable     EventType
instance NFData       EventType
instance ToByteString EventType
instance ToQuery      EventType
instance ToHeader     EventType

instance ToJSON EventType where
    toJSON = toJSONText

instance FromJSON EventType where
    parseJSON = parseJSONText "EventType"
