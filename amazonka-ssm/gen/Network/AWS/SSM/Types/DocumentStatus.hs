{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SSM.Types.DocumentStatus
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.SSM.Types.DocumentStatus (
  DocumentStatus (
    ..
    , Active
    , Creating
    , Deleting
    , Updating
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data DocumentStatus = DocumentStatus' (CI Text)
                        deriving (Eq, Ord, Read, Show, Data, Typeable,
                                  Generic)

pattern Active :: DocumentStatus
pattern Active = DocumentStatus' "Active"

pattern Creating :: DocumentStatus
pattern Creating = DocumentStatus' "Creating"

pattern Deleting :: DocumentStatus
pattern Deleting = DocumentStatus' "Deleting"

pattern Updating :: DocumentStatus
pattern Updating = DocumentStatus' "Updating"

{-# COMPLETE
  Active,
  Creating,
  Deleting,
  Updating,
  DocumentStatus' #-}

instance FromText DocumentStatus where
    parser = (DocumentStatus' . mk) <$> takeText

instance ToText DocumentStatus where
    toText (DocumentStatus' ci) = original ci

-- | Represents an enum of /known/ $DocumentStatus.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
--   fromEnum is a partial function, and will error on values unknown at generation time.
instance Enum DocumentStatus where
    toEnum i = case i of
        0 -> Active
        1 -> Creating
        2 -> Deleting
        3 -> Updating
        _ -> (error . showText) $ "Unknown index for DocumentStatus: " <> toText i
    fromEnum x = case x of
        Active -> 0
        Creating -> 1
        Deleting -> 2
        Updating -> 3
        DocumentStatus' name -> (error . showText) $ "Unknown DocumentStatus: " <> original name

-- | Represents the bounds of /known/ $DocumentStatus.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
instance Bounded DocumentStatus where
    minBound = Active
    maxBound = Updating

instance Hashable     DocumentStatus
instance NFData       DocumentStatus
instance ToByteString DocumentStatus
instance ToQuery      DocumentStatus
instance ToHeader     DocumentStatus

instance FromJSON DocumentStatus where
    parseJSON = parseJSONText "DocumentStatus"
