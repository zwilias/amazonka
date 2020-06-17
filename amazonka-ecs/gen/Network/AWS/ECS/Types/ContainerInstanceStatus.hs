{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ECS.Types.ContainerInstanceStatus
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.ECS.Types.ContainerInstanceStatus (
  ContainerInstanceStatus (
    ..
    , Active
    , Draining
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ContainerInstanceStatus = ContainerInstanceStatus' (CI
                                                           Text)
                                 deriving (Eq, Ord, Read, Show, Data, Typeable,
                                           Generic)

pattern Active :: ContainerInstanceStatus
pattern Active = ContainerInstanceStatus' "ACTIVE"

pattern Draining :: ContainerInstanceStatus
pattern Draining = ContainerInstanceStatus' "DRAINING"

{-# COMPLETE
  Active,
  Draining,
  ContainerInstanceStatus' #-}

instance FromText ContainerInstanceStatus where
    parser = (ContainerInstanceStatus' . mk) <$> takeText

instance ToText ContainerInstanceStatus where
    toText (ContainerInstanceStatus' ci) = original ci

-- | Represents an enum of /known/ $ContainerInstanceStatus.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
--   fromEnum is a partial function, and will error on values unknown at generation time.
instance Enum ContainerInstanceStatus where
    toEnum i = case i of
        0 -> Active
        1 -> Draining
        _ -> (error . showText) $ "Unknown index for ContainerInstanceStatus: " <> toText i
    fromEnum x = case x of
        Active -> 0
        Draining -> 1
        ContainerInstanceStatus' name -> (error . showText) $ "Unknown ContainerInstanceStatus: " <> original name

-- | Represents the bounds of /known/ $ContainerInstanceStatus.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
instance Bounded ContainerInstanceStatus where
    minBound = Active
    maxBound = Draining

instance Hashable     ContainerInstanceStatus
instance NFData       ContainerInstanceStatus
instance ToByteString ContainerInstanceStatus
instance ToQuery      ContainerInstanceStatus
instance ToHeader     ContainerInstanceStatus

instance ToJSON ContainerInstanceStatus where
    toJSON = toJSONText
