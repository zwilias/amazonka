{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.WorkDocs.Types.ActivityType
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.WorkDocs.Types.ActivityType (
  ActivityType (
    ..
    , DocumentAnnotationAdded
    , DocumentAnnotationDeleted
    , DocumentCheckedIn
    , DocumentCheckedOut
    , DocumentCommentAdded
    , DocumentCommentDeleted
    , DocumentMoved
    , DocumentRecycled
    , DocumentRenamed
    , DocumentRestored
    , DocumentReverted
    , DocumentSharePermissionChanged
    , DocumentShareableLinkCreated
    , DocumentShareableLinkPermissionChanged
    , DocumentShareableLinkRemoved
    , DocumentShared
    , DocumentUnshared
    , DocumentVersionDeleted
    , DocumentVersionUploaded
    , FolderCreated
    , FolderDeleted
    , FolderMoved
    , FolderRecycled
    , FolderRenamed
    , FolderRestored
    , FolderSharePermissionChanged
    , FolderShareableLinkCreated
    , FolderShareableLinkPermissionChanged
    , FolderShareableLinkRemoved
    , FolderShared
    , FolderUnshared
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ActivityType = ActivityType' (CI Text)
                      deriving (Eq, Ord, Read, Show, Data, Typeable,
                                Generic)

pattern DocumentAnnotationAdded :: ActivityType
pattern DocumentAnnotationAdded = ActivityType' "DOCUMENT_ANNOTATION_ADDED"

pattern DocumentAnnotationDeleted :: ActivityType
pattern DocumentAnnotationDeleted = ActivityType' "DOCUMENT_ANNOTATION_DELETED"

pattern DocumentCheckedIn :: ActivityType
pattern DocumentCheckedIn = ActivityType' "DOCUMENT_CHECKED_IN"

pattern DocumentCheckedOut :: ActivityType
pattern DocumentCheckedOut = ActivityType' "DOCUMENT_CHECKED_OUT"

pattern DocumentCommentAdded :: ActivityType
pattern DocumentCommentAdded = ActivityType' "DOCUMENT_COMMENT_ADDED"

pattern DocumentCommentDeleted :: ActivityType
pattern DocumentCommentDeleted = ActivityType' "DOCUMENT_COMMENT_DELETED"

pattern DocumentMoved :: ActivityType
pattern DocumentMoved = ActivityType' "DOCUMENT_MOVED"

pattern DocumentRecycled :: ActivityType
pattern DocumentRecycled = ActivityType' "DOCUMENT_RECYCLED"

pattern DocumentRenamed :: ActivityType
pattern DocumentRenamed = ActivityType' "DOCUMENT_RENAMED"

pattern DocumentRestored :: ActivityType
pattern DocumentRestored = ActivityType' "DOCUMENT_RESTORED"

pattern DocumentReverted :: ActivityType
pattern DocumentReverted = ActivityType' "DOCUMENT_REVERTED"

pattern DocumentSharePermissionChanged :: ActivityType
pattern DocumentSharePermissionChanged = ActivityType' "DOCUMENT_SHARE_PERMISSION_CHANGED"

pattern DocumentShareableLinkCreated :: ActivityType
pattern DocumentShareableLinkCreated = ActivityType' "DOCUMENT_SHAREABLE_LINK_CREATED"

pattern DocumentShareableLinkPermissionChanged :: ActivityType
pattern DocumentShareableLinkPermissionChanged = ActivityType' "DOCUMENT_SHAREABLE_LINK_PERMISSION_CHANGED"

pattern DocumentShareableLinkRemoved :: ActivityType
pattern DocumentShareableLinkRemoved = ActivityType' "DOCUMENT_SHAREABLE_LINK_REMOVED"

pattern DocumentShared :: ActivityType
pattern DocumentShared = ActivityType' "DOCUMENT_SHARED"

pattern DocumentUnshared :: ActivityType
pattern DocumentUnshared = ActivityType' "DOCUMENT_UNSHARED"

pattern DocumentVersionDeleted :: ActivityType
pattern DocumentVersionDeleted = ActivityType' "DOCUMENT_VERSION_DELETED"

pattern DocumentVersionUploaded :: ActivityType
pattern DocumentVersionUploaded = ActivityType' "DOCUMENT_VERSION_UPLOADED"

pattern FolderCreated :: ActivityType
pattern FolderCreated = ActivityType' "FOLDER_CREATED"

pattern FolderDeleted :: ActivityType
pattern FolderDeleted = ActivityType' "FOLDER_DELETED"

pattern FolderMoved :: ActivityType
pattern FolderMoved = ActivityType' "FOLDER_MOVED"

pattern FolderRecycled :: ActivityType
pattern FolderRecycled = ActivityType' "FOLDER_RECYCLED"

pattern FolderRenamed :: ActivityType
pattern FolderRenamed = ActivityType' "FOLDER_RENAMED"

pattern FolderRestored :: ActivityType
pattern FolderRestored = ActivityType' "FOLDER_RESTORED"

pattern FolderSharePermissionChanged :: ActivityType
pattern FolderSharePermissionChanged = ActivityType' "FOLDER_SHARE_PERMISSION_CHANGED"

pattern FolderShareableLinkCreated :: ActivityType
pattern FolderShareableLinkCreated = ActivityType' "FOLDER_SHAREABLE_LINK_CREATED"

pattern FolderShareableLinkPermissionChanged :: ActivityType
pattern FolderShareableLinkPermissionChanged = ActivityType' "FOLDER_SHAREABLE_LINK_PERMISSION_CHANGED"

pattern FolderShareableLinkRemoved :: ActivityType
pattern FolderShareableLinkRemoved = ActivityType' "FOLDER_SHAREABLE_LINK_REMOVED"

pattern FolderShared :: ActivityType
pattern FolderShared = ActivityType' "FOLDER_SHARED"

pattern FolderUnshared :: ActivityType
pattern FolderUnshared = ActivityType' "FOLDER_UNSHARED"

{-# COMPLETE
  DocumentAnnotationAdded,
  DocumentAnnotationDeleted,
  DocumentCheckedIn,
  DocumentCheckedOut,
  DocumentCommentAdded,
  DocumentCommentDeleted,
  DocumentMoved,
  DocumentRecycled,
  DocumentRenamed,
  DocumentRestored,
  DocumentReverted,
  DocumentSharePermissionChanged,
  DocumentShareableLinkCreated,
  DocumentShareableLinkPermissionChanged,
  DocumentShareableLinkRemoved,
  DocumentShared,
  DocumentUnshared,
  DocumentVersionDeleted,
  DocumentVersionUploaded,
  FolderCreated,
  FolderDeleted,
  FolderMoved,
  FolderRecycled,
  FolderRenamed,
  FolderRestored,
  FolderSharePermissionChanged,
  FolderShareableLinkCreated,
  FolderShareableLinkPermissionChanged,
  FolderShareableLinkRemoved,
  FolderShared,
  FolderUnshared,
  ActivityType' #-}

instance FromText ActivityType where
    parser = (ActivityType' . mk) <$> takeText

instance ToText ActivityType where
    toText (ActivityType' ci) = original ci

-- | Represents an enum of /known/ $ActivityType.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
--   fromEnum is a partial function, and will error on values unknown at generation time.
instance Enum ActivityType where
    toEnum i = case i of
        0 -> DocumentAnnotationAdded
        1 -> DocumentAnnotationDeleted
        2 -> DocumentCheckedIn
        3 -> DocumentCheckedOut
        4 -> DocumentCommentAdded
        5 -> DocumentCommentDeleted
        6 -> DocumentMoved
        7 -> DocumentRecycled
        8 -> DocumentRenamed
        9 -> DocumentRestored
        10 -> DocumentReverted
        11 -> DocumentSharePermissionChanged
        12 -> DocumentShareableLinkCreated
        13 -> DocumentShareableLinkPermissionChanged
        14 -> DocumentShareableLinkRemoved
        15 -> DocumentShared
        16 -> DocumentUnshared
        17 -> DocumentVersionDeleted
        18 -> DocumentVersionUploaded
        19 -> FolderCreated
        20 -> FolderDeleted
        21 -> FolderMoved
        22 -> FolderRecycled
        23 -> FolderRenamed
        24 -> FolderRestored
        25 -> FolderSharePermissionChanged
        26 -> FolderShareableLinkCreated
        27 -> FolderShareableLinkPermissionChanged
        28 -> FolderShareableLinkRemoved
        29 -> FolderShared
        30 -> FolderUnshared
        _ -> (error . showText) $ "Unknown index for ActivityType: " <> toText i
    fromEnum x = case x of
        DocumentAnnotationAdded -> 0
        DocumentAnnotationDeleted -> 1
        DocumentCheckedIn -> 2
        DocumentCheckedOut -> 3
        DocumentCommentAdded -> 4
        DocumentCommentDeleted -> 5
        DocumentMoved -> 6
        DocumentRecycled -> 7
        DocumentRenamed -> 8
        DocumentRestored -> 9
        DocumentReverted -> 10
        DocumentSharePermissionChanged -> 11
        DocumentShareableLinkCreated -> 12
        DocumentShareableLinkPermissionChanged -> 13
        DocumentShareableLinkRemoved -> 14
        DocumentShared -> 15
        DocumentUnshared -> 16
        DocumentVersionDeleted -> 17
        DocumentVersionUploaded -> 18
        FolderCreated -> 19
        FolderDeleted -> 20
        FolderMoved -> 21
        FolderRecycled -> 22
        FolderRenamed -> 23
        FolderRestored -> 24
        FolderSharePermissionChanged -> 25
        FolderShareableLinkCreated -> 26
        FolderShareableLinkPermissionChanged -> 27
        FolderShareableLinkRemoved -> 28
        FolderShared -> 29
        FolderUnshared -> 30
        ActivityType' name -> (error . showText) $ "Unknown ActivityType: " <> original name

-- | Represents the bounds of /known/ $ActivityType.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
instance Bounded ActivityType where
    minBound = DocumentAnnotationAdded
    maxBound = FolderUnshared

instance Hashable     ActivityType
instance NFData       ActivityType
instance ToByteString ActivityType
instance ToQuery      ActivityType
instance ToHeader     ActivityType

instance FromJSON ActivityType where
    parseJSON = parseJSONText "ActivityType"
