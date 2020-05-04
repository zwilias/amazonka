{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodeCommit.Types.Sum
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.CodeCommit.Types.Sum where

import Network.AWS.Prelude

data ApprovalState
  = ASApprove
  | ASRevoke
  deriving (Eq, Ord, Read, Show, Enum, Bounded, Data, Typeable, Generic)


instance FromText ApprovalState where
    parser = takeLowerText >>= \case
        "approve" -> pure ASApprove
        "revoke" -> pure ASRevoke
        e -> fromTextError $ "Failure parsing ApprovalState from value: '" <> e
           <> "'. Accepted values: approve, revoke"

instance ToText ApprovalState where
    toText = \case
        ASApprove -> "APPROVE"
        ASRevoke -> "REVOKE"

instance Hashable     ApprovalState
instance NFData       ApprovalState
instance ToByteString ApprovalState
instance ToQuery      ApprovalState
instance ToHeader     ApprovalState

instance ToJSON ApprovalState where
    toJSON = toJSONText

instance FromJSON ApprovalState where
    parseJSON = parseJSONText "ApprovalState"

data ChangeTypeEnum
  = A
  | D
  | M
  deriving (Eq, Ord, Read, Show, Enum, Bounded, Data, Typeable, Generic)


instance FromText ChangeTypeEnum where
    parser = takeLowerText >>= \case
        "a" -> pure A
        "d" -> pure D
        "m" -> pure M
        e -> fromTextError $ "Failure parsing ChangeTypeEnum from value: '" <> e
           <> "'. Accepted values: a, d, m"

instance ToText ChangeTypeEnum where
    toText = \case
        A -> "A"
        D -> "D"
        M -> "M"

instance Hashable     ChangeTypeEnum
instance NFData       ChangeTypeEnum
instance ToByteString ChangeTypeEnum
instance ToQuery      ChangeTypeEnum
instance ToHeader     ChangeTypeEnum

instance FromJSON ChangeTypeEnum where
    parseJSON = parseJSONText "ChangeTypeEnum"

data ConflictDetailLevelTypeEnum
  = FileLevel
  | LineLevel
  deriving (Eq, Ord, Read, Show, Enum, Bounded, Data, Typeable, Generic)


instance FromText ConflictDetailLevelTypeEnum where
    parser = takeLowerText >>= \case
        "file_level" -> pure FileLevel
        "line_level" -> pure LineLevel
        e -> fromTextError $ "Failure parsing ConflictDetailLevelTypeEnum from value: '" <> e
           <> "'. Accepted values: file_level, line_level"

instance ToText ConflictDetailLevelTypeEnum where
    toText = \case
        FileLevel -> "FILE_LEVEL"
        LineLevel -> "LINE_LEVEL"

instance Hashable     ConflictDetailLevelTypeEnum
instance NFData       ConflictDetailLevelTypeEnum
instance ToByteString ConflictDetailLevelTypeEnum
instance ToQuery      ConflictDetailLevelTypeEnum
instance ToHeader     ConflictDetailLevelTypeEnum

instance ToJSON ConflictDetailLevelTypeEnum where
    toJSON = toJSONText

data ConflictResolutionStrategyTypeEnum
  = AcceptDestination
  | AcceptSource
  | Automerge
  | None
  deriving (Eq, Ord, Read, Show, Enum, Bounded, Data, Typeable, Generic)


instance FromText ConflictResolutionStrategyTypeEnum where
    parser = takeLowerText >>= \case
        "accept_destination" -> pure AcceptDestination
        "accept_source" -> pure AcceptSource
        "automerge" -> pure Automerge
        "none" -> pure None
        e -> fromTextError $ "Failure parsing ConflictResolutionStrategyTypeEnum from value: '" <> e
           <> "'. Accepted values: accept_destination, accept_source, automerge, none"

instance ToText ConflictResolutionStrategyTypeEnum where
    toText = \case
        AcceptDestination -> "ACCEPT_DESTINATION"
        AcceptSource -> "ACCEPT_SOURCE"
        Automerge -> "AUTOMERGE"
        None -> "NONE"

instance Hashable     ConflictResolutionStrategyTypeEnum
instance NFData       ConflictResolutionStrategyTypeEnum
instance ToByteString ConflictResolutionStrategyTypeEnum
instance ToQuery      ConflictResolutionStrategyTypeEnum
instance ToHeader     ConflictResolutionStrategyTypeEnum

instance ToJSON ConflictResolutionStrategyTypeEnum where
    toJSON = toJSONText

data FileModeTypeEnum
  = Executable
  | Normal
  | Symlink
  deriving (Eq, Ord, Read, Show, Enum, Bounded, Data, Typeable, Generic)


instance FromText FileModeTypeEnum where
    parser = takeLowerText >>= \case
        "executable" -> pure Executable
        "normal" -> pure Normal
        "symlink" -> pure Symlink
        e -> fromTextError $ "Failure parsing FileModeTypeEnum from value: '" <> e
           <> "'. Accepted values: executable, normal, symlink"

instance ToText FileModeTypeEnum where
    toText = \case
        Executable -> "EXECUTABLE"
        Normal -> "NORMAL"
        Symlink -> "SYMLINK"

instance Hashable     FileModeTypeEnum
instance NFData       FileModeTypeEnum
instance ToByteString FileModeTypeEnum
instance ToQuery      FileModeTypeEnum
instance ToHeader     FileModeTypeEnum

instance ToJSON FileModeTypeEnum where
    toJSON = toJSONText

instance FromJSON FileModeTypeEnum where
    parseJSON = parseJSONText "FileModeTypeEnum"

data MergeOptionTypeEnum
  = FastForwardMerge
  | SquashMerge
  | ThreeWayMerge
  deriving (Eq, Ord, Read, Show, Enum, Bounded, Data, Typeable, Generic)


instance FromText MergeOptionTypeEnum where
    parser = takeLowerText >>= \case
        "fast_forward_merge" -> pure FastForwardMerge
        "squash_merge" -> pure SquashMerge
        "three_way_merge" -> pure ThreeWayMerge
        e -> fromTextError $ "Failure parsing MergeOptionTypeEnum from value: '" <> e
           <> "'. Accepted values: fast_forward_merge, squash_merge, three_way_merge"

instance ToText MergeOptionTypeEnum where
    toText = \case
        FastForwardMerge -> "FAST_FORWARD_MERGE"
        SquashMerge -> "SQUASH_MERGE"
        ThreeWayMerge -> "THREE_WAY_MERGE"

instance Hashable     MergeOptionTypeEnum
instance NFData       MergeOptionTypeEnum
instance ToByteString MergeOptionTypeEnum
instance ToQuery      MergeOptionTypeEnum
instance ToHeader     MergeOptionTypeEnum

instance ToJSON MergeOptionTypeEnum where
    toJSON = toJSONText

instance FromJSON MergeOptionTypeEnum where
    parseJSON = parseJSONText "MergeOptionTypeEnum"

data ObjectTypeEnum
  = Directory
  | File
  | GitLink
  | SymbolicLink
  deriving (Eq, Ord, Read, Show, Enum, Bounded, Data, Typeable, Generic)


instance FromText ObjectTypeEnum where
    parser = takeLowerText >>= \case
        "directory" -> pure Directory
        "file" -> pure File
        "git_link" -> pure GitLink
        "symbolic_link" -> pure SymbolicLink
        e -> fromTextError $ "Failure parsing ObjectTypeEnum from value: '" <> e
           <> "'. Accepted values: directory, file, git_link, symbolic_link"

instance ToText ObjectTypeEnum where
    toText = \case
        Directory -> "DIRECTORY"
        File -> "FILE"
        GitLink -> "GIT_LINK"
        SymbolicLink -> "SYMBOLIC_LINK"

instance Hashable     ObjectTypeEnum
instance NFData       ObjectTypeEnum
instance ToByteString ObjectTypeEnum
instance ToQuery      ObjectTypeEnum
instance ToHeader     ObjectTypeEnum

instance FromJSON ObjectTypeEnum where
    parseJSON = parseJSONText "ObjectTypeEnum"

data OrderEnum
  = Ascending
  | Descending
  deriving (Eq, Ord, Read, Show, Enum, Bounded, Data, Typeable, Generic)


instance FromText OrderEnum where
    parser = takeLowerText >>= \case
        "ascending" -> pure Ascending
        "descending" -> pure Descending
        e -> fromTextError $ "Failure parsing OrderEnum from value: '" <> e
           <> "'. Accepted values: ascending, descending"

instance ToText OrderEnum where
    toText = \case
        Ascending -> "ascending"
        Descending -> "descending"

instance Hashable     OrderEnum
instance NFData       OrderEnum
instance ToByteString OrderEnum
instance ToQuery      OrderEnum
instance ToHeader     OrderEnum

instance ToJSON OrderEnum where
    toJSON = toJSONText

data OverrideStatus
  = Override
  | Revoke
  deriving (Eq, Ord, Read, Show, Enum, Bounded, Data, Typeable, Generic)


instance FromText OverrideStatus where
    parser = takeLowerText >>= \case
        "override" -> pure Override
        "revoke" -> pure Revoke
        e -> fromTextError $ "Failure parsing OverrideStatus from value: '" <> e
           <> "'. Accepted values: override, revoke"

instance ToText OverrideStatus where
    toText = \case
        Override -> "OVERRIDE"
        Revoke -> "REVOKE"

instance Hashable     OverrideStatus
instance NFData       OverrideStatus
instance ToByteString OverrideStatus
instance ToQuery      OverrideStatus
instance ToHeader     OverrideStatus

instance ToJSON OverrideStatus where
    toJSON = toJSONText

instance FromJSON OverrideStatus where
    parseJSON = parseJSONText "OverrideStatus"

data PullRequestEventType
  = PullRequestApprovalRuleCreated
  | PullRequestApprovalRuleDeleted
  | PullRequestApprovalRuleOverridden
  | PullRequestApprovalRuleUpdated
  | PullRequestApprovalStateChanged
  | PullRequestCreated
  | PullRequestMergeStateChanged
  | PullRequestSourceReferenceUpdated
  | PullRequestStatusChanged
  deriving (Eq, Ord, Read, Show, Enum, Bounded, Data, Typeable, Generic)


instance FromText PullRequestEventType where
    parser = takeLowerText >>= \case
        "pull_request_approval_rule_created" -> pure PullRequestApprovalRuleCreated
        "pull_request_approval_rule_deleted" -> pure PullRequestApprovalRuleDeleted
        "pull_request_approval_rule_overridden" -> pure PullRequestApprovalRuleOverridden
        "pull_request_approval_rule_updated" -> pure PullRequestApprovalRuleUpdated
        "pull_request_approval_state_changed" -> pure PullRequestApprovalStateChanged
        "pull_request_created" -> pure PullRequestCreated
        "pull_request_merge_state_changed" -> pure PullRequestMergeStateChanged
        "pull_request_source_reference_updated" -> pure PullRequestSourceReferenceUpdated
        "pull_request_status_changed" -> pure PullRequestStatusChanged
        e -> fromTextError $ "Failure parsing PullRequestEventType from value: '" <> e
           <> "'. Accepted values: pull_request_approval_rule_created, pull_request_approval_rule_deleted, pull_request_approval_rule_overridden, pull_request_approval_rule_updated, pull_request_approval_state_changed, pull_request_created, pull_request_merge_state_changed, pull_request_source_reference_updated, pull_request_status_changed"

instance ToText PullRequestEventType where
    toText = \case
        PullRequestApprovalRuleCreated -> "PULL_REQUEST_APPROVAL_RULE_CREATED"
        PullRequestApprovalRuleDeleted -> "PULL_REQUEST_APPROVAL_RULE_DELETED"
        PullRequestApprovalRuleOverridden -> "PULL_REQUEST_APPROVAL_RULE_OVERRIDDEN"
        PullRequestApprovalRuleUpdated -> "PULL_REQUEST_APPROVAL_RULE_UPDATED"
        PullRequestApprovalStateChanged -> "PULL_REQUEST_APPROVAL_STATE_CHANGED"
        PullRequestCreated -> "PULL_REQUEST_CREATED"
        PullRequestMergeStateChanged -> "PULL_REQUEST_MERGE_STATE_CHANGED"
        PullRequestSourceReferenceUpdated -> "PULL_REQUEST_SOURCE_REFERENCE_UPDATED"
        PullRequestStatusChanged -> "PULL_REQUEST_STATUS_CHANGED"

instance Hashable     PullRequestEventType
instance NFData       PullRequestEventType
instance ToByteString PullRequestEventType
instance ToQuery      PullRequestEventType
instance ToHeader     PullRequestEventType

instance ToJSON PullRequestEventType where
    toJSON = toJSONText

instance FromJSON PullRequestEventType where
    parseJSON = parseJSONText "PullRequestEventType"

data PullRequestStatusEnum
  = Closed
  | Open
  deriving (Eq, Ord, Read, Show, Enum, Bounded, Data, Typeable, Generic)


instance FromText PullRequestStatusEnum where
    parser = takeLowerText >>= \case
        "closed" -> pure Closed
        "open" -> pure Open
        e -> fromTextError $ "Failure parsing PullRequestStatusEnum from value: '" <> e
           <> "'. Accepted values: closed, open"

instance ToText PullRequestStatusEnum where
    toText = \case
        Closed -> "CLOSED"
        Open -> "OPEN"

instance Hashable     PullRequestStatusEnum
instance NFData       PullRequestStatusEnum
instance ToByteString PullRequestStatusEnum
instance ToQuery      PullRequestStatusEnum
instance ToHeader     PullRequestStatusEnum

instance ToJSON PullRequestStatusEnum where
    toJSON = toJSONText

instance FromJSON PullRequestStatusEnum where
    parseJSON = parseJSONText "PullRequestStatusEnum"

data RelativeFileVersionEnum
  = After
  | Before
  deriving (Eq, Ord, Read, Show, Enum, Bounded, Data, Typeable, Generic)


instance FromText RelativeFileVersionEnum where
    parser = takeLowerText >>= \case
        "after" -> pure After
        "before" -> pure Before
        e -> fromTextError $ "Failure parsing RelativeFileVersionEnum from value: '" <> e
           <> "'. Accepted values: after, before"

instance ToText RelativeFileVersionEnum where
    toText = \case
        After -> "AFTER"
        Before -> "BEFORE"

instance Hashable     RelativeFileVersionEnum
instance NFData       RelativeFileVersionEnum
instance ToByteString RelativeFileVersionEnum
instance ToQuery      RelativeFileVersionEnum
instance ToHeader     RelativeFileVersionEnum

instance ToJSON RelativeFileVersionEnum where
    toJSON = toJSONText

instance FromJSON RelativeFileVersionEnum where
    parseJSON = parseJSONText "RelativeFileVersionEnum"

data ReplacementTypeEnum
  = KeepBase
  | KeepDestination
  | KeepSource
  | UseNewContent
  deriving (Eq, Ord, Read, Show, Enum, Bounded, Data, Typeable, Generic)


instance FromText ReplacementTypeEnum where
    parser = takeLowerText >>= \case
        "keep_base" -> pure KeepBase
        "keep_destination" -> pure KeepDestination
        "keep_source" -> pure KeepSource
        "use_new_content" -> pure UseNewContent
        e -> fromTextError $ "Failure parsing ReplacementTypeEnum from value: '" <> e
           <> "'. Accepted values: keep_base, keep_destination, keep_source, use_new_content"

instance ToText ReplacementTypeEnum where
    toText = \case
        KeepBase -> "KEEP_BASE"
        KeepDestination -> "KEEP_DESTINATION"
        KeepSource -> "KEEP_SOURCE"
        UseNewContent -> "USE_NEW_CONTENT"

instance Hashable     ReplacementTypeEnum
instance NFData       ReplacementTypeEnum
instance ToByteString ReplacementTypeEnum
instance ToQuery      ReplacementTypeEnum
instance ToHeader     ReplacementTypeEnum

instance ToJSON ReplacementTypeEnum where
    toJSON = toJSONText

data RepositoryTriggerEventEnum
  = All
  | CreateReference
  | DeleteReference
  | UpdateReference
  deriving (Eq, Ord, Read, Show, Enum, Bounded, Data, Typeable, Generic)


instance FromText RepositoryTriggerEventEnum where
    parser = takeLowerText >>= \case
        "all" -> pure All
        "createreference" -> pure CreateReference
        "deletereference" -> pure DeleteReference
        "updatereference" -> pure UpdateReference
        e -> fromTextError $ "Failure parsing RepositoryTriggerEventEnum from value: '" <> e
           <> "'. Accepted values: all, createreference, deletereference, updatereference"

instance ToText RepositoryTriggerEventEnum where
    toText = \case
        All -> "all"
        CreateReference -> "createReference"
        DeleteReference -> "deleteReference"
        UpdateReference -> "updateReference"

instance Hashable     RepositoryTriggerEventEnum
instance NFData       RepositoryTriggerEventEnum
instance ToByteString RepositoryTriggerEventEnum
instance ToQuery      RepositoryTriggerEventEnum
instance ToHeader     RepositoryTriggerEventEnum

instance ToJSON RepositoryTriggerEventEnum where
    toJSON = toJSONText

instance FromJSON RepositoryTriggerEventEnum where
    parseJSON = parseJSONText "RepositoryTriggerEventEnum"

data SortByEnum
  = LastModifiedDate
  | RepositoryName
  deriving (Eq, Ord, Read, Show, Enum, Bounded, Data, Typeable, Generic)


instance FromText SortByEnum where
    parser = takeLowerText >>= \case
        "lastmodifieddate" -> pure LastModifiedDate
        "repositoryname" -> pure RepositoryName
        e -> fromTextError $ "Failure parsing SortByEnum from value: '" <> e
           <> "'. Accepted values: lastmodifieddate, repositoryname"

instance ToText SortByEnum where
    toText = \case
        LastModifiedDate -> "lastModifiedDate"
        RepositoryName -> "repositoryName"

instance Hashable     SortByEnum
instance NFData       SortByEnum
instance ToByteString SortByEnum
instance ToQuery      SortByEnum
instance ToHeader     SortByEnum

instance ToJSON SortByEnum where
    toJSON = toJSONText
