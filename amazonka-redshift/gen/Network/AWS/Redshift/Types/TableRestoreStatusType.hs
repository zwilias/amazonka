{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Redshift.Types.TableRestoreStatusType
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Redshift.Types.TableRestoreStatusType (
  TableRestoreStatusType (
    ..
    , Canceled
    , Failed
    , InProgress
    , Pending
    , Succeeded
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude
import Network.AWS.Redshift.Internal

data TableRestoreStatusType = TableRestoreStatusType' (CI
                                                         Text)
                                deriving (Eq, Ord, Read, Show, Data, Typeable,
                                          Generic)

pattern Canceled :: TableRestoreStatusType
pattern Canceled = TableRestoreStatusType' "CANCELED"

pattern Failed :: TableRestoreStatusType
pattern Failed = TableRestoreStatusType' "FAILED"

pattern InProgress :: TableRestoreStatusType
pattern InProgress = TableRestoreStatusType' "IN_PROGRESS"

pattern Pending :: TableRestoreStatusType
pattern Pending = TableRestoreStatusType' "PENDING"

pattern Succeeded :: TableRestoreStatusType
pattern Succeeded = TableRestoreStatusType' "SUCCEEDED"

{-# COMPLETE
  Canceled,
  Failed,
  InProgress,
  Pending,
  Succeeded,
  TableRestoreStatusType' #-}

instance FromText TableRestoreStatusType where
    parser = (TableRestoreStatusType' . mk) <$> takeText

instance ToText TableRestoreStatusType where
    toText (TableRestoreStatusType' ci) = original ci

-- | Represents an enum of /known/ $TableRestoreStatusType.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
--   fromEnum is a partial function, and will error on values unknown at generation time.
instance Enum TableRestoreStatusType where
    toEnum i = case i of
        0 -> Canceled
        1 -> Failed
        2 -> InProgress
        3 -> Pending
        4 -> Succeeded
        _ -> (error . showText) $ "Unknown index for TableRestoreStatusType: " <> toText i
    fromEnum x = case x of
        Canceled -> 0
        Failed -> 1
        InProgress -> 2
        Pending -> 3
        Succeeded -> 4
        TableRestoreStatusType' name -> (error . showText) $ "Unknown TableRestoreStatusType: " <> original name

-- | Represents the bounds of /known/ $TableRestoreStatusType.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
instance Bounded TableRestoreStatusType where
    minBound = Canceled
    maxBound = Succeeded

instance Hashable     TableRestoreStatusType
instance NFData       TableRestoreStatusType
instance ToByteString TableRestoreStatusType
instance ToQuery      TableRestoreStatusType
instance ToHeader     TableRestoreStatusType

instance FromXML TableRestoreStatusType where
    parseXML = parseXMLText "TableRestoreStatusType"
