{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SSM.Types.DocumentType
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.SSM.Types.DocumentType (
  DocumentType (
    ..
    , DTAutomation
    , DTCommand
    , DTPolicy
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data DocumentType = DocumentType' (CI Text)
                      deriving (Eq, Ord, Read, Show, Data, Typeable,
                                Generic)

pattern DTAutomation :: DocumentType
pattern DTAutomation = DocumentType' "Automation"

pattern DTCommand :: DocumentType
pattern DTCommand = DocumentType' "Command"

pattern DTPolicy :: DocumentType
pattern DTPolicy = DocumentType' "Policy"

{-# COMPLETE
  DTAutomation,
  DTCommand,
  DTPolicy,
  DocumentType' #-}

instance FromText DocumentType where
    parser = (DocumentType' . mk) <$> takeText

instance ToText DocumentType where
    toText (DocumentType' ci) = original ci

-- | Represents an enum of /known/ $DocumentType.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
--   fromEnum is a partial function, and will error on values unknown at generation time.
instance Enum DocumentType where
    toEnum i = case i of
        0 -> DTAutomation
        1 -> DTCommand
        2 -> DTPolicy
        _ -> (error . showText) $ "Unknown index for DocumentType: " <> toText i
    fromEnum x = case x of
        DTAutomation -> 0
        DTCommand -> 1
        DTPolicy -> 2
        DocumentType' name -> (error . showText) $ "Unknown DocumentType: " <> original name

-- | Represents the bounds of /known/ $DocumentType.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
instance Bounded DocumentType where
    minBound = DTAutomation
    maxBound = DTPolicy

instance Hashable     DocumentType
instance NFData       DocumentType
instance ToByteString DocumentType
instance ToQuery      DocumentType
instance ToHeader     DocumentType

instance ToJSON DocumentType where
    toJSON = toJSONText

instance FromJSON DocumentType where
    parseJSON = parseJSONText "DocumentType"
