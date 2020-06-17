{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudFormation.Types.StackSetOperationAction
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.CloudFormation.Types.StackSetOperationAction (
  StackSetOperationAction (
    ..
    , SSOACreate
    , SSOADelete
    , SSOAUpdate
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data StackSetOperationAction = StackSetOperationAction' (CI
                                                           Text)
                                 deriving (Eq, Ord, Read, Show, Data, Typeable,
                                           Generic)

pattern SSOACreate :: StackSetOperationAction
pattern SSOACreate = StackSetOperationAction' "CREATE"

pattern SSOADelete :: StackSetOperationAction
pattern SSOADelete = StackSetOperationAction' "DELETE"

pattern SSOAUpdate :: StackSetOperationAction
pattern SSOAUpdate = StackSetOperationAction' "UPDATE"

{-# COMPLETE
  SSOACreate,
  SSOADelete,
  SSOAUpdate,
  StackSetOperationAction' #-}

instance FromText StackSetOperationAction where
    parser = (StackSetOperationAction' . mk) <$> takeText

instance ToText StackSetOperationAction where
    toText (StackSetOperationAction' ci) = original ci

-- | Represents an enum of /known/ $StackSetOperationAction.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
--   fromEnum is a partial function, and will error on values unknown at generation time.
instance Enum StackSetOperationAction where
    toEnum i = case i of
        0 -> SSOACreate
        1 -> SSOADelete
        2 -> SSOAUpdate
        _ -> (error . showText) $ "Unknown index for StackSetOperationAction: " <> toText i
    fromEnum x = case x of
        SSOACreate -> 0
        SSOADelete -> 1
        SSOAUpdate -> 2
        StackSetOperationAction' name -> (error . showText) $ "Unknown StackSetOperationAction: " <> original name

-- | Represents the bounds of /known/ $StackSetOperationAction.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
instance Bounded StackSetOperationAction where
    minBound = SSOACreate
    maxBound = SSOAUpdate

instance Hashable     StackSetOperationAction
instance NFData       StackSetOperationAction
instance ToByteString StackSetOperationAction
instance ToQuery      StackSetOperationAction
instance ToHeader     StackSetOperationAction

instance FromXML StackSetOperationAction where
    parseXML = parseXMLText "StackSetOperationAction"
