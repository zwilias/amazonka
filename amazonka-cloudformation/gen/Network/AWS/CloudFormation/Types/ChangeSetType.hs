{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudFormation.Types.ChangeSetType
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.CloudFormation.Types.ChangeSetType (
  ChangeSetType (
    ..
    , Create
    , Update
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ChangeSetType = ChangeSetType' (CI Text)
                       deriving (Eq, Ord, Read, Show, Data, Typeable,
                                 Generic)

pattern Create :: ChangeSetType
pattern Create = ChangeSetType' "CREATE"

pattern Update :: ChangeSetType
pattern Update = ChangeSetType' "UPDATE"

{-# COMPLETE
  Create,
  Update,
  ChangeSetType' #-}

instance FromText ChangeSetType where
    parser = (ChangeSetType' . mk) <$> takeText

instance ToText ChangeSetType where
    toText (ChangeSetType' ci) = original ci

-- | Represents an enum of /known/ $ChangeSetType.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
--   fromEnum is a partial function, and will error on values unknown at generation time.
instance Enum ChangeSetType where
    toEnum i = case i of
        0 -> Create
        1 -> Update
        _ -> (error . showText) $ "Unknown index for ChangeSetType: " <> toText i
    fromEnum x = case x of
        Create -> 0
        Update -> 1
        ChangeSetType' name -> (error . showText) $ "Unknown ChangeSetType: " <> original name

-- | Represents the bounds of /known/ $ChangeSetType.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
instance Bounded ChangeSetType where
    minBound = Create
    maxBound = Update

instance Hashable     ChangeSetType
instance NFData       ChangeSetType
instance ToByteString ChangeSetType
instance ToQuery      ChangeSetType
instance ToHeader     ChangeSetType
