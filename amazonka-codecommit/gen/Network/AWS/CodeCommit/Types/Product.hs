{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodeCommit.Types.Product
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.CodeCommit.Types.Product where

import Network.AWS.CodeCommit.Types.Sum
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Returns information about a specific approval on a pull request.
--
--
--
-- /See:/ 'approval' smart constructor.
data Approval =
  Approval'
    { _aApprovalState :: !(Maybe ApprovalState)
    , _aUserARN       :: !(Maybe Text)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'Approval' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aApprovalState' - The state of the approval, APPROVE or REVOKE. REVOKE states are not stored.
--
-- * 'aUserARN' - The Amazon Resource Name (ARN) of the user.
approval
    :: Approval
approval = Approval' {_aApprovalState = Nothing, _aUserARN = Nothing}


-- | The state of the approval, APPROVE or REVOKE. REVOKE states are not stored.
aApprovalState :: Lens' Approval (Maybe ApprovalState)
aApprovalState = lens _aApprovalState (\ s a -> s{_aApprovalState = a})

-- | The Amazon Resource Name (ARN) of the user.
aUserARN :: Lens' Approval (Maybe Text)
aUserARN = lens _aUserARN (\ s a -> s{_aUserARN = a})

instance FromJSON Approval where
        parseJSON
          = withObject "Approval"
              (\ x ->
                 Approval' <$>
                   (x .:? "approvalState") <*> (x .:? "userArn"))

instance Hashable Approval where

instance NFData Approval where

-- | Returns information about an approval rule.
--
--
--
-- /See:/ 'approvalRule' smart constructor.
data ApprovalRule =
  ApprovalRule'
    { _arRuleContentSha256          :: !(Maybe Text)
    , _arLastModifiedDate           :: !(Maybe POSIX)
    , _arApprovalRuleName           :: !(Maybe Text)
    , _arApprovalRuleId             :: !(Maybe Text)
    , _arLastModifiedUser           :: !(Maybe Text)
    , _arOriginApprovalRuleTemplate :: !(Maybe OriginApprovalRuleTemplate)
    , _arCreationDate               :: !(Maybe POSIX)
    , _arApprovalRuleContent        :: !(Maybe Text)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'ApprovalRule' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'arRuleContentSha256' - The SHA-256 hash signature for the content of the approval rule.
--
-- * 'arLastModifiedDate' - The date the approval rule was most recently changed, in timestamp format.
--
-- * 'arApprovalRuleName' - The name of the approval rule.
--
-- * 'arApprovalRuleId' - The system-generated ID of the approval rule.
--
-- * 'arLastModifiedUser' - The Amazon Resource Name (ARN) of the user who made the most recent changes to the approval rule.
--
-- * 'arOriginApprovalRuleTemplate' - The approval rule template used to create the rule.
--
-- * 'arCreationDate' - The date the approval rule was created, in timestamp format.
--
-- * 'arApprovalRuleContent' - The content of the approval rule.
approvalRule
    :: ApprovalRule
approvalRule =
  ApprovalRule'
    { _arRuleContentSha256 = Nothing
    , _arLastModifiedDate = Nothing
    , _arApprovalRuleName = Nothing
    , _arApprovalRuleId = Nothing
    , _arLastModifiedUser = Nothing
    , _arOriginApprovalRuleTemplate = Nothing
    , _arCreationDate = Nothing
    , _arApprovalRuleContent = Nothing
    }


-- | The SHA-256 hash signature for the content of the approval rule.
arRuleContentSha256 :: Lens' ApprovalRule (Maybe Text)
arRuleContentSha256 = lens _arRuleContentSha256 (\ s a -> s{_arRuleContentSha256 = a})

-- | The date the approval rule was most recently changed, in timestamp format.
arLastModifiedDate :: Lens' ApprovalRule (Maybe UTCTime)
arLastModifiedDate = lens _arLastModifiedDate (\ s a -> s{_arLastModifiedDate = a}) . mapping _Time

-- | The name of the approval rule.
arApprovalRuleName :: Lens' ApprovalRule (Maybe Text)
arApprovalRuleName = lens _arApprovalRuleName (\ s a -> s{_arApprovalRuleName = a})

-- | The system-generated ID of the approval rule.
arApprovalRuleId :: Lens' ApprovalRule (Maybe Text)
arApprovalRuleId = lens _arApprovalRuleId (\ s a -> s{_arApprovalRuleId = a})

-- | The Amazon Resource Name (ARN) of the user who made the most recent changes to the approval rule.
arLastModifiedUser :: Lens' ApprovalRule (Maybe Text)
arLastModifiedUser = lens _arLastModifiedUser (\ s a -> s{_arLastModifiedUser = a})

-- | The approval rule template used to create the rule.
arOriginApprovalRuleTemplate :: Lens' ApprovalRule (Maybe OriginApprovalRuleTemplate)
arOriginApprovalRuleTemplate = lens _arOriginApprovalRuleTemplate (\ s a -> s{_arOriginApprovalRuleTemplate = a})

-- | The date the approval rule was created, in timestamp format.
arCreationDate :: Lens' ApprovalRule (Maybe UTCTime)
arCreationDate = lens _arCreationDate (\ s a -> s{_arCreationDate = a}) . mapping _Time

-- | The content of the approval rule.
arApprovalRuleContent :: Lens' ApprovalRule (Maybe Text)
arApprovalRuleContent = lens _arApprovalRuleContent (\ s a -> s{_arApprovalRuleContent = a})

instance FromJSON ApprovalRule where
        parseJSON
          = withObject "ApprovalRule"
              (\ x ->
                 ApprovalRule' <$>
                   (x .:? "ruleContentSha256") <*>
                     (x .:? "lastModifiedDate")
                     <*> (x .:? "approvalRuleName")
                     <*> (x .:? "approvalRuleId")
                     <*> (x .:? "lastModifiedUser")
                     <*> (x .:? "originApprovalRuleTemplate")
                     <*> (x .:? "creationDate")
                     <*> (x .:? "approvalRuleContent"))

instance Hashable ApprovalRule where

instance NFData ApprovalRule where

-- | Returns information about an event for an approval rule.
--
--
--
-- /See:/ 'approvalRuleEventMetadata' smart constructor.
data ApprovalRuleEventMetadata =
  ApprovalRuleEventMetadata'
    { _aremApprovalRuleName    :: !(Maybe Text)
    , _aremApprovalRuleId      :: !(Maybe Text)
    , _aremApprovalRuleContent :: !(Maybe Text)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'ApprovalRuleEventMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aremApprovalRuleName' - The name of the approval rule.
--
-- * 'aremApprovalRuleId' - The system-generated ID of the approval rule.
--
-- * 'aremApprovalRuleContent' - The content of the approval rule.
approvalRuleEventMetadata
    :: ApprovalRuleEventMetadata
approvalRuleEventMetadata =
  ApprovalRuleEventMetadata'
    { _aremApprovalRuleName = Nothing
    , _aremApprovalRuleId = Nothing
    , _aremApprovalRuleContent = Nothing
    }


-- | The name of the approval rule.
aremApprovalRuleName :: Lens' ApprovalRuleEventMetadata (Maybe Text)
aremApprovalRuleName = lens _aremApprovalRuleName (\ s a -> s{_aremApprovalRuleName = a})

-- | The system-generated ID of the approval rule.
aremApprovalRuleId :: Lens' ApprovalRuleEventMetadata (Maybe Text)
aremApprovalRuleId = lens _aremApprovalRuleId (\ s a -> s{_aremApprovalRuleId = a})

-- | The content of the approval rule.
aremApprovalRuleContent :: Lens' ApprovalRuleEventMetadata (Maybe Text)
aremApprovalRuleContent = lens _aremApprovalRuleContent (\ s a -> s{_aremApprovalRuleContent = a})

instance FromJSON ApprovalRuleEventMetadata where
        parseJSON
          = withObject "ApprovalRuleEventMetadata"
              (\ x ->
                 ApprovalRuleEventMetadata' <$>
                   (x .:? "approvalRuleName") <*>
                     (x .:? "approvalRuleId")
                     <*> (x .:? "approvalRuleContent"))

instance Hashable ApprovalRuleEventMetadata where

instance NFData ApprovalRuleEventMetadata where

-- | Returns information about an override event for approval rules for a pull request.
--
--
--
-- /See:/ 'approvalRuleOverriddenEventMetadata' smart constructor.
data ApprovalRuleOverriddenEventMetadata =
  ApprovalRuleOverriddenEventMetadata'
    { _aroemOverrideStatus :: !(Maybe OverrideStatus)
    , _aroemRevisionId     :: !(Maybe Text)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'ApprovalRuleOverriddenEventMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aroemOverrideStatus' - The status of the override event.
--
-- * 'aroemRevisionId' - The revision ID of the pull request when the override event occurred.
approvalRuleOverriddenEventMetadata
    :: ApprovalRuleOverriddenEventMetadata
approvalRuleOverriddenEventMetadata =
  ApprovalRuleOverriddenEventMetadata'
    {_aroemOverrideStatus = Nothing, _aroemRevisionId = Nothing}


-- | The status of the override event.
aroemOverrideStatus :: Lens' ApprovalRuleOverriddenEventMetadata (Maybe OverrideStatus)
aroemOverrideStatus = lens _aroemOverrideStatus (\ s a -> s{_aroemOverrideStatus = a})

-- | The revision ID of the pull request when the override event occurred.
aroemRevisionId :: Lens' ApprovalRuleOverriddenEventMetadata (Maybe Text)
aroemRevisionId = lens _aroemRevisionId (\ s a -> s{_aroemRevisionId = a})

instance FromJSON ApprovalRuleOverriddenEventMetadata
         where
        parseJSON
          = withObject "ApprovalRuleOverriddenEventMetadata"
              (\ x ->
                 ApprovalRuleOverriddenEventMetadata' <$>
                   (x .:? "overrideStatus") <*> (x .:? "revisionId"))

instance Hashable ApprovalRuleOverriddenEventMetadata
         where

instance NFData ApprovalRuleOverriddenEventMetadata
         where

-- | Returns information about an approval rule template.
--
--
--
-- /See:/ 'approvalRuleTemplate' smart constructor.
data ApprovalRuleTemplate =
  ApprovalRuleTemplate'
    { _artRuleContentSha256               :: !(Maybe Text)
    , _artApprovalRuleTemplateId          :: !(Maybe Text)
    , _artLastModifiedDate                :: !(Maybe POSIX)
    , _artApprovalRuleTemplateDescription :: !(Maybe Text)
    , _artApprovalRuleTemplateContent     :: !(Maybe Text)
    , _artLastModifiedUser                :: !(Maybe Text)
    , _artCreationDate                    :: !(Maybe POSIX)
    , _artApprovalRuleTemplateName        :: !(Maybe Text)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'ApprovalRuleTemplate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'artRuleContentSha256' - The SHA-256 hash signature for the content of the approval rule template.
--
-- * 'artApprovalRuleTemplateId' - The system-generated ID of the approval rule template.
--
-- * 'artLastModifiedDate' - The date the approval rule template was most recently changed, in timestamp format.
--
-- * 'artApprovalRuleTemplateDescription' - The description of the approval rule template.
--
-- * 'artApprovalRuleTemplateContent' - The content of the approval rule template.
--
-- * 'artLastModifiedUser' - The Amazon Resource Name (ARN) of the user who made the most recent changes to the approval rule template.
--
-- * 'artCreationDate' - The date the approval rule template was created, in timestamp format.
--
-- * 'artApprovalRuleTemplateName' - The name of the approval rule template.
approvalRuleTemplate
    :: ApprovalRuleTemplate
approvalRuleTemplate =
  ApprovalRuleTemplate'
    { _artRuleContentSha256 = Nothing
    , _artApprovalRuleTemplateId = Nothing
    , _artLastModifiedDate = Nothing
    , _artApprovalRuleTemplateDescription = Nothing
    , _artApprovalRuleTemplateContent = Nothing
    , _artLastModifiedUser = Nothing
    , _artCreationDate = Nothing
    , _artApprovalRuleTemplateName = Nothing
    }


-- | The SHA-256 hash signature for the content of the approval rule template.
artRuleContentSha256 :: Lens' ApprovalRuleTemplate (Maybe Text)
artRuleContentSha256 = lens _artRuleContentSha256 (\ s a -> s{_artRuleContentSha256 = a})

-- | The system-generated ID of the approval rule template.
artApprovalRuleTemplateId :: Lens' ApprovalRuleTemplate (Maybe Text)
artApprovalRuleTemplateId = lens _artApprovalRuleTemplateId (\ s a -> s{_artApprovalRuleTemplateId = a})

-- | The date the approval rule template was most recently changed, in timestamp format.
artLastModifiedDate :: Lens' ApprovalRuleTemplate (Maybe UTCTime)
artLastModifiedDate = lens _artLastModifiedDate (\ s a -> s{_artLastModifiedDate = a}) . mapping _Time

-- | The description of the approval rule template.
artApprovalRuleTemplateDescription :: Lens' ApprovalRuleTemplate (Maybe Text)
artApprovalRuleTemplateDescription = lens _artApprovalRuleTemplateDescription (\ s a -> s{_artApprovalRuleTemplateDescription = a})

-- | The content of the approval rule template.
artApprovalRuleTemplateContent :: Lens' ApprovalRuleTemplate (Maybe Text)
artApprovalRuleTemplateContent = lens _artApprovalRuleTemplateContent (\ s a -> s{_artApprovalRuleTemplateContent = a})

-- | The Amazon Resource Name (ARN) of the user who made the most recent changes to the approval rule template.
artLastModifiedUser :: Lens' ApprovalRuleTemplate (Maybe Text)
artLastModifiedUser = lens _artLastModifiedUser (\ s a -> s{_artLastModifiedUser = a})

-- | The date the approval rule template was created, in timestamp format.
artCreationDate :: Lens' ApprovalRuleTemplate (Maybe UTCTime)
artCreationDate = lens _artCreationDate (\ s a -> s{_artCreationDate = a}) . mapping _Time

-- | The name of the approval rule template.
artApprovalRuleTemplateName :: Lens' ApprovalRuleTemplate (Maybe Text)
artApprovalRuleTemplateName = lens _artApprovalRuleTemplateName (\ s a -> s{_artApprovalRuleTemplateName = a})

instance FromJSON ApprovalRuleTemplate where
        parseJSON
          = withObject "ApprovalRuleTemplate"
              (\ x ->
                 ApprovalRuleTemplate' <$>
                   (x .:? "ruleContentSha256") <*>
                     (x .:? "approvalRuleTemplateId")
                     <*> (x .:? "lastModifiedDate")
                     <*> (x .:? "approvalRuleTemplateDescription")
                     <*> (x .:? "approvalRuleTemplateContent")
                     <*> (x .:? "lastModifiedUser")
                     <*> (x .:? "creationDate")
                     <*> (x .:? "approvalRuleTemplateName"))

instance Hashable ApprovalRuleTemplate where

instance NFData ApprovalRuleTemplate where

-- | Returns information about a change in the approval state for a pull request.
--
--
--
-- /See:/ 'approvalStateChangedEventMetadata' smart constructor.
data ApprovalStateChangedEventMetadata =
  ApprovalStateChangedEventMetadata'
    { _ascemApprovalStatus :: !(Maybe ApprovalState)
    , _ascemRevisionId     :: !(Maybe Text)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'ApprovalStateChangedEventMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ascemApprovalStatus' - The approval status for the pull request.
--
-- * 'ascemRevisionId' - The revision ID of the pull request when the approval state changed.
approvalStateChangedEventMetadata
    :: ApprovalStateChangedEventMetadata
approvalStateChangedEventMetadata =
  ApprovalStateChangedEventMetadata'
    {_ascemApprovalStatus = Nothing, _ascemRevisionId = Nothing}


-- | The approval status for the pull request.
ascemApprovalStatus :: Lens' ApprovalStateChangedEventMetadata (Maybe ApprovalState)
ascemApprovalStatus = lens _ascemApprovalStatus (\ s a -> s{_ascemApprovalStatus = a})

-- | The revision ID of the pull request when the approval state changed.
ascemRevisionId :: Lens' ApprovalStateChangedEventMetadata (Maybe Text)
ascemRevisionId = lens _ascemRevisionId (\ s a -> s{_ascemRevisionId = a})

instance FromJSON ApprovalStateChangedEventMetadata
         where
        parseJSON
          = withObject "ApprovalStateChangedEventMetadata"
              (\ x ->
                 ApprovalStateChangedEventMetadata' <$>
                   (x .:? "approvalStatus") <*> (x .:? "revisionId"))

instance Hashable ApprovalStateChangedEventMetadata
         where

instance NFData ApprovalStateChangedEventMetadata
         where

-- | Returns information about errors in a BatchAssociateApprovalRuleTemplateWithRepositories operation.
--
--
--
-- /See:/ 'batchAssociateApprovalRuleTemplateWithRepositoriesError' smart constructor.
data BatchAssociateApprovalRuleTemplateWithRepositoriesError =
  BatchAssociateApprovalRuleTemplateWithRepositoriesError'
    { _baartwreErrorCode      :: !(Maybe Text)
    , _baartwreRepositoryName :: !(Maybe Text)
    , _baartwreErrorMessage   :: !(Maybe Text)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'BatchAssociateApprovalRuleTemplateWithRepositoriesError' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'baartwreErrorCode' - An error code that specifies whether the repository name was not valid or not found.
--
-- * 'baartwreRepositoryName' - The name of the repository where the association was not made.
--
-- * 'baartwreErrorMessage' - An error message that provides details about why the repository name was not found or not valid.
batchAssociateApprovalRuleTemplateWithRepositoriesError
    :: BatchAssociateApprovalRuleTemplateWithRepositoriesError
batchAssociateApprovalRuleTemplateWithRepositoriesError =
  BatchAssociateApprovalRuleTemplateWithRepositoriesError'
    { _baartwreErrorCode = Nothing
    , _baartwreRepositoryName = Nothing
    , _baartwreErrorMessage = Nothing
    }


-- | An error code that specifies whether the repository name was not valid or not found.
baartwreErrorCode :: Lens' BatchAssociateApprovalRuleTemplateWithRepositoriesError (Maybe Text)
baartwreErrorCode = lens _baartwreErrorCode (\ s a -> s{_baartwreErrorCode = a})

-- | The name of the repository where the association was not made.
baartwreRepositoryName :: Lens' BatchAssociateApprovalRuleTemplateWithRepositoriesError (Maybe Text)
baartwreRepositoryName = lens _baartwreRepositoryName (\ s a -> s{_baartwreRepositoryName = a})

-- | An error message that provides details about why the repository name was not found or not valid.
baartwreErrorMessage :: Lens' BatchAssociateApprovalRuleTemplateWithRepositoriesError (Maybe Text)
baartwreErrorMessage = lens _baartwreErrorMessage (\ s a -> s{_baartwreErrorMessage = a})

instance FromJSON
           BatchAssociateApprovalRuleTemplateWithRepositoriesError
         where
        parseJSON
          = withObject
              "BatchAssociateApprovalRuleTemplateWithRepositoriesError"
              (\ x ->
                 BatchAssociateApprovalRuleTemplateWithRepositoriesError'
                   <$>
                   (x .:? "errorCode") <*> (x .:? "repositoryName") <*>
                     (x .:? "errorMessage"))

instance Hashable
           BatchAssociateApprovalRuleTemplateWithRepositoriesError
         where

instance NFData
           BatchAssociateApprovalRuleTemplateWithRepositoriesError
         where

-- | Returns information about errors in a BatchDescribeMergeConflicts operation.
--
--
--
-- /See:/ 'batchDescribeMergeConflictsError' smart constructor.
data BatchDescribeMergeConflictsError =
  BatchDescribeMergeConflictsError'
    { _bdmceFilePath      :: !Text
    , _bdmceExceptionName :: !Text
    , _bdmceMessage       :: !Text
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'BatchDescribeMergeConflictsError' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bdmceFilePath' - The path to the file.
--
-- * 'bdmceExceptionName' - The name of the exception.
--
-- * 'bdmceMessage' - The message provided by the exception.
batchDescribeMergeConflictsError
    :: Text -- ^ 'bdmceFilePath'
    -> Text -- ^ 'bdmceExceptionName'
    -> Text -- ^ 'bdmceMessage'
    -> BatchDescribeMergeConflictsError
batchDescribeMergeConflictsError pFilePath_ pExceptionName_ pMessage_ =
  BatchDescribeMergeConflictsError'
    { _bdmceFilePath = pFilePath_
    , _bdmceExceptionName = pExceptionName_
    , _bdmceMessage = pMessage_
    }


-- | The path to the file.
bdmceFilePath :: Lens' BatchDescribeMergeConflictsError Text
bdmceFilePath = lens _bdmceFilePath (\ s a -> s{_bdmceFilePath = a})

-- | The name of the exception.
bdmceExceptionName :: Lens' BatchDescribeMergeConflictsError Text
bdmceExceptionName = lens _bdmceExceptionName (\ s a -> s{_bdmceExceptionName = a})

-- | The message provided by the exception.
bdmceMessage :: Lens' BatchDescribeMergeConflictsError Text
bdmceMessage = lens _bdmceMessage (\ s a -> s{_bdmceMessage = a})

instance FromJSON BatchDescribeMergeConflictsError
         where
        parseJSON
          = withObject "BatchDescribeMergeConflictsError"
              (\ x ->
                 BatchDescribeMergeConflictsError' <$>
                   (x .: "filePath") <*> (x .: "exceptionName") <*>
                     (x .: "message"))

instance Hashable BatchDescribeMergeConflictsError
         where

instance NFData BatchDescribeMergeConflictsError
         where

-- | Returns information about errors in a BatchDisassociateApprovalRuleTemplateFromRepositories operation.
--
--
--
-- /See:/ 'batchDisassociateApprovalRuleTemplateFromRepositoriesError' smart constructor.
data BatchDisassociateApprovalRuleTemplateFromRepositoriesError =
  BatchDisassociateApprovalRuleTemplateFromRepositoriesError'
    { _bdartfreErrorCode      :: !(Maybe Text)
    , _bdartfreRepositoryName :: !(Maybe Text)
    , _bdartfreErrorMessage   :: !(Maybe Text)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'BatchDisassociateApprovalRuleTemplateFromRepositoriesError' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bdartfreErrorCode' - An error code that specifies whether the repository name was not valid or not found.
--
-- * 'bdartfreRepositoryName' - The name of the repository where the association with the template was not able to be removed.
--
-- * 'bdartfreErrorMessage' - An error message that provides details about why the repository name was either not found or not valid.
batchDisassociateApprovalRuleTemplateFromRepositoriesError
    :: BatchDisassociateApprovalRuleTemplateFromRepositoriesError
batchDisassociateApprovalRuleTemplateFromRepositoriesError =
  BatchDisassociateApprovalRuleTemplateFromRepositoriesError'
    { _bdartfreErrorCode = Nothing
    , _bdartfreRepositoryName = Nothing
    , _bdartfreErrorMessage = Nothing
    }


-- | An error code that specifies whether the repository name was not valid or not found.
bdartfreErrorCode :: Lens' BatchDisassociateApprovalRuleTemplateFromRepositoriesError (Maybe Text)
bdartfreErrorCode = lens _bdartfreErrorCode (\ s a -> s{_bdartfreErrorCode = a})

-- | The name of the repository where the association with the template was not able to be removed.
bdartfreRepositoryName :: Lens' BatchDisassociateApprovalRuleTemplateFromRepositoriesError (Maybe Text)
bdartfreRepositoryName = lens _bdartfreRepositoryName (\ s a -> s{_bdartfreRepositoryName = a})

-- | An error message that provides details about why the repository name was either not found or not valid.
bdartfreErrorMessage :: Lens' BatchDisassociateApprovalRuleTemplateFromRepositoriesError (Maybe Text)
bdartfreErrorMessage = lens _bdartfreErrorMessage (\ s a -> s{_bdartfreErrorMessage = a})

instance FromJSON
           BatchDisassociateApprovalRuleTemplateFromRepositoriesError
         where
        parseJSON
          = withObject
              "BatchDisassociateApprovalRuleTemplateFromRepositoriesError"
              (\ x ->
                 BatchDisassociateApprovalRuleTemplateFromRepositoriesError'
                   <$>
                   (x .:? "errorCode") <*> (x .:? "repositoryName") <*>
                     (x .:? "errorMessage"))

instance Hashable
           BatchDisassociateApprovalRuleTemplateFromRepositoriesError
         where

instance NFData
           BatchDisassociateApprovalRuleTemplateFromRepositoriesError
         where

-- | Returns information about errors in a BatchGetCommits operation.
--
--
--
-- /See:/ 'batchGetCommitsError' smart constructor.
data BatchGetCommitsError =
  BatchGetCommitsError'
    { _bgceCommitId     :: !(Maybe Text)
    , _bgceErrorCode    :: !(Maybe Text)
    , _bgceErrorMessage :: !(Maybe Text)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'BatchGetCommitsError' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bgceCommitId' - A commit ID that either could not be found or was not in a valid format.
--
-- * 'bgceErrorCode' - An error code that specifies whether the commit ID was not valid or not found.
--
-- * 'bgceErrorMessage' - An error message that provides detail about why the commit ID either was not found or was not valid.
batchGetCommitsError
    :: BatchGetCommitsError
batchGetCommitsError =
  BatchGetCommitsError'
    { _bgceCommitId = Nothing
    , _bgceErrorCode = Nothing
    , _bgceErrorMessage = Nothing
    }


-- | A commit ID that either could not be found or was not in a valid format.
bgceCommitId :: Lens' BatchGetCommitsError (Maybe Text)
bgceCommitId = lens _bgceCommitId (\ s a -> s{_bgceCommitId = a})

-- | An error code that specifies whether the commit ID was not valid or not found.
bgceErrorCode :: Lens' BatchGetCommitsError (Maybe Text)
bgceErrorCode = lens _bgceErrorCode (\ s a -> s{_bgceErrorCode = a})

-- | An error message that provides detail about why the commit ID either was not found or was not valid.
bgceErrorMessage :: Lens' BatchGetCommitsError (Maybe Text)
bgceErrorMessage = lens _bgceErrorMessage (\ s a -> s{_bgceErrorMessage = a})

instance FromJSON BatchGetCommitsError where
        parseJSON
          = withObject "BatchGetCommitsError"
              (\ x ->
                 BatchGetCommitsError' <$>
                   (x .:? "commitId") <*> (x .:? "errorCode") <*>
                     (x .:? "errorMessage"))

instance Hashable BatchGetCommitsError where

instance NFData BatchGetCommitsError where

-- | Returns information about a specific Git blob object.
--
--
--
-- /See:/ 'blobMetadata' smart constructor.
data BlobMetadata =
  BlobMetadata'
    { _bmPath   :: !(Maybe Text)
    , _bmMode   :: !(Maybe Text)
    , _bmBlobId :: !(Maybe Text)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'BlobMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bmPath' - The path to the blob and associated file name, if any.
--
-- * 'bmMode' - The file mode permissions of the blob. File mode permission codes include:     * @100644@ indicates read/write     * @100755@ indicates read/write/execute     * @160000@ indicates a submodule     * @120000@ indicates a symlink
--
-- * 'bmBlobId' - The full ID of the blob.
blobMetadata
    :: BlobMetadata
blobMetadata =
  BlobMetadata' {_bmPath = Nothing, _bmMode = Nothing, _bmBlobId = Nothing}


-- | The path to the blob and associated file name, if any.
bmPath :: Lens' BlobMetadata (Maybe Text)
bmPath = lens _bmPath (\ s a -> s{_bmPath = a})

-- | The file mode permissions of the blob. File mode permission codes include:     * @100644@ indicates read/write     * @100755@ indicates read/write/execute     * @160000@ indicates a submodule     * @120000@ indicates a symlink
bmMode :: Lens' BlobMetadata (Maybe Text)
bmMode = lens _bmMode (\ s a -> s{_bmMode = a})

-- | The full ID of the blob.
bmBlobId :: Lens' BlobMetadata (Maybe Text)
bmBlobId = lens _bmBlobId (\ s a -> s{_bmBlobId = a})

instance FromJSON BlobMetadata where
        parseJSON
          = withObject "BlobMetadata"
              (\ x ->
                 BlobMetadata' <$>
                   (x .:? "path") <*> (x .:? "mode") <*>
                     (x .:? "blobId"))

instance Hashable BlobMetadata where

instance NFData BlobMetadata where

-- | Returns information about a branch.
--
--
--
-- /See:/ 'branchInfo' smart constructor.
data BranchInfo =
  BranchInfo'
    { _biCommitId   :: !(Maybe Text)
    , _biBranchName :: !(Maybe Text)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'BranchInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'biCommitId' - The ID of the last commit made to the branch.
--
-- * 'biBranchName' - The name of the branch.
branchInfo
    :: BranchInfo
branchInfo = BranchInfo' {_biCommitId = Nothing, _biBranchName = Nothing}


-- | The ID of the last commit made to the branch.
biCommitId :: Lens' BranchInfo (Maybe Text)
biCommitId = lens _biCommitId (\ s a -> s{_biCommitId = a})

-- | The name of the branch.
biBranchName :: Lens' BranchInfo (Maybe Text)
biBranchName = lens _biBranchName (\ s a -> s{_biBranchName = a})

instance FromJSON BranchInfo where
        parseJSON
          = withObject "BranchInfo"
              (\ x ->
                 BranchInfo' <$>
                   (x .:? "commitId") <*> (x .:? "branchName"))

instance Hashable BranchInfo where

instance NFData BranchInfo where

-- | Returns information about a specific comment.
--
--
--
-- /See:/ 'comment' smart constructor.
data Comment =
  Comment'
    { _cLastModifiedDate   :: !(Maybe POSIX)
    , _cAuthorARN          :: !(Maybe Text)
    , _cContent            :: !(Maybe Text)
    , _cCreationDate       :: !(Maybe POSIX)
    , _cDeleted            :: !(Maybe Bool)
    , _cClientRequestToken :: !(Maybe Text)
    , _cCommentId          :: !(Maybe Text)
    , _cInReplyTo          :: !(Maybe Text)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'Comment' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cLastModifiedDate' - The date and time the comment was most recently modified, in timestamp format.
--
-- * 'cAuthorARN' - The Amazon Resource Name (ARN) of the person who posted the comment.
--
-- * 'cContent' - The content of the comment.
--
-- * 'cCreationDate' - The date and time the comment was created, in timestamp format.
--
-- * 'cDeleted' - A Boolean value indicating whether the comment has been deleted.
--
-- * 'cClientRequestToken' - A unique, client-generated idempotency token that, when provided in a request, ensures the request cannot be repeated with a changed parameter. If a request is received with the same parameters and a token is included, the request returns information about the initial request that used that token.
--
-- * 'cCommentId' - The system-generated comment ID.
--
-- * 'cInReplyTo' - The ID of the comment for which this comment is a reply, if any.
comment
    :: Comment
comment =
  Comment'
    { _cLastModifiedDate = Nothing
    , _cAuthorARN = Nothing
    , _cContent = Nothing
    , _cCreationDate = Nothing
    , _cDeleted = Nothing
    , _cClientRequestToken = Nothing
    , _cCommentId = Nothing
    , _cInReplyTo = Nothing
    }


-- | The date and time the comment was most recently modified, in timestamp format.
cLastModifiedDate :: Lens' Comment (Maybe UTCTime)
cLastModifiedDate = lens _cLastModifiedDate (\ s a -> s{_cLastModifiedDate = a}) . mapping _Time

-- | The Amazon Resource Name (ARN) of the person who posted the comment.
cAuthorARN :: Lens' Comment (Maybe Text)
cAuthorARN = lens _cAuthorARN (\ s a -> s{_cAuthorARN = a})

-- | The content of the comment.
cContent :: Lens' Comment (Maybe Text)
cContent = lens _cContent (\ s a -> s{_cContent = a})

-- | The date and time the comment was created, in timestamp format.
cCreationDate :: Lens' Comment (Maybe UTCTime)
cCreationDate = lens _cCreationDate (\ s a -> s{_cCreationDate = a}) . mapping _Time

-- | A Boolean value indicating whether the comment has been deleted.
cDeleted :: Lens' Comment (Maybe Bool)
cDeleted = lens _cDeleted (\ s a -> s{_cDeleted = a})

-- | A unique, client-generated idempotency token that, when provided in a request, ensures the request cannot be repeated with a changed parameter. If a request is received with the same parameters and a token is included, the request returns information about the initial request that used that token.
cClientRequestToken :: Lens' Comment (Maybe Text)
cClientRequestToken = lens _cClientRequestToken (\ s a -> s{_cClientRequestToken = a})

-- | The system-generated comment ID.
cCommentId :: Lens' Comment (Maybe Text)
cCommentId = lens _cCommentId (\ s a -> s{_cCommentId = a})

-- | The ID of the comment for which this comment is a reply, if any.
cInReplyTo :: Lens' Comment (Maybe Text)
cInReplyTo = lens _cInReplyTo (\ s a -> s{_cInReplyTo = a})

instance FromJSON Comment where
        parseJSON
          = withObject "Comment"
              (\ x ->
                 Comment' <$>
                   (x .:? "lastModifiedDate") <*> (x .:? "authorArn")
                     <*> (x .:? "content")
                     <*> (x .:? "creationDate")
                     <*> (x .:? "deleted")
                     <*> (x .:? "clientRequestToken")
                     <*> (x .:? "commentId")
                     <*> (x .:? "inReplyTo"))

instance Hashable Comment where

instance NFData Comment where

-- | Returns information about comments on the comparison between two commits.
--
--
--
-- /See:/ 'commentsForComparedCommit' smart constructor.
data CommentsForComparedCommit =
  CommentsForComparedCommit'
    { _cfccBeforeBlobId   :: !(Maybe Text)
    , _cfccLocation       :: !(Maybe Location)
    , _cfccAfterCommitId  :: !(Maybe Text)
    , _cfccAfterBlobId    :: !(Maybe Text)
    , _cfccBeforeCommitId :: !(Maybe Text)
    , _cfccRepositoryName :: !(Maybe Text)
    , _cfccComments       :: !(Maybe [Comment])
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'CommentsForComparedCommit' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cfccBeforeBlobId' - The full blob ID of the commit used to establish the before of the comparison.
--
-- * 'cfccLocation' - Location information about the comment on the comparison, including the file name, line number, and whether the version of the file where the comment was made is BEFORE or AFTER.
--
-- * 'cfccAfterCommitId' - The full commit ID of the commit used to establish the after of the comparison.
--
-- * 'cfccAfterBlobId' - The full blob ID of the commit used to establish the after of the comparison.
--
-- * 'cfccBeforeCommitId' - The full commit ID of the commit used to establish the before of the comparison.
--
-- * 'cfccRepositoryName' - The name of the repository that contains the compared commits.
--
-- * 'cfccComments' - An array of comment objects. Each comment object contains information about a comment on the comparison between commits.
commentsForComparedCommit
    :: CommentsForComparedCommit
commentsForComparedCommit =
  CommentsForComparedCommit'
    { _cfccBeforeBlobId = Nothing
    , _cfccLocation = Nothing
    , _cfccAfterCommitId = Nothing
    , _cfccAfterBlobId = Nothing
    , _cfccBeforeCommitId = Nothing
    , _cfccRepositoryName = Nothing
    , _cfccComments = Nothing
    }


-- | The full blob ID of the commit used to establish the before of the comparison.
cfccBeforeBlobId :: Lens' CommentsForComparedCommit (Maybe Text)
cfccBeforeBlobId = lens _cfccBeforeBlobId (\ s a -> s{_cfccBeforeBlobId = a})

-- | Location information about the comment on the comparison, including the file name, line number, and whether the version of the file where the comment was made is BEFORE or AFTER.
cfccLocation :: Lens' CommentsForComparedCommit (Maybe Location)
cfccLocation = lens _cfccLocation (\ s a -> s{_cfccLocation = a})

-- | The full commit ID of the commit used to establish the after of the comparison.
cfccAfterCommitId :: Lens' CommentsForComparedCommit (Maybe Text)
cfccAfterCommitId = lens _cfccAfterCommitId (\ s a -> s{_cfccAfterCommitId = a})

-- | The full blob ID of the commit used to establish the after of the comparison.
cfccAfterBlobId :: Lens' CommentsForComparedCommit (Maybe Text)
cfccAfterBlobId = lens _cfccAfterBlobId (\ s a -> s{_cfccAfterBlobId = a})

-- | The full commit ID of the commit used to establish the before of the comparison.
cfccBeforeCommitId :: Lens' CommentsForComparedCommit (Maybe Text)
cfccBeforeCommitId = lens _cfccBeforeCommitId (\ s a -> s{_cfccBeforeCommitId = a})

-- | The name of the repository that contains the compared commits.
cfccRepositoryName :: Lens' CommentsForComparedCommit (Maybe Text)
cfccRepositoryName = lens _cfccRepositoryName (\ s a -> s{_cfccRepositoryName = a})

-- | An array of comment objects. Each comment object contains information about a comment on the comparison between commits.
cfccComments :: Lens' CommentsForComparedCommit [Comment]
cfccComments = lens _cfccComments (\ s a -> s{_cfccComments = a}) . _Default . _Coerce

instance FromJSON CommentsForComparedCommit where
        parseJSON
          = withObject "CommentsForComparedCommit"
              (\ x ->
                 CommentsForComparedCommit' <$>
                   (x .:? "beforeBlobId") <*> (x .:? "location") <*>
                     (x .:? "afterCommitId")
                     <*> (x .:? "afterBlobId")
                     <*> (x .:? "beforeCommitId")
                     <*> (x .:? "repositoryName")
                     <*> (x .:? "comments" .!= mempty))

instance Hashable CommentsForComparedCommit where

instance NFData CommentsForComparedCommit where

-- | Returns information about comments on a pull request.
--
--
--
-- /See:/ 'commentsForPullRequest' smart constructor.
data CommentsForPullRequest =
  CommentsForPullRequest'
    { _cfprBeforeBlobId   :: !(Maybe Text)
    , _cfprLocation       :: !(Maybe Location)
    , _cfprAfterCommitId  :: !(Maybe Text)
    , _cfprPullRequestId  :: !(Maybe Text)
    , _cfprAfterBlobId    :: !(Maybe Text)
    , _cfprBeforeCommitId :: !(Maybe Text)
    , _cfprRepositoryName :: !(Maybe Text)
    , _cfprComments       :: !(Maybe [Comment])
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'CommentsForPullRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cfprBeforeBlobId' - The full blob ID of the file on which you want to comment on the destination commit.
--
-- * 'cfprLocation' - Location information about the comment on the pull request, including the file name, line number, and whether the version of the file where the comment was made is BEFORE (destination branch) or AFTER (source branch).
--
-- * 'cfprAfterCommitId' - The full commit ID of the commit that was the tip of the source branch at the time the comment was made.
--
-- * 'cfprPullRequestId' - The system-generated ID of the pull request.
--
-- * 'cfprAfterBlobId' - The full blob ID of the file on which you want to comment on the source commit.
--
-- * 'cfprBeforeCommitId' - The full commit ID of the commit that was the tip of the destination branch when the pull request was created. This commit is superceded by the after commit in the source branch when and if you merge the source branch into the destination branch.
--
-- * 'cfprRepositoryName' - The name of the repository that contains the pull request.
--
-- * 'cfprComments' - An array of comment objects. Each comment object contains information about a comment on the pull request.
commentsForPullRequest
    :: CommentsForPullRequest
commentsForPullRequest =
  CommentsForPullRequest'
    { _cfprBeforeBlobId = Nothing
    , _cfprLocation = Nothing
    , _cfprAfterCommitId = Nothing
    , _cfprPullRequestId = Nothing
    , _cfprAfterBlobId = Nothing
    , _cfprBeforeCommitId = Nothing
    , _cfprRepositoryName = Nothing
    , _cfprComments = Nothing
    }


-- | The full blob ID of the file on which you want to comment on the destination commit.
cfprBeforeBlobId :: Lens' CommentsForPullRequest (Maybe Text)
cfprBeforeBlobId = lens _cfprBeforeBlobId (\ s a -> s{_cfprBeforeBlobId = a})

-- | Location information about the comment on the pull request, including the file name, line number, and whether the version of the file where the comment was made is BEFORE (destination branch) or AFTER (source branch).
cfprLocation :: Lens' CommentsForPullRequest (Maybe Location)
cfprLocation = lens _cfprLocation (\ s a -> s{_cfprLocation = a})

-- | The full commit ID of the commit that was the tip of the source branch at the time the comment was made.
cfprAfterCommitId :: Lens' CommentsForPullRequest (Maybe Text)
cfprAfterCommitId = lens _cfprAfterCommitId (\ s a -> s{_cfprAfterCommitId = a})

-- | The system-generated ID of the pull request.
cfprPullRequestId :: Lens' CommentsForPullRequest (Maybe Text)
cfprPullRequestId = lens _cfprPullRequestId (\ s a -> s{_cfprPullRequestId = a})

-- | The full blob ID of the file on which you want to comment on the source commit.
cfprAfterBlobId :: Lens' CommentsForPullRequest (Maybe Text)
cfprAfterBlobId = lens _cfprAfterBlobId (\ s a -> s{_cfprAfterBlobId = a})

-- | The full commit ID of the commit that was the tip of the destination branch when the pull request was created. This commit is superceded by the after commit in the source branch when and if you merge the source branch into the destination branch.
cfprBeforeCommitId :: Lens' CommentsForPullRequest (Maybe Text)
cfprBeforeCommitId = lens _cfprBeforeCommitId (\ s a -> s{_cfprBeforeCommitId = a})

-- | The name of the repository that contains the pull request.
cfprRepositoryName :: Lens' CommentsForPullRequest (Maybe Text)
cfprRepositoryName = lens _cfprRepositoryName (\ s a -> s{_cfprRepositoryName = a})

-- | An array of comment objects. Each comment object contains information about a comment on the pull request.
cfprComments :: Lens' CommentsForPullRequest [Comment]
cfprComments = lens _cfprComments (\ s a -> s{_cfprComments = a}) . _Default . _Coerce

instance FromJSON CommentsForPullRequest where
        parseJSON
          = withObject "CommentsForPullRequest"
              (\ x ->
                 CommentsForPullRequest' <$>
                   (x .:? "beforeBlobId") <*> (x .:? "location") <*>
                     (x .:? "afterCommitId")
                     <*> (x .:? "pullRequestId")
                     <*> (x .:? "afterBlobId")
                     <*> (x .:? "beforeCommitId")
                     <*> (x .:? "repositoryName")
                     <*> (x .:? "comments" .!= mempty))

instance Hashable CommentsForPullRequest where

instance NFData CommentsForPullRequest where

-- | Returns information about a specific commit.
--
--
--
-- /See:/ 'commit' smart constructor.
data Commit =
  Commit'
    { _cCommitId       :: !(Maybe Text)
    , _cCommitter      :: !(Maybe UserInfo)
    , _cTreeId         :: !(Maybe Text)
    , _cAdditionalData :: !(Maybe Text)
    , _cParents        :: !(Maybe [Text])
    , _cAuthor         :: !(Maybe UserInfo)
    , _cMessage        :: !(Maybe Text)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'Commit' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cCommitId' - The full SHA ID of the specified commit.
--
-- * 'cCommitter' - Information about the person who committed the specified commit, also known as the committer. Information includes the date in timestamp format with GMT offset, the name of the committer, and the email address for the committer, as configured in Git. For more information about the difference between an author and a committer in Git, see <http://git-scm.com/book/ch2-3.html Viewing the Commit History> in Pro Git by Scott Chacon and Ben Straub.
--
-- * 'cTreeId' - Tree information for the specified commit.
--
-- * 'cAdditionalData' - Any other data associated with the specified commit.
--
-- * 'cParents' - A list of parent commits for the specified commit. Each parent commit ID is the full commit ID.
--
-- * 'cAuthor' - Information about the author of the specified commit. Information includes the date in timestamp format with GMT offset, the name of the author, and the email address for the author, as configured in Git.
--
-- * 'cMessage' - The commit message associated with the specified commit.
commit
    :: Commit
commit =
  Commit'
    { _cCommitId = Nothing
    , _cCommitter = Nothing
    , _cTreeId = Nothing
    , _cAdditionalData = Nothing
    , _cParents = Nothing
    , _cAuthor = Nothing
    , _cMessage = Nothing
    }


-- | The full SHA ID of the specified commit.
cCommitId :: Lens' Commit (Maybe Text)
cCommitId = lens _cCommitId (\ s a -> s{_cCommitId = a})

-- | Information about the person who committed the specified commit, also known as the committer. Information includes the date in timestamp format with GMT offset, the name of the committer, and the email address for the committer, as configured in Git. For more information about the difference between an author and a committer in Git, see <http://git-scm.com/book/ch2-3.html Viewing the Commit History> in Pro Git by Scott Chacon and Ben Straub.
cCommitter :: Lens' Commit (Maybe UserInfo)
cCommitter = lens _cCommitter (\ s a -> s{_cCommitter = a})

-- | Tree information for the specified commit.
cTreeId :: Lens' Commit (Maybe Text)
cTreeId = lens _cTreeId (\ s a -> s{_cTreeId = a})

-- | Any other data associated with the specified commit.
cAdditionalData :: Lens' Commit (Maybe Text)
cAdditionalData = lens _cAdditionalData (\ s a -> s{_cAdditionalData = a})

-- | A list of parent commits for the specified commit. Each parent commit ID is the full commit ID.
cParents :: Lens' Commit [Text]
cParents = lens _cParents (\ s a -> s{_cParents = a}) . _Default . _Coerce

-- | Information about the author of the specified commit. Information includes the date in timestamp format with GMT offset, the name of the author, and the email address for the author, as configured in Git.
cAuthor :: Lens' Commit (Maybe UserInfo)
cAuthor = lens _cAuthor (\ s a -> s{_cAuthor = a})

-- | The commit message associated with the specified commit.
cMessage :: Lens' Commit (Maybe Text)
cMessage = lens _cMessage (\ s a -> s{_cMessage = a})

instance FromJSON Commit where
        parseJSON
          = withObject "Commit"
              (\ x ->
                 Commit' <$>
                   (x .:? "commitId") <*> (x .:? "committer") <*>
                     (x .:? "treeId")
                     <*> (x .:? "additionalData")
                     <*> (x .:? "parents" .!= mempty)
                     <*> (x .:? "author")
                     <*> (x .:? "message"))

instance Hashable Commit where

instance NFData Commit where

-- | Information about conflicts in a merge operation.
--
--
--
-- /See:/ 'conflict' smart constructor.
data Conflict =
  Conflict'
    { _cMergeHunks       :: !(Maybe [MergeHunk])
    , _cConflictMetadata :: !(Maybe ConflictMetadata)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'Conflict' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cMergeHunks' - A list of hunks that contain the differences between files or lines causing the conflict.
--
-- * 'cConflictMetadata' - Metadata about a conflict in a merge operation.
conflict
    :: Conflict
conflict = Conflict' {_cMergeHunks = Nothing, _cConflictMetadata = Nothing}


-- | A list of hunks that contain the differences between files or lines causing the conflict.
cMergeHunks :: Lens' Conflict [MergeHunk]
cMergeHunks = lens _cMergeHunks (\ s a -> s{_cMergeHunks = a}) . _Default . _Coerce

-- | Metadata about a conflict in a merge operation.
cConflictMetadata :: Lens' Conflict (Maybe ConflictMetadata)
cConflictMetadata = lens _cConflictMetadata (\ s a -> s{_cConflictMetadata = a})

instance FromJSON Conflict where
        parseJSON
          = withObject "Conflict"
              (\ x ->
                 Conflict' <$>
                   (x .:? "mergeHunks" .!= mempty) <*>
                     (x .:? "conflictMetadata"))

instance Hashable Conflict where

instance NFData Conflict where

-- | Information about the metadata for a conflict in a merge operation.
--
--
--
-- /See:/ 'conflictMetadata' smart constructor.
data ConflictMetadata =
  ConflictMetadata'
    { _cmNumberOfConflicts  :: !(Maybe Int)
    , _cmContentConflict    :: !(Maybe Bool)
    , _cmFileSizes          :: !(Maybe FileSizes)
    , _cmFilePath           :: !(Maybe Text)
    , _cmIsBinaryFile       :: !(Maybe IsBinaryFile)
    , _cmFileModeConflict   :: !(Maybe Bool)
    , _cmObjectTypeConflict :: !(Maybe Bool)
    , _cmMergeOperations    :: !(Maybe MergeOperations)
    , _cmObjectTypes        :: !(Maybe ObjectTypes)
    , _cmFileModes          :: !(Maybe FileModes)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'ConflictMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cmNumberOfConflicts' - The number of conflicts, including both hunk conflicts and metadata conflicts.
--
-- * 'cmContentConflict' - A boolean value indicating whether there are conflicts in the content of a file.
--
-- * 'cmFileSizes' - The file sizes of the file in the source, destination, and base of the merge.
--
-- * 'cmFilePath' - The path of the file that contains conflicts.
--
-- * 'cmIsBinaryFile' - A boolean value (true or false) indicating whether the file is binary or textual in the source, destination, and base of the merge.
--
-- * 'cmFileModeConflict' - A boolean value indicating whether there are conflicts in the file mode of a file.
--
-- * 'cmObjectTypeConflict' - A boolean value (true or false) indicating whether there are conflicts between the branches in the object type of a file, folder, or submodule.
--
-- * 'cmMergeOperations' - Whether an add, modify, or delete operation caused the conflict between the source and destination of the merge.
--
-- * 'cmObjectTypes' - Information about any object type conflicts in a merge operation.
--
-- * 'cmFileModes' - The file modes of the file in the source, destination, and base of the merge.
conflictMetadata
    :: ConflictMetadata
conflictMetadata =
  ConflictMetadata'
    { _cmNumberOfConflicts = Nothing
    , _cmContentConflict = Nothing
    , _cmFileSizes = Nothing
    , _cmFilePath = Nothing
    , _cmIsBinaryFile = Nothing
    , _cmFileModeConflict = Nothing
    , _cmObjectTypeConflict = Nothing
    , _cmMergeOperations = Nothing
    , _cmObjectTypes = Nothing
    , _cmFileModes = Nothing
    }


-- | The number of conflicts, including both hunk conflicts and metadata conflicts.
cmNumberOfConflicts :: Lens' ConflictMetadata (Maybe Int)
cmNumberOfConflicts = lens _cmNumberOfConflicts (\ s a -> s{_cmNumberOfConflicts = a})

-- | A boolean value indicating whether there are conflicts in the content of a file.
cmContentConflict :: Lens' ConflictMetadata (Maybe Bool)
cmContentConflict = lens _cmContentConflict (\ s a -> s{_cmContentConflict = a})

-- | The file sizes of the file in the source, destination, and base of the merge.
cmFileSizes :: Lens' ConflictMetadata (Maybe FileSizes)
cmFileSizes = lens _cmFileSizes (\ s a -> s{_cmFileSizes = a})

-- | The path of the file that contains conflicts.
cmFilePath :: Lens' ConflictMetadata (Maybe Text)
cmFilePath = lens _cmFilePath (\ s a -> s{_cmFilePath = a})

-- | A boolean value (true or false) indicating whether the file is binary or textual in the source, destination, and base of the merge.
cmIsBinaryFile :: Lens' ConflictMetadata (Maybe IsBinaryFile)
cmIsBinaryFile = lens _cmIsBinaryFile (\ s a -> s{_cmIsBinaryFile = a})

-- | A boolean value indicating whether there are conflicts in the file mode of a file.
cmFileModeConflict :: Lens' ConflictMetadata (Maybe Bool)
cmFileModeConflict = lens _cmFileModeConflict (\ s a -> s{_cmFileModeConflict = a})

-- | A boolean value (true or false) indicating whether there are conflicts between the branches in the object type of a file, folder, or submodule.
cmObjectTypeConflict :: Lens' ConflictMetadata (Maybe Bool)
cmObjectTypeConflict = lens _cmObjectTypeConflict (\ s a -> s{_cmObjectTypeConflict = a})

-- | Whether an add, modify, or delete operation caused the conflict between the source and destination of the merge.
cmMergeOperations :: Lens' ConflictMetadata (Maybe MergeOperations)
cmMergeOperations = lens _cmMergeOperations (\ s a -> s{_cmMergeOperations = a})

-- | Information about any object type conflicts in a merge operation.
cmObjectTypes :: Lens' ConflictMetadata (Maybe ObjectTypes)
cmObjectTypes = lens _cmObjectTypes (\ s a -> s{_cmObjectTypes = a})

-- | The file modes of the file in the source, destination, and base of the merge.
cmFileModes :: Lens' ConflictMetadata (Maybe FileModes)
cmFileModes = lens _cmFileModes (\ s a -> s{_cmFileModes = a})

instance FromJSON ConflictMetadata where
        parseJSON
          = withObject "ConflictMetadata"
              (\ x ->
                 ConflictMetadata' <$>
                   (x .:? "numberOfConflicts") <*>
                     (x .:? "contentConflict")
                     <*> (x .:? "fileSizes")
                     <*> (x .:? "filePath")
                     <*> (x .:? "isBinaryFile")
                     <*> (x .:? "fileModeConflict")
                     <*> (x .:? "objectTypeConflict")
                     <*> (x .:? "mergeOperations")
                     <*> (x .:? "objectTypes")
                     <*> (x .:? "fileModes"))

instance Hashable ConflictMetadata where

instance NFData ConflictMetadata where

-- | If AUTOMERGE is the conflict resolution strategy, a list of inputs to use when resolving conflicts during a merge.
--
--
--
-- /See:/ 'conflictResolution' smart constructor.
data ConflictResolution =
  ConflictResolution'
    { _crSetFileModes    :: !(Maybe [SetFileModeEntry])
    , _crDeleteFiles     :: !(Maybe [DeleteFileEntry])
    , _crReplaceContents :: !(Maybe [ReplaceContentEntry])
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'ConflictResolution' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'crSetFileModes' - File modes that are set as part of the merge conflict resolution.
--
-- * 'crDeleteFiles' - Files to be deleted as part of the merge conflict resolution.
--
-- * 'crReplaceContents' - Files to have content replaced as part of the merge conflict resolution.
conflictResolution
    :: ConflictResolution
conflictResolution =
  ConflictResolution'
    { _crSetFileModes = Nothing
    , _crDeleteFiles = Nothing
    , _crReplaceContents = Nothing
    }


-- | File modes that are set as part of the merge conflict resolution.
crSetFileModes :: Lens' ConflictResolution [SetFileModeEntry]
crSetFileModes = lens _crSetFileModes (\ s a -> s{_crSetFileModes = a}) . _Default . _Coerce

-- | Files to be deleted as part of the merge conflict resolution.
crDeleteFiles :: Lens' ConflictResolution [DeleteFileEntry]
crDeleteFiles = lens _crDeleteFiles (\ s a -> s{_crDeleteFiles = a}) . _Default . _Coerce

-- | Files to have content replaced as part of the merge conflict resolution.
crReplaceContents :: Lens' ConflictResolution [ReplaceContentEntry]
crReplaceContents = lens _crReplaceContents (\ s a -> s{_crReplaceContents = a}) . _Default . _Coerce

instance Hashable ConflictResolution where

instance NFData ConflictResolution where

instance ToJSON ConflictResolution where
        toJSON ConflictResolution'{..}
          = object
              (catMaybes
                 [("setFileModes" .=) <$> _crSetFileModes,
                  ("deleteFiles" .=) <$> _crDeleteFiles,
                  ("replaceContents" .=) <$> _crReplaceContents])

-- | A file that is deleted as part of a commit.
--
--
--
-- /See:/ 'deleteFileEntry' smart constructor.
newtype DeleteFileEntry =
  DeleteFileEntry'
    { _dfeFilePath :: Text
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'DeleteFileEntry' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dfeFilePath' - The full path of the file to be deleted, including the name of the file.
deleteFileEntry
    :: Text -- ^ 'dfeFilePath'
    -> DeleteFileEntry
deleteFileEntry pFilePath_ = DeleteFileEntry' {_dfeFilePath = pFilePath_}


-- | The full path of the file to be deleted, including the name of the file.
dfeFilePath :: Lens' DeleteFileEntry Text
dfeFilePath = lens _dfeFilePath (\ s a -> s{_dfeFilePath = a})

instance Hashable DeleteFileEntry where

instance NFData DeleteFileEntry where

instance ToJSON DeleteFileEntry where
        toJSON DeleteFileEntry'{..}
          = object
              (catMaybes [Just ("filePath" .= _dfeFilePath)])

-- | Returns information about a set of differences for a commit specifier.
--
--
--
-- /See:/ 'difference' smart constructor.
data Difference =
  Difference'
    { _dAfterBlob  :: !(Maybe BlobMetadata)
    , _dBeforeBlob :: !(Maybe BlobMetadata)
    , _dChangeType :: !(Maybe ChangeTypeEnum)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'Difference' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dAfterBlob' - Information about an @afterBlob@ data type object, including the ID, the file mode permission code, and the path.
--
-- * 'dBeforeBlob' - Information about a @beforeBlob@ data type object, including the ID, the file mode permission code, and the path.
--
-- * 'dChangeType' - Whether the change type of the difference is an addition (A), deletion (D), or modification (M).
difference
    :: Difference
difference =
  Difference'
    {_dAfterBlob = Nothing, _dBeforeBlob = Nothing, _dChangeType = Nothing}


-- | Information about an @afterBlob@ data type object, including the ID, the file mode permission code, and the path.
dAfterBlob :: Lens' Difference (Maybe BlobMetadata)
dAfterBlob = lens _dAfterBlob (\ s a -> s{_dAfterBlob = a})

-- | Information about a @beforeBlob@ data type object, including the ID, the file mode permission code, and the path.
dBeforeBlob :: Lens' Difference (Maybe BlobMetadata)
dBeforeBlob = lens _dBeforeBlob (\ s a -> s{_dBeforeBlob = a})

-- | Whether the change type of the difference is an addition (A), deletion (D), or modification (M).
dChangeType :: Lens' Difference (Maybe ChangeTypeEnum)
dChangeType = lens _dChangeType (\ s a -> s{_dChangeType = a})

instance FromJSON Difference where
        parseJSON
          = withObject "Difference"
              (\ x ->
                 Difference' <$>
                   (x .:? "afterBlob") <*> (x .:? "beforeBlob") <*>
                     (x .:? "changeType"))

instance Hashable Difference where

instance NFData Difference where

-- | Returns information about the approval rules applied to a pull request and whether conditions have been met.
--
--
--
-- /See:/ 'evaluation' smart constructor.
data Evaluation =
  Evaluation'
    { _eApprovalRulesSatisfied    :: !(Maybe [Text])
    , _eApprovalRulesNotSatisfied :: !(Maybe [Text])
    , _eApproved                  :: !(Maybe Bool)
    , _eOverridden                :: !(Maybe Bool)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'Evaluation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eApprovalRulesSatisfied' - The names of the approval rules that have had their conditions met.
--
-- * 'eApprovalRulesNotSatisfied' - The names of the approval rules that have not had their conditions met.
--
-- * 'eApproved' - Whether the state of the pull request is approved.
--
-- * 'eOverridden' - Whether the approval rule requirements for the pull request have been overridden and no longer need to be met.
evaluation
    :: Evaluation
evaluation =
  Evaluation'
    { _eApprovalRulesSatisfied = Nothing
    , _eApprovalRulesNotSatisfied = Nothing
    , _eApproved = Nothing
    , _eOverridden = Nothing
    }


-- | The names of the approval rules that have had their conditions met.
eApprovalRulesSatisfied :: Lens' Evaluation [Text]
eApprovalRulesSatisfied = lens _eApprovalRulesSatisfied (\ s a -> s{_eApprovalRulesSatisfied = a}) . _Default . _Coerce

-- | The names of the approval rules that have not had their conditions met.
eApprovalRulesNotSatisfied :: Lens' Evaluation [Text]
eApprovalRulesNotSatisfied = lens _eApprovalRulesNotSatisfied (\ s a -> s{_eApprovalRulesNotSatisfied = a}) . _Default . _Coerce

-- | Whether the state of the pull request is approved.
eApproved :: Lens' Evaluation (Maybe Bool)
eApproved = lens _eApproved (\ s a -> s{_eApproved = a})

-- | Whether the approval rule requirements for the pull request have been overridden and no longer need to be met.
eOverridden :: Lens' Evaluation (Maybe Bool)
eOverridden = lens _eOverridden (\ s a -> s{_eOverridden = a})

instance FromJSON Evaluation where
        parseJSON
          = withObject "Evaluation"
              (\ x ->
                 Evaluation' <$>
                   (x .:? "approvalRulesSatisfied" .!= mempty) <*>
                     (x .:? "approvalRulesNotSatisfied" .!= mempty)
                     <*> (x .:? "approved")
                     <*> (x .:? "overridden"))

instance Hashable Evaluation where

instance NFData Evaluation where

-- | Returns information about a file in a repository.
--
--
--
-- /See:/ 'file' smart constructor.
data File =
  File'
    { _fAbsolutePath :: !(Maybe Text)
    , _fFileMode     :: !(Maybe FileModeTypeEnum)
    , _fBlobId       :: !(Maybe Text)
    , _fRelativePath :: !(Maybe Text)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'File' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fAbsolutePath' - The fully qualified path to the file in the repository.
--
-- * 'fFileMode' - The extrapolated file mode permissions for the file. Valid values include EXECUTABLE and NORMAL.
--
-- * 'fBlobId' - The blob ID that contains the file information.
--
-- * 'fRelativePath' - The relative path of the file from the folder where the query originated.
file
    :: File
file =
  File'
    { _fAbsolutePath = Nothing
    , _fFileMode = Nothing
    , _fBlobId = Nothing
    , _fRelativePath = Nothing
    }


-- | The fully qualified path to the file in the repository.
fAbsolutePath :: Lens' File (Maybe Text)
fAbsolutePath = lens _fAbsolutePath (\ s a -> s{_fAbsolutePath = a})

-- | The extrapolated file mode permissions for the file. Valid values include EXECUTABLE and NORMAL.
fFileMode :: Lens' File (Maybe FileModeTypeEnum)
fFileMode = lens _fFileMode (\ s a -> s{_fFileMode = a})

-- | The blob ID that contains the file information.
fBlobId :: Lens' File (Maybe Text)
fBlobId = lens _fBlobId (\ s a -> s{_fBlobId = a})

-- | The relative path of the file from the folder where the query originated.
fRelativePath :: Lens' File (Maybe Text)
fRelativePath = lens _fRelativePath (\ s a -> s{_fRelativePath = a})

instance FromJSON File where
        parseJSON
          = withObject "File"
              (\ x ->
                 File' <$>
                   (x .:? "absolutePath") <*> (x .:? "fileMode") <*>
                     (x .:? "blobId")
                     <*> (x .:? "relativePath"))

instance Hashable File where

instance NFData File where

-- | A file to be added, updated, or deleted as part of a commit.
--
--
--
-- /See:/ 'fileMetadata' smart constructor.
data FileMetadata =
  FileMetadata'
    { _fmAbsolutePath :: !(Maybe Text)
    , _fmFileMode     :: !(Maybe FileModeTypeEnum)
    , _fmBlobId       :: !(Maybe Text)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'FileMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fmAbsolutePath' - The full path to the file to be added or updated, including the name of the file.
--
-- * 'fmFileMode' - The extrapolated file mode permissions for the file. Valid values include EXECUTABLE and NORMAL.
--
-- * 'fmBlobId' - The blob ID that contains the file information.
fileMetadata
    :: FileMetadata
fileMetadata =
  FileMetadata'
    {_fmAbsolutePath = Nothing, _fmFileMode = Nothing, _fmBlobId = Nothing}


-- | The full path to the file to be added or updated, including the name of the file.
fmAbsolutePath :: Lens' FileMetadata (Maybe Text)
fmAbsolutePath = lens _fmAbsolutePath (\ s a -> s{_fmAbsolutePath = a})

-- | The extrapolated file mode permissions for the file. Valid values include EXECUTABLE and NORMAL.
fmFileMode :: Lens' FileMetadata (Maybe FileModeTypeEnum)
fmFileMode = lens _fmFileMode (\ s a -> s{_fmFileMode = a})

-- | The blob ID that contains the file information.
fmBlobId :: Lens' FileMetadata (Maybe Text)
fmBlobId = lens _fmBlobId (\ s a -> s{_fmBlobId = a})

instance FromJSON FileMetadata where
        parseJSON
          = withObject "FileMetadata"
              (\ x ->
                 FileMetadata' <$>
                   (x .:? "absolutePath") <*> (x .:? "fileMode") <*>
                     (x .:? "blobId"))

instance Hashable FileMetadata where

instance NFData FileMetadata where

-- | Information about file modes in a merge or pull request.
--
--
--
-- /See:/ 'fileModes' smart constructor.
data FileModes =
  FileModes'
    { _fmDestination :: !(Maybe FileModeTypeEnum)
    , _fmBase        :: !(Maybe FileModeTypeEnum)
    , _fmSource      :: !(Maybe FileModeTypeEnum)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'FileModes' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fmDestination' - The file mode of a file in the destination of a merge or pull request.
--
-- * 'fmBase' - The file mode of a file in the base of a merge or pull request.
--
-- * 'fmSource' - The file mode of a file in the source of a merge or pull request.
fileModes
    :: FileModes
fileModes =
  FileModes' {_fmDestination = Nothing, _fmBase = Nothing, _fmSource = Nothing}


-- | The file mode of a file in the destination of a merge or pull request.
fmDestination :: Lens' FileModes (Maybe FileModeTypeEnum)
fmDestination = lens _fmDestination (\ s a -> s{_fmDestination = a})

-- | The file mode of a file in the base of a merge or pull request.
fmBase :: Lens' FileModes (Maybe FileModeTypeEnum)
fmBase = lens _fmBase (\ s a -> s{_fmBase = a})

-- | The file mode of a file in the source of a merge or pull request.
fmSource :: Lens' FileModes (Maybe FileModeTypeEnum)
fmSource = lens _fmSource (\ s a -> s{_fmSource = a})

instance FromJSON FileModes where
        parseJSON
          = withObject "FileModes"
              (\ x ->
                 FileModes' <$>
                   (x .:? "destination") <*> (x .:? "base") <*>
                     (x .:? "source"))

instance Hashable FileModes where

instance NFData FileModes where

-- | Information about the size of files in a merge or pull request.
--
--
--
-- /See:/ 'fileSizes' smart constructor.
data FileSizes =
  FileSizes'
    { _fsDestination :: !(Maybe Integer)
    , _fsBase        :: !(Maybe Integer)
    , _fsSource      :: !(Maybe Integer)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'FileSizes' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fsDestination' - The size of a file in the destination of a merge or pull request.
--
-- * 'fsBase' - The size of a file in the base of a merge or pull request.
--
-- * 'fsSource' - The size of a file in the source of a merge or pull request.
fileSizes
    :: FileSizes
fileSizes =
  FileSizes' {_fsDestination = Nothing, _fsBase = Nothing, _fsSource = Nothing}


-- | The size of a file in the destination of a merge or pull request.
fsDestination :: Lens' FileSizes (Maybe Integer)
fsDestination = lens _fsDestination (\ s a -> s{_fsDestination = a})

-- | The size of a file in the base of a merge or pull request.
fsBase :: Lens' FileSizes (Maybe Integer)
fsBase = lens _fsBase (\ s a -> s{_fsBase = a})

-- | The size of a file in the source of a merge or pull request.
fsSource :: Lens' FileSizes (Maybe Integer)
fsSource = lens _fsSource (\ s a -> s{_fsSource = a})

instance FromJSON FileSizes where
        parseJSON
          = withObject "FileSizes"
              (\ x ->
                 FileSizes' <$>
                   (x .:? "destination") <*> (x .:? "base") <*>
                     (x .:? "source"))

instance Hashable FileSizes where

instance NFData FileSizes where

-- | Returns information about a folder in a repository.
--
--
--
-- /See:/ 'folder' smart constructor.
data Folder =
  Folder'
    { _folAbsolutePath :: !(Maybe Text)
    , _folTreeId       :: !(Maybe Text)
    , _folRelativePath :: !(Maybe Text)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'Folder' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'folAbsolutePath' - The fully qualified path of the folder in the repository.
--
-- * 'folTreeId' - The full SHA-1 pointer of the tree information for the commit that contains the folder.
--
-- * 'folRelativePath' - The relative path of the specified folder from the folder where the query originated.
folder
    :: Folder
folder =
  Folder'
    { _folAbsolutePath = Nothing
    , _folTreeId = Nothing
    , _folRelativePath = Nothing
    }


-- | The fully qualified path of the folder in the repository.
folAbsolutePath :: Lens' Folder (Maybe Text)
folAbsolutePath = lens _folAbsolutePath (\ s a -> s{_folAbsolutePath = a})

-- | The full SHA-1 pointer of the tree information for the commit that contains the folder.
folTreeId :: Lens' Folder (Maybe Text)
folTreeId = lens _folTreeId (\ s a -> s{_folTreeId = a})

-- | The relative path of the specified folder from the folder where the query originated.
folRelativePath :: Lens' Folder (Maybe Text)
folRelativePath = lens _folRelativePath (\ s a -> s{_folRelativePath = a})

instance FromJSON Folder where
        parseJSON
          = withObject "Folder"
              (\ x ->
                 Folder' <$>
                   (x .:? "absolutePath") <*> (x .:? "treeId") <*>
                     (x .:? "relativePath"))

instance Hashable Folder where

instance NFData Folder where

-- | Information about whether a file is binary or textual in a merge or pull request operation.
--
--
--
-- /See:/ 'isBinaryFile' smart constructor.
data IsBinaryFile =
  IsBinaryFile'
    { _ibfDestination :: !(Maybe Bool)
    , _ibfBase        :: !(Maybe Bool)
    , _ibfSource      :: !(Maybe Bool)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'IsBinaryFile' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ibfDestination' - The binary or non-binary status of a file in the destination of a merge or pull request.
--
-- * 'ibfBase' - The binary or non-binary status of a file in the base of a merge or pull request.
--
-- * 'ibfSource' - The binary or non-binary status of file in the source of a merge or pull request.
isBinaryFile
    :: IsBinaryFile
isBinaryFile =
  IsBinaryFile'
    {_ibfDestination = Nothing, _ibfBase = Nothing, _ibfSource = Nothing}


-- | The binary or non-binary status of a file in the destination of a merge or pull request.
ibfDestination :: Lens' IsBinaryFile (Maybe Bool)
ibfDestination = lens _ibfDestination (\ s a -> s{_ibfDestination = a})

-- | The binary or non-binary status of a file in the base of a merge or pull request.
ibfBase :: Lens' IsBinaryFile (Maybe Bool)
ibfBase = lens _ibfBase (\ s a -> s{_ibfBase = a})

-- | The binary or non-binary status of file in the source of a merge or pull request.
ibfSource :: Lens' IsBinaryFile (Maybe Bool)
ibfSource = lens _ibfSource (\ s a -> s{_ibfSource = a})

instance FromJSON IsBinaryFile where
        parseJSON
          = withObject "IsBinaryFile"
              (\ x ->
                 IsBinaryFile' <$>
                   (x .:? "destination") <*> (x .:? "base") <*>
                     (x .:? "source"))

instance Hashable IsBinaryFile where

instance NFData IsBinaryFile where

-- | Returns information about the location of a change or comment in the comparison between two commits or a pull request.
--
--
--
-- /See:/ 'location' smart constructor.
data Location =
  Location'
    { _lRelativeFileVersion :: !(Maybe RelativeFileVersionEnum)
    , _lFilePath            :: !(Maybe Text)
    , _lFilePosition        :: !(Maybe Integer)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'Location' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lRelativeFileVersion' - In a comparison of commits or a pull request, whether the change is in the before or after of that comparison.
--
-- * 'lFilePath' - The name of the file being compared, including its extension and subdirectory, if any.
--
-- * 'lFilePosition' - The position of a change in a compared file, in line number format.
location
    :: Location
location =
  Location'
    { _lRelativeFileVersion = Nothing
    , _lFilePath = Nothing
    , _lFilePosition = Nothing
    }


-- | In a comparison of commits or a pull request, whether the change is in the before or after of that comparison.
lRelativeFileVersion :: Lens' Location (Maybe RelativeFileVersionEnum)
lRelativeFileVersion = lens _lRelativeFileVersion (\ s a -> s{_lRelativeFileVersion = a})

-- | The name of the file being compared, including its extension and subdirectory, if any.
lFilePath :: Lens' Location (Maybe Text)
lFilePath = lens _lFilePath (\ s a -> s{_lFilePath = a})

-- | The position of a change in a compared file, in line number format.
lFilePosition :: Lens' Location (Maybe Integer)
lFilePosition = lens _lFilePosition (\ s a -> s{_lFilePosition = a})

instance FromJSON Location where
        parseJSON
          = withObject "Location"
              (\ x ->
                 Location' <$>
                   (x .:? "relativeFileVersion") <*> (x .:? "filePath")
                     <*> (x .:? "filePosition"))

instance Hashable Location where

instance NFData Location where

instance ToJSON Location where
        toJSON Location'{..}
          = object
              (catMaybes
                 [("relativeFileVersion" .=) <$>
                    _lRelativeFileVersion,
                  ("filePath" .=) <$> _lFilePath,
                  ("filePosition" .=) <$> _lFilePosition])

-- | Information about merge hunks in a merge or pull request operation.
--
--
--
-- /See:/ 'mergeHunk' smart constructor.
data MergeHunk =
  MergeHunk'
    { _mhDestination :: !(Maybe MergeHunkDetail)
    , _mhBase        :: !(Maybe MergeHunkDetail)
    , _mhIsConflict  :: !(Maybe Bool)
    , _mhSource      :: !(Maybe MergeHunkDetail)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'MergeHunk' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mhDestination' - Information about the merge hunk in the destination of a merge or pull request.
--
-- * 'mhBase' - Information about the merge hunk in the base of a merge or pull request.
--
-- * 'mhIsConflict' - A Boolean value indicating whether a combination of hunks contains a conflict. Conflicts occur when the same file or the same lines in a file were modified in both the source and destination of a merge or pull request. Valid values include true, false, and null. True when the hunk represents a conflict and one or more files contains a line conflict. File mode conflicts in a merge do not set this to true.
--
-- * 'mhSource' - Information about the merge hunk in the source of a merge or pull request.
mergeHunk
    :: MergeHunk
mergeHunk =
  MergeHunk'
    { _mhDestination = Nothing
    , _mhBase = Nothing
    , _mhIsConflict = Nothing
    , _mhSource = Nothing
    }


-- | Information about the merge hunk in the destination of a merge or pull request.
mhDestination :: Lens' MergeHunk (Maybe MergeHunkDetail)
mhDestination = lens _mhDestination (\ s a -> s{_mhDestination = a})

-- | Information about the merge hunk in the base of a merge or pull request.
mhBase :: Lens' MergeHunk (Maybe MergeHunkDetail)
mhBase = lens _mhBase (\ s a -> s{_mhBase = a})

-- | A Boolean value indicating whether a combination of hunks contains a conflict. Conflicts occur when the same file or the same lines in a file were modified in both the source and destination of a merge or pull request. Valid values include true, false, and null. True when the hunk represents a conflict and one or more files contains a line conflict. File mode conflicts in a merge do not set this to true.
mhIsConflict :: Lens' MergeHunk (Maybe Bool)
mhIsConflict = lens _mhIsConflict (\ s a -> s{_mhIsConflict = a})

-- | Information about the merge hunk in the source of a merge or pull request.
mhSource :: Lens' MergeHunk (Maybe MergeHunkDetail)
mhSource = lens _mhSource (\ s a -> s{_mhSource = a})

instance FromJSON MergeHunk where
        parseJSON
          = withObject "MergeHunk"
              (\ x ->
                 MergeHunk' <$>
                   (x .:? "destination") <*> (x .:? "base") <*>
                     (x .:? "isConflict")
                     <*> (x .:? "source"))

instance Hashable MergeHunk where

instance NFData MergeHunk where

-- | Information about the details of a merge hunk that contains a conflict in a merge or pull request operation.
--
--
--
-- /See:/ 'mergeHunkDetail' smart constructor.
data MergeHunkDetail =
  MergeHunkDetail'
    { _mhdStartLine   :: !(Maybe Int)
    , _mhdEndLine     :: !(Maybe Int)
    , _mhdHunkContent :: !(Maybe Text)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'MergeHunkDetail' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mhdStartLine' - The start position of the hunk in the merge result.
--
-- * 'mhdEndLine' - The end position of the hunk in the merge result.
--
-- * 'mhdHunkContent' - The base-64 encoded content of the hunk merged region that might contain a conflict.
mergeHunkDetail
    :: MergeHunkDetail
mergeHunkDetail =
  MergeHunkDetail'
    {_mhdStartLine = Nothing, _mhdEndLine = Nothing, _mhdHunkContent = Nothing}


-- | The start position of the hunk in the merge result.
mhdStartLine :: Lens' MergeHunkDetail (Maybe Int)
mhdStartLine = lens _mhdStartLine (\ s a -> s{_mhdStartLine = a})

-- | The end position of the hunk in the merge result.
mhdEndLine :: Lens' MergeHunkDetail (Maybe Int)
mhdEndLine = lens _mhdEndLine (\ s a -> s{_mhdEndLine = a})

-- | The base-64 encoded content of the hunk merged region that might contain a conflict.
mhdHunkContent :: Lens' MergeHunkDetail (Maybe Text)
mhdHunkContent = lens _mhdHunkContent (\ s a -> s{_mhdHunkContent = a})

instance FromJSON MergeHunkDetail where
        parseJSON
          = withObject "MergeHunkDetail"
              (\ x ->
                 MergeHunkDetail' <$>
                   (x .:? "startLine") <*> (x .:? "endLine") <*>
                     (x .:? "hunkContent"))

instance Hashable MergeHunkDetail where

instance NFData MergeHunkDetail where

-- | Returns information about a merge or potential merge between a source reference and a destination reference in a pull request.
--
--
--
-- /See:/ 'mergeMetadata' smart constructor.
data MergeMetadata =
  MergeMetadata'
    { _mmMergedBy      :: !(Maybe Text)
    , _mmMergeOption   :: !(Maybe MergeOptionTypeEnum)
    , _mmIsMerged      :: !(Maybe Bool)
    , _mmMergeCommitId :: !(Maybe Text)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'MergeMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mmMergedBy' - The Amazon Resource Name (ARN) of the user who merged the branches.
--
-- * 'mmMergeOption' - The merge strategy used in the merge.
--
-- * 'mmIsMerged' - A Boolean value indicating whether the merge has been made.
--
-- * 'mmMergeCommitId' - The commit ID for the merge commit, if any.
mergeMetadata
    :: MergeMetadata
mergeMetadata =
  MergeMetadata'
    { _mmMergedBy = Nothing
    , _mmMergeOption = Nothing
    , _mmIsMerged = Nothing
    , _mmMergeCommitId = Nothing
    }


-- | The Amazon Resource Name (ARN) of the user who merged the branches.
mmMergedBy :: Lens' MergeMetadata (Maybe Text)
mmMergedBy = lens _mmMergedBy (\ s a -> s{_mmMergedBy = a})

-- | The merge strategy used in the merge.
mmMergeOption :: Lens' MergeMetadata (Maybe MergeOptionTypeEnum)
mmMergeOption = lens _mmMergeOption (\ s a -> s{_mmMergeOption = a})

-- | A Boolean value indicating whether the merge has been made.
mmIsMerged :: Lens' MergeMetadata (Maybe Bool)
mmIsMerged = lens _mmIsMerged (\ s a -> s{_mmIsMerged = a})

-- | The commit ID for the merge commit, if any.
mmMergeCommitId :: Lens' MergeMetadata (Maybe Text)
mmMergeCommitId = lens _mmMergeCommitId (\ s a -> s{_mmMergeCommitId = a})

instance FromJSON MergeMetadata where
        parseJSON
          = withObject "MergeMetadata"
              (\ x ->
                 MergeMetadata' <$>
                   (x .:? "mergedBy") <*> (x .:? "mergeOption") <*>
                     (x .:? "isMerged")
                     <*> (x .:? "mergeCommitId"))

instance Hashable MergeMetadata where

instance NFData MergeMetadata where

-- | Information about the file operation conflicts in a merge operation.
--
--
--
-- /See:/ 'mergeOperations' smart constructor.
data MergeOperations =
  MergeOperations'
    { _moDestination :: !(Maybe ChangeTypeEnum)
    , _moSource      :: !(Maybe ChangeTypeEnum)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'MergeOperations' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'moDestination' - The operation on a file in the destination of a merge or pull request.
--
-- * 'moSource' - The operation (add, modify, or delete) on a file in the source of a merge or pull request.
mergeOperations
    :: MergeOperations
mergeOperations =
  MergeOperations' {_moDestination = Nothing, _moSource = Nothing}


-- | The operation on a file in the destination of a merge or pull request.
moDestination :: Lens' MergeOperations (Maybe ChangeTypeEnum)
moDestination = lens _moDestination (\ s a -> s{_moDestination = a})

-- | The operation (add, modify, or delete) on a file in the source of a merge or pull request.
moSource :: Lens' MergeOperations (Maybe ChangeTypeEnum)
moSource = lens _moSource (\ s a -> s{_moSource = a})

instance FromJSON MergeOperations where
        parseJSON
          = withObject "MergeOperations"
              (\ x ->
                 MergeOperations' <$>
                   (x .:? "destination") <*> (x .:? "source"))

instance Hashable MergeOperations where

instance NFData MergeOperations where

-- | Information about the type of an object in a merge operation.
--
--
--
-- /See:/ 'objectTypes' smart constructor.
data ObjectTypes =
  ObjectTypes'
    { _otDestination :: !(Maybe ObjectTypeEnum)
    , _otBase        :: !(Maybe ObjectTypeEnum)
    , _otSource      :: !(Maybe ObjectTypeEnum)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'ObjectTypes' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'otDestination' - The type of the object in the destination branch.
--
-- * 'otBase' - The type of the object in the base commit of the merge.
--
-- * 'otSource' - The type of the object in the source branch.
objectTypes
    :: ObjectTypes
objectTypes =
  ObjectTypes'
    {_otDestination = Nothing, _otBase = Nothing, _otSource = Nothing}


-- | The type of the object in the destination branch.
otDestination :: Lens' ObjectTypes (Maybe ObjectTypeEnum)
otDestination = lens _otDestination (\ s a -> s{_otDestination = a})

-- | The type of the object in the base commit of the merge.
otBase :: Lens' ObjectTypes (Maybe ObjectTypeEnum)
otBase = lens _otBase (\ s a -> s{_otBase = a})

-- | The type of the object in the source branch.
otSource :: Lens' ObjectTypes (Maybe ObjectTypeEnum)
otSource = lens _otSource (\ s a -> s{_otSource = a})

instance FromJSON ObjectTypes where
        parseJSON
          = withObject "ObjectTypes"
              (\ x ->
                 ObjectTypes' <$>
                   (x .:? "destination") <*> (x .:? "base") <*>
                     (x .:? "source"))

instance Hashable ObjectTypes where

instance NFData ObjectTypes where

-- | Returns information about the template that created the approval rule for a pull request.
--
--
--
-- /See:/ 'originApprovalRuleTemplate' smart constructor.
data OriginApprovalRuleTemplate =
  OriginApprovalRuleTemplate'
    { _oartApprovalRuleTemplateId   :: !(Maybe Text)
    , _oartApprovalRuleTemplateName :: !(Maybe Text)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'OriginApprovalRuleTemplate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oartApprovalRuleTemplateId' - The ID of the template that created the approval rule.
--
-- * 'oartApprovalRuleTemplateName' - The name of the template that created the approval rule.
originApprovalRuleTemplate
    :: OriginApprovalRuleTemplate
originApprovalRuleTemplate =
  OriginApprovalRuleTemplate'
    { _oartApprovalRuleTemplateId = Nothing
    , _oartApprovalRuleTemplateName = Nothing
    }


-- | The ID of the template that created the approval rule.
oartApprovalRuleTemplateId :: Lens' OriginApprovalRuleTemplate (Maybe Text)
oartApprovalRuleTemplateId = lens _oartApprovalRuleTemplateId (\ s a -> s{_oartApprovalRuleTemplateId = a})

-- | The name of the template that created the approval rule.
oartApprovalRuleTemplateName :: Lens' OriginApprovalRuleTemplate (Maybe Text)
oartApprovalRuleTemplateName = lens _oartApprovalRuleTemplateName (\ s a -> s{_oartApprovalRuleTemplateName = a})

instance FromJSON OriginApprovalRuleTemplate where
        parseJSON
          = withObject "OriginApprovalRuleTemplate"
              (\ x ->
                 OriginApprovalRuleTemplate' <$>
                   (x .:? "approvalRuleTemplateId") <*>
                     (x .:? "approvalRuleTemplateName"))

instance Hashable OriginApprovalRuleTemplate where

instance NFData OriginApprovalRuleTemplate where

-- | Returns information about a pull request.
--
--
--
-- /See:/ 'pullRequest' smart constructor.
data PullRequest =
  PullRequest'
    { _prApprovalRules      :: !(Maybe [ApprovalRule])
    , _prAuthorARN          :: !(Maybe Text)
    , _prPullRequestId      :: !(Maybe Text)
    , _prCreationDate       :: !(Maybe POSIX)
    , _prPullRequestStatus  :: !(Maybe PullRequestStatusEnum)
    , _prTitle              :: !(Maybe Text)
    , _prClientRequestToken :: !(Maybe Text)
    , _prLastActivityDate   :: !(Maybe POSIX)
    , _prRevisionId         :: !(Maybe Text)
    , _prPullRequestTargets :: !(Maybe [PullRequestTarget])
    , _prDescription        :: !(Maybe Text)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'PullRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'prApprovalRules' - The approval rules applied to the pull request.
--
-- * 'prAuthorARN' - The Amazon Resource Name (ARN) of the user who created the pull request.
--
-- * 'prPullRequestId' - The system-generated ID of the pull request.
--
-- * 'prCreationDate' - The date and time the pull request was originally created, in timestamp format.
--
-- * 'prPullRequestStatus' - The status of the pull request. Pull request status can only change from @OPEN@ to @CLOSED@ .
--
-- * 'prTitle' - The user-defined title of the pull request. This title is displayed in the list of pull requests to other repository users.
--
-- * 'prClientRequestToken' - A unique, client-generated idempotency token that, when provided in a request, ensures the request cannot be repeated with a changed parameter. If a request is received with the same parameters and a token is included, the request returns information about the initial request that used that token.
--
-- * 'prLastActivityDate' - The day and time of the last user or system activity on the pull request, in timestamp format.
--
-- * 'prRevisionId' - The system-generated revision ID for the pull request.
--
-- * 'prPullRequestTargets' - The targets of the pull request, including the source branch and destination branch for the pull request.
--
-- * 'prDescription' - The user-defined description of the pull request. This description can be used to clarify what should be reviewed and other details of the request.
pullRequest
    :: PullRequest
pullRequest =
  PullRequest'
    { _prApprovalRules = Nothing
    , _prAuthorARN = Nothing
    , _prPullRequestId = Nothing
    , _prCreationDate = Nothing
    , _prPullRequestStatus = Nothing
    , _prTitle = Nothing
    , _prClientRequestToken = Nothing
    , _prLastActivityDate = Nothing
    , _prRevisionId = Nothing
    , _prPullRequestTargets = Nothing
    , _prDescription = Nothing
    }


-- | The approval rules applied to the pull request.
prApprovalRules :: Lens' PullRequest [ApprovalRule]
prApprovalRules = lens _prApprovalRules (\ s a -> s{_prApprovalRules = a}) . _Default . _Coerce

-- | The Amazon Resource Name (ARN) of the user who created the pull request.
prAuthorARN :: Lens' PullRequest (Maybe Text)
prAuthorARN = lens _prAuthorARN (\ s a -> s{_prAuthorARN = a})

-- | The system-generated ID of the pull request.
prPullRequestId :: Lens' PullRequest (Maybe Text)
prPullRequestId = lens _prPullRequestId (\ s a -> s{_prPullRequestId = a})

-- | The date and time the pull request was originally created, in timestamp format.
prCreationDate :: Lens' PullRequest (Maybe UTCTime)
prCreationDate = lens _prCreationDate (\ s a -> s{_prCreationDate = a}) . mapping _Time

-- | The status of the pull request. Pull request status can only change from @OPEN@ to @CLOSED@ .
prPullRequestStatus :: Lens' PullRequest (Maybe PullRequestStatusEnum)
prPullRequestStatus = lens _prPullRequestStatus (\ s a -> s{_prPullRequestStatus = a})

-- | The user-defined title of the pull request. This title is displayed in the list of pull requests to other repository users.
prTitle :: Lens' PullRequest (Maybe Text)
prTitle = lens _prTitle (\ s a -> s{_prTitle = a})

-- | A unique, client-generated idempotency token that, when provided in a request, ensures the request cannot be repeated with a changed parameter. If a request is received with the same parameters and a token is included, the request returns information about the initial request that used that token.
prClientRequestToken :: Lens' PullRequest (Maybe Text)
prClientRequestToken = lens _prClientRequestToken (\ s a -> s{_prClientRequestToken = a})

-- | The day and time of the last user or system activity on the pull request, in timestamp format.
prLastActivityDate :: Lens' PullRequest (Maybe UTCTime)
prLastActivityDate = lens _prLastActivityDate (\ s a -> s{_prLastActivityDate = a}) . mapping _Time

-- | The system-generated revision ID for the pull request.
prRevisionId :: Lens' PullRequest (Maybe Text)
prRevisionId = lens _prRevisionId (\ s a -> s{_prRevisionId = a})

-- | The targets of the pull request, including the source branch and destination branch for the pull request.
prPullRequestTargets :: Lens' PullRequest [PullRequestTarget]
prPullRequestTargets = lens _prPullRequestTargets (\ s a -> s{_prPullRequestTargets = a}) . _Default . _Coerce

-- | The user-defined description of the pull request. This description can be used to clarify what should be reviewed and other details of the request.
prDescription :: Lens' PullRequest (Maybe Text)
prDescription = lens _prDescription (\ s a -> s{_prDescription = a})

instance FromJSON PullRequest where
        parseJSON
          = withObject "PullRequest"
              (\ x ->
                 PullRequest' <$>
                   (x .:? "approvalRules" .!= mempty) <*>
                     (x .:? "authorArn")
                     <*> (x .:? "pullRequestId")
                     <*> (x .:? "creationDate")
                     <*> (x .:? "pullRequestStatus")
                     <*> (x .:? "title")
                     <*> (x .:? "clientRequestToken")
                     <*> (x .:? "lastActivityDate")
                     <*> (x .:? "revisionId")
                     <*> (x .:? "pullRequestTargets" .!= mempty)
                     <*> (x .:? "description"))

instance Hashable PullRequest where

instance NFData PullRequest where

-- | Metadata about the pull request that is used when comparing the pull request source with its destination.
--
--
--
-- /See:/ 'pullRequestCreatedEventMetadata' smart constructor.
data PullRequestCreatedEventMetadata =
  PullRequestCreatedEventMetadata'
    { _prcemDestinationCommitId :: !(Maybe Text)
    , _prcemMergeBase           :: !(Maybe Text)
    , _prcemRepositoryName      :: !(Maybe Text)
    , _prcemSourceCommitId      :: !(Maybe Text)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'PullRequestCreatedEventMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'prcemDestinationCommitId' - The commit ID of the tip of the branch specified as the destination branch when the pull request was created.
--
-- * 'prcemMergeBase' - The commit ID of the most recent commit that the source branch and the destination branch have in common.
--
-- * 'prcemRepositoryName' - The name of the repository where the pull request was created.
--
-- * 'prcemSourceCommitId' - The commit ID on the source branch used when the pull request was created.
pullRequestCreatedEventMetadata
    :: PullRequestCreatedEventMetadata
pullRequestCreatedEventMetadata =
  PullRequestCreatedEventMetadata'
    { _prcemDestinationCommitId = Nothing
    , _prcemMergeBase = Nothing
    , _prcemRepositoryName = Nothing
    , _prcemSourceCommitId = Nothing
    }


-- | The commit ID of the tip of the branch specified as the destination branch when the pull request was created.
prcemDestinationCommitId :: Lens' PullRequestCreatedEventMetadata (Maybe Text)
prcemDestinationCommitId = lens _prcemDestinationCommitId (\ s a -> s{_prcemDestinationCommitId = a})

-- | The commit ID of the most recent commit that the source branch and the destination branch have in common.
prcemMergeBase :: Lens' PullRequestCreatedEventMetadata (Maybe Text)
prcemMergeBase = lens _prcemMergeBase (\ s a -> s{_prcemMergeBase = a})

-- | The name of the repository where the pull request was created.
prcemRepositoryName :: Lens' PullRequestCreatedEventMetadata (Maybe Text)
prcemRepositoryName = lens _prcemRepositoryName (\ s a -> s{_prcemRepositoryName = a})

-- | The commit ID on the source branch used when the pull request was created.
prcemSourceCommitId :: Lens' PullRequestCreatedEventMetadata (Maybe Text)
prcemSourceCommitId = lens _prcemSourceCommitId (\ s a -> s{_prcemSourceCommitId = a})

instance FromJSON PullRequestCreatedEventMetadata
         where
        parseJSON
          = withObject "PullRequestCreatedEventMetadata"
              (\ x ->
                 PullRequestCreatedEventMetadata' <$>
                   (x .:? "destinationCommitId") <*> (x .:? "mergeBase")
                     <*> (x .:? "repositoryName")
                     <*> (x .:? "sourceCommitId"))

instance Hashable PullRequestCreatedEventMetadata
         where

instance NFData PullRequestCreatedEventMetadata where

-- | Returns information about a pull request event.
--
--
--
-- /See:/ 'pullRequestEvent' smart constructor.
data PullRequestEvent =
  PullRequestEvent'
    { _prePullRequestMergedStateChangedEventMetadata :: !(Maybe PullRequestMergedStateChangedEventMetadata)
    , _prePullRequestCreatedEventMetadata :: !(Maybe PullRequestCreatedEventMetadata)
    , _preApprovalRuleEventMetadata :: !(Maybe ApprovalRuleEventMetadata)
    , _prePullRequestEventType :: !(Maybe PullRequestEventType)
    , _prePullRequestStatusChangedEventMetadata :: !(Maybe PullRequestStatusChangedEventMetadata)
    , _preActorARN :: !(Maybe Text)
    , _prePullRequestId :: !(Maybe Text)
    , _preEventDate :: !(Maybe POSIX)
    , _preApprovalStateChangedEventMetadata :: !(Maybe ApprovalStateChangedEventMetadata)
    , _prePullRequestSourceReferenceUpdatedEventMetadata :: !(Maybe PullRequestSourceReferenceUpdatedEventMetadata)
    , _preApprovalRuleOverriddenEventMetadata :: !(Maybe ApprovalRuleOverriddenEventMetadata)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'PullRequestEvent' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'prePullRequestMergedStateChangedEventMetadata' - Information about the change in mergability state for the pull request event.
--
-- * 'prePullRequestCreatedEventMetadata' - Information about the source and destination branches for the pull request.
--
-- * 'preApprovalRuleEventMetadata' - Information about a pull request event.
--
-- * 'prePullRequestEventType' - The type of the pull request event (for example, a status change event (PULL_REQUEST_STATUS_CHANGED) or update event (PULL_REQUEST_SOURCE_REFERENCE_UPDATED)).
--
-- * 'prePullRequestStatusChangedEventMetadata' - Information about the change in status for the pull request event.
--
-- * 'preActorARN' - The Amazon Resource Name (ARN) of the user whose actions resulted in the event. Examples include updating the pull request with more commits or changing the status of a pull request.
--
-- * 'prePullRequestId' - The system-generated ID of the pull request.
--
-- * 'preEventDate' - The day and time of the pull request event, in timestamp format.
--
-- * 'preApprovalStateChangedEventMetadata' - Information about an approval state change for a pull request.
--
-- * 'prePullRequestSourceReferenceUpdatedEventMetadata' - Information about the updated source branch for the pull request event.
--
-- * 'preApprovalRuleOverriddenEventMetadata' - Information about an approval rule override event for a pull request.
pullRequestEvent
    :: PullRequestEvent
pullRequestEvent =
  PullRequestEvent'
    { _prePullRequestMergedStateChangedEventMetadata = Nothing
    , _prePullRequestCreatedEventMetadata = Nothing
    , _preApprovalRuleEventMetadata = Nothing
    , _prePullRequestEventType = Nothing
    , _prePullRequestStatusChangedEventMetadata = Nothing
    , _preActorARN = Nothing
    , _prePullRequestId = Nothing
    , _preEventDate = Nothing
    , _preApprovalStateChangedEventMetadata = Nothing
    , _prePullRequestSourceReferenceUpdatedEventMetadata = Nothing
    , _preApprovalRuleOverriddenEventMetadata = Nothing
    }


-- | Information about the change in mergability state for the pull request event.
prePullRequestMergedStateChangedEventMetadata :: Lens' PullRequestEvent (Maybe PullRequestMergedStateChangedEventMetadata)
prePullRequestMergedStateChangedEventMetadata = lens _prePullRequestMergedStateChangedEventMetadata (\ s a -> s{_prePullRequestMergedStateChangedEventMetadata = a})

-- | Information about the source and destination branches for the pull request.
prePullRequestCreatedEventMetadata :: Lens' PullRequestEvent (Maybe PullRequestCreatedEventMetadata)
prePullRequestCreatedEventMetadata = lens _prePullRequestCreatedEventMetadata (\ s a -> s{_prePullRequestCreatedEventMetadata = a})

-- | Information about a pull request event.
preApprovalRuleEventMetadata :: Lens' PullRequestEvent (Maybe ApprovalRuleEventMetadata)
preApprovalRuleEventMetadata = lens _preApprovalRuleEventMetadata (\ s a -> s{_preApprovalRuleEventMetadata = a})

-- | The type of the pull request event (for example, a status change event (PULL_REQUEST_STATUS_CHANGED) or update event (PULL_REQUEST_SOURCE_REFERENCE_UPDATED)).
prePullRequestEventType :: Lens' PullRequestEvent (Maybe PullRequestEventType)
prePullRequestEventType = lens _prePullRequestEventType (\ s a -> s{_prePullRequestEventType = a})

-- | Information about the change in status for the pull request event.
prePullRequestStatusChangedEventMetadata :: Lens' PullRequestEvent (Maybe PullRequestStatusChangedEventMetadata)
prePullRequestStatusChangedEventMetadata = lens _prePullRequestStatusChangedEventMetadata (\ s a -> s{_prePullRequestStatusChangedEventMetadata = a})

-- | The Amazon Resource Name (ARN) of the user whose actions resulted in the event. Examples include updating the pull request with more commits or changing the status of a pull request.
preActorARN :: Lens' PullRequestEvent (Maybe Text)
preActorARN = lens _preActorARN (\ s a -> s{_preActorARN = a})

-- | The system-generated ID of the pull request.
prePullRequestId :: Lens' PullRequestEvent (Maybe Text)
prePullRequestId = lens _prePullRequestId (\ s a -> s{_prePullRequestId = a})

-- | The day and time of the pull request event, in timestamp format.
preEventDate :: Lens' PullRequestEvent (Maybe UTCTime)
preEventDate = lens _preEventDate (\ s a -> s{_preEventDate = a}) . mapping _Time

-- | Information about an approval state change for a pull request.
preApprovalStateChangedEventMetadata :: Lens' PullRequestEvent (Maybe ApprovalStateChangedEventMetadata)
preApprovalStateChangedEventMetadata = lens _preApprovalStateChangedEventMetadata (\ s a -> s{_preApprovalStateChangedEventMetadata = a})

-- | Information about the updated source branch for the pull request event.
prePullRequestSourceReferenceUpdatedEventMetadata :: Lens' PullRequestEvent (Maybe PullRequestSourceReferenceUpdatedEventMetadata)
prePullRequestSourceReferenceUpdatedEventMetadata = lens _prePullRequestSourceReferenceUpdatedEventMetadata (\ s a -> s{_prePullRequestSourceReferenceUpdatedEventMetadata = a})

-- | Information about an approval rule override event for a pull request.
preApprovalRuleOverriddenEventMetadata :: Lens' PullRequestEvent (Maybe ApprovalRuleOverriddenEventMetadata)
preApprovalRuleOverriddenEventMetadata = lens _preApprovalRuleOverriddenEventMetadata (\ s a -> s{_preApprovalRuleOverriddenEventMetadata = a})

instance FromJSON PullRequestEvent where
        parseJSON
          = withObject "PullRequestEvent"
              (\ x ->
                 PullRequestEvent' <$>
                   (x .:? "pullRequestMergedStateChangedEventMetadata")
                     <*> (x .:? "pullRequestCreatedEventMetadata")
                     <*> (x .:? "approvalRuleEventMetadata")
                     <*> (x .:? "pullRequestEventType")
                     <*> (x .:? "pullRequestStatusChangedEventMetadata")
                     <*> (x .:? "actorArn")
                     <*> (x .:? "pullRequestId")
                     <*> (x .:? "eventDate")
                     <*> (x .:? "approvalStateChangedEventMetadata")
                     <*>
                     (x .:?
                        "pullRequestSourceReferenceUpdatedEventMetadata")
                     <*> (x .:? "approvalRuleOverriddenEventMetadata"))

instance Hashable PullRequestEvent where

instance NFData PullRequestEvent where

-- | Returns information about the change in the merge state for a pull request event.
--
--
--
-- /See:/ 'pullRequestMergedStateChangedEventMetadata' smart constructor.
data PullRequestMergedStateChangedEventMetadata =
  PullRequestMergedStateChangedEventMetadata'
    { _prmscemDestinationReference :: !(Maybe Text)
    , _prmscemMergeMetadata        :: !(Maybe MergeMetadata)
    , _prmscemRepositoryName       :: !(Maybe Text)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'PullRequestMergedStateChangedEventMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'prmscemDestinationReference' - The name of the branch that the pull request is merged into.
--
-- * 'prmscemMergeMetadata' - Information about the merge state change event.
--
-- * 'prmscemRepositoryName' - The name of the repository where the pull request was created.
pullRequestMergedStateChangedEventMetadata
    :: PullRequestMergedStateChangedEventMetadata
pullRequestMergedStateChangedEventMetadata =
  PullRequestMergedStateChangedEventMetadata'
    { _prmscemDestinationReference = Nothing
    , _prmscemMergeMetadata = Nothing
    , _prmscemRepositoryName = Nothing
    }


-- | The name of the branch that the pull request is merged into.
prmscemDestinationReference :: Lens' PullRequestMergedStateChangedEventMetadata (Maybe Text)
prmscemDestinationReference = lens _prmscemDestinationReference (\ s a -> s{_prmscemDestinationReference = a})

-- | Information about the merge state change event.
prmscemMergeMetadata :: Lens' PullRequestMergedStateChangedEventMetadata (Maybe MergeMetadata)
prmscemMergeMetadata = lens _prmscemMergeMetadata (\ s a -> s{_prmscemMergeMetadata = a})

-- | The name of the repository where the pull request was created.
prmscemRepositoryName :: Lens' PullRequestMergedStateChangedEventMetadata (Maybe Text)
prmscemRepositoryName = lens _prmscemRepositoryName (\ s a -> s{_prmscemRepositoryName = a})

instance FromJSON
           PullRequestMergedStateChangedEventMetadata
         where
        parseJSON
          = withObject
              "PullRequestMergedStateChangedEventMetadata"
              (\ x ->
                 PullRequestMergedStateChangedEventMetadata' <$>
                   (x .:? "destinationReference") <*>
                     (x .:? "mergeMetadata")
                     <*> (x .:? "repositoryName"))

instance Hashable
           PullRequestMergedStateChangedEventMetadata
         where

instance NFData
           PullRequestMergedStateChangedEventMetadata
         where

-- | Information about an update to the source branch of a pull request.
--
--
--
-- /See:/ 'pullRequestSourceReferenceUpdatedEventMetadata' smart constructor.
data PullRequestSourceReferenceUpdatedEventMetadata =
  PullRequestSourceReferenceUpdatedEventMetadata'
    { _prsruemAfterCommitId  :: !(Maybe Text)
    , _prsruemBeforeCommitId :: !(Maybe Text)
    , _prsruemMergeBase      :: !(Maybe Text)
    , _prsruemRepositoryName :: !(Maybe Text)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'PullRequestSourceReferenceUpdatedEventMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'prsruemAfterCommitId' - The full commit ID of the commit in the source branch that was the tip of the branch at the time the pull request was updated.
--
-- * 'prsruemBeforeCommitId' - The full commit ID of the commit in the destination branch that was the tip of the branch at the time the pull request was updated.
--
-- * 'prsruemMergeBase' - The commit ID of the most recent commit that the source branch and the destination branch have in common.
--
-- * 'prsruemRepositoryName' - The name of the repository where the pull request was updated.
pullRequestSourceReferenceUpdatedEventMetadata
    :: PullRequestSourceReferenceUpdatedEventMetadata
pullRequestSourceReferenceUpdatedEventMetadata =
  PullRequestSourceReferenceUpdatedEventMetadata'
    { _prsruemAfterCommitId = Nothing
    , _prsruemBeforeCommitId = Nothing
    , _prsruemMergeBase = Nothing
    , _prsruemRepositoryName = Nothing
    }


-- | The full commit ID of the commit in the source branch that was the tip of the branch at the time the pull request was updated.
prsruemAfterCommitId :: Lens' PullRequestSourceReferenceUpdatedEventMetadata (Maybe Text)
prsruemAfterCommitId = lens _prsruemAfterCommitId (\ s a -> s{_prsruemAfterCommitId = a})

-- | The full commit ID of the commit in the destination branch that was the tip of the branch at the time the pull request was updated.
prsruemBeforeCommitId :: Lens' PullRequestSourceReferenceUpdatedEventMetadata (Maybe Text)
prsruemBeforeCommitId = lens _prsruemBeforeCommitId (\ s a -> s{_prsruemBeforeCommitId = a})

-- | The commit ID of the most recent commit that the source branch and the destination branch have in common.
prsruemMergeBase :: Lens' PullRequestSourceReferenceUpdatedEventMetadata (Maybe Text)
prsruemMergeBase = lens _prsruemMergeBase (\ s a -> s{_prsruemMergeBase = a})

-- | The name of the repository where the pull request was updated.
prsruemRepositoryName :: Lens' PullRequestSourceReferenceUpdatedEventMetadata (Maybe Text)
prsruemRepositoryName = lens _prsruemRepositoryName (\ s a -> s{_prsruemRepositoryName = a})

instance FromJSON
           PullRequestSourceReferenceUpdatedEventMetadata
         where
        parseJSON
          = withObject
              "PullRequestSourceReferenceUpdatedEventMetadata"
              (\ x ->
                 PullRequestSourceReferenceUpdatedEventMetadata' <$>
                   (x .:? "afterCommitId") <*> (x .:? "beforeCommitId")
                     <*> (x .:? "mergeBase")
                     <*> (x .:? "repositoryName"))

instance Hashable
           PullRequestSourceReferenceUpdatedEventMetadata
         where

instance NFData
           PullRequestSourceReferenceUpdatedEventMetadata
         where

-- | Information about a change to the status of a pull request.
--
--
--
-- /See:/ 'pullRequestStatusChangedEventMetadata' smart constructor.
newtype PullRequestStatusChangedEventMetadata =
  PullRequestStatusChangedEventMetadata'
    { _prscemPullRequestStatus :: Maybe PullRequestStatusEnum
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'PullRequestStatusChangedEventMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'prscemPullRequestStatus' - The changed status of the pull request.
pullRequestStatusChangedEventMetadata
    :: PullRequestStatusChangedEventMetadata
pullRequestStatusChangedEventMetadata =
  PullRequestStatusChangedEventMetadata' {_prscemPullRequestStatus = Nothing}


-- | The changed status of the pull request.
prscemPullRequestStatus :: Lens' PullRequestStatusChangedEventMetadata (Maybe PullRequestStatusEnum)
prscemPullRequestStatus = lens _prscemPullRequestStatus (\ s a -> s{_prscemPullRequestStatus = a})

instance FromJSON
           PullRequestStatusChangedEventMetadata
         where
        parseJSON
          = withObject "PullRequestStatusChangedEventMetadata"
              (\ x ->
                 PullRequestStatusChangedEventMetadata' <$>
                   (x .:? "pullRequestStatus"))

instance Hashable
           PullRequestStatusChangedEventMetadata
         where

instance NFData PullRequestStatusChangedEventMetadata
         where

-- | Returns information about a pull request target.
--
--
--
-- /See:/ 'pullRequestTarget' smart constructor.
data PullRequestTarget =
  PullRequestTarget'
    { _prtSourceCommit         :: !(Maybe Text)
    , _prtDestinationReference :: !(Maybe Text)
    , _prtMergeMetadata        :: !(Maybe MergeMetadata)
    , _prtMergeBase            :: !(Maybe Text)
    , _prtDestinationCommit    :: !(Maybe Text)
    , _prtRepositoryName       :: !(Maybe Text)
    , _prtSourceReference      :: !(Maybe Text)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'PullRequestTarget' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'prtSourceCommit' - The full commit ID of the tip of the source branch used to create the pull request. If the pull request branch is updated by a push while the pull request is open, the commit ID changes to reflect the new tip of the branch.
--
-- * 'prtDestinationReference' - The branch of the repository where the pull request changes are merged. Also known as the destination branch.
--
-- * 'prtMergeMetadata' - Returns metadata about the state of the merge, including whether the merge has been made.
--
-- * 'prtMergeBase' - The commit ID of the most recent commit that the source branch and the destination branch have in common.
--
-- * 'prtDestinationCommit' - The full commit ID that is the tip of the destination branch. This is the commit where the pull request was or will be merged.
--
-- * 'prtRepositoryName' - The name of the repository that contains the pull request source and destination branches.
--
-- * 'prtSourceReference' - The branch of the repository that contains the changes for the pull request. Also known as the source branch.
pullRequestTarget
    :: PullRequestTarget
pullRequestTarget =
  PullRequestTarget'
    { _prtSourceCommit = Nothing
    , _prtDestinationReference = Nothing
    , _prtMergeMetadata = Nothing
    , _prtMergeBase = Nothing
    , _prtDestinationCommit = Nothing
    , _prtRepositoryName = Nothing
    , _prtSourceReference = Nothing
    }


-- | The full commit ID of the tip of the source branch used to create the pull request. If the pull request branch is updated by a push while the pull request is open, the commit ID changes to reflect the new tip of the branch.
prtSourceCommit :: Lens' PullRequestTarget (Maybe Text)
prtSourceCommit = lens _prtSourceCommit (\ s a -> s{_prtSourceCommit = a})

-- | The branch of the repository where the pull request changes are merged. Also known as the destination branch.
prtDestinationReference :: Lens' PullRequestTarget (Maybe Text)
prtDestinationReference = lens _prtDestinationReference (\ s a -> s{_prtDestinationReference = a})

-- | Returns metadata about the state of the merge, including whether the merge has been made.
prtMergeMetadata :: Lens' PullRequestTarget (Maybe MergeMetadata)
prtMergeMetadata = lens _prtMergeMetadata (\ s a -> s{_prtMergeMetadata = a})

-- | The commit ID of the most recent commit that the source branch and the destination branch have in common.
prtMergeBase :: Lens' PullRequestTarget (Maybe Text)
prtMergeBase = lens _prtMergeBase (\ s a -> s{_prtMergeBase = a})

-- | The full commit ID that is the tip of the destination branch. This is the commit where the pull request was or will be merged.
prtDestinationCommit :: Lens' PullRequestTarget (Maybe Text)
prtDestinationCommit = lens _prtDestinationCommit (\ s a -> s{_prtDestinationCommit = a})

-- | The name of the repository that contains the pull request source and destination branches.
prtRepositoryName :: Lens' PullRequestTarget (Maybe Text)
prtRepositoryName = lens _prtRepositoryName (\ s a -> s{_prtRepositoryName = a})

-- | The branch of the repository that contains the changes for the pull request. Also known as the source branch.
prtSourceReference :: Lens' PullRequestTarget (Maybe Text)
prtSourceReference = lens _prtSourceReference (\ s a -> s{_prtSourceReference = a})

instance FromJSON PullRequestTarget where
        parseJSON
          = withObject "PullRequestTarget"
              (\ x ->
                 PullRequestTarget' <$>
                   (x .:? "sourceCommit") <*>
                     (x .:? "destinationReference")
                     <*> (x .:? "mergeMetadata")
                     <*> (x .:? "mergeBase")
                     <*> (x .:? "destinationCommit")
                     <*> (x .:? "repositoryName")
                     <*> (x .:? "sourceReference"))

instance Hashable PullRequestTarget where

instance NFData PullRequestTarget where

-- | Information about a file added or updated as part of a commit.
--
--
--
-- /See:/ 'putFileEntry' smart constructor.
data PutFileEntry =
  PutFileEntry'
    { _pfeFileContent :: !(Maybe Base64)
    , _pfeFileMode    :: !(Maybe FileModeTypeEnum)
    , _pfeSourceFile  :: !(Maybe SourceFileSpecifier)
    , _pfeFilePath    :: !Text
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'PutFileEntry' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pfeFileContent' - The content of the file, if a source file is not specified.-- /Note:/ This 'Lens' automatically encodes and decodes Base64 data. The underlying isomorphism will encode to Base64 representation during serialisation, and decode from Base64 representation during deserialisation. This 'Lens' accepts and returns only raw unencoded data.
--
-- * 'pfeFileMode' - The extrapolated file mode permissions for the file. Valid values include EXECUTABLE and NORMAL.
--
-- * 'pfeSourceFile' - The name and full path of the file that contains the changes you want to make as part of the commit, if you are not providing the file content directly.
--
-- * 'pfeFilePath' - The full path to the file in the repository, including the name of the file.
putFileEntry
    :: Text -- ^ 'pfeFilePath'
    -> PutFileEntry
putFileEntry pFilePath_ =
  PutFileEntry'
    { _pfeFileContent = Nothing
    , _pfeFileMode = Nothing
    , _pfeSourceFile = Nothing
    , _pfeFilePath = pFilePath_
    }


-- | The content of the file, if a source file is not specified.-- /Note:/ This 'Lens' automatically encodes and decodes Base64 data. The underlying isomorphism will encode to Base64 representation during serialisation, and decode from Base64 representation during deserialisation. This 'Lens' accepts and returns only raw unencoded data.
pfeFileContent :: Lens' PutFileEntry (Maybe ByteString)
pfeFileContent = lens _pfeFileContent (\ s a -> s{_pfeFileContent = a}) . mapping _Base64

-- | The extrapolated file mode permissions for the file. Valid values include EXECUTABLE and NORMAL.
pfeFileMode :: Lens' PutFileEntry (Maybe FileModeTypeEnum)
pfeFileMode = lens _pfeFileMode (\ s a -> s{_pfeFileMode = a})

-- | The name and full path of the file that contains the changes you want to make as part of the commit, if you are not providing the file content directly.
pfeSourceFile :: Lens' PutFileEntry (Maybe SourceFileSpecifier)
pfeSourceFile = lens _pfeSourceFile (\ s a -> s{_pfeSourceFile = a})

-- | The full path to the file in the repository, including the name of the file.
pfeFilePath :: Lens' PutFileEntry Text
pfeFilePath = lens _pfeFilePath (\ s a -> s{_pfeFilePath = a})

instance Hashable PutFileEntry where

instance NFData PutFileEntry where

instance ToJSON PutFileEntry where
        toJSON PutFileEntry'{..}
          = object
              (catMaybes
                 [("fileContent" .=) <$> _pfeFileContent,
                  ("fileMode" .=) <$> _pfeFileMode,
                  ("sourceFile" .=) <$> _pfeSourceFile,
                  Just ("filePath" .= _pfeFilePath)])

-- | Information about a replacement content entry in the conflict of a merge or pull request operation.
--
--
--
-- /See:/ 'replaceContentEntry' smart constructor.
data ReplaceContentEntry =
  ReplaceContentEntry'
    { _rceFileMode        :: !(Maybe FileModeTypeEnum)
    , _rceContent         :: !(Maybe Base64)
    , _rceFilePath        :: !Text
    , _rceReplacementType :: !ReplacementTypeEnum
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'ReplaceContentEntry' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rceFileMode' - The file mode to apply during conflict resoltion.
--
-- * 'rceContent' - The base-64 encoded content to use when the replacement type is USE_NEW_CONTENT.-- /Note:/ This 'Lens' automatically encodes and decodes Base64 data. The underlying isomorphism will encode to Base64 representation during serialisation, and decode from Base64 representation during deserialisation. This 'Lens' accepts and returns only raw unencoded data.
--
-- * 'rceFilePath' - The path of the conflicting file.
--
-- * 'rceReplacementType' - The replacement type to use when determining how to resolve the conflict.
replaceContentEntry
    :: Text -- ^ 'rceFilePath'
    -> ReplacementTypeEnum -- ^ 'rceReplacementType'
    -> ReplaceContentEntry
replaceContentEntry pFilePath_ pReplacementType_ =
  ReplaceContentEntry'
    { _rceFileMode = Nothing
    , _rceContent = Nothing
    , _rceFilePath = pFilePath_
    , _rceReplacementType = pReplacementType_
    }


-- | The file mode to apply during conflict resoltion.
rceFileMode :: Lens' ReplaceContentEntry (Maybe FileModeTypeEnum)
rceFileMode = lens _rceFileMode (\ s a -> s{_rceFileMode = a})

-- | The base-64 encoded content to use when the replacement type is USE_NEW_CONTENT.-- /Note:/ This 'Lens' automatically encodes and decodes Base64 data. The underlying isomorphism will encode to Base64 representation during serialisation, and decode from Base64 representation during deserialisation. This 'Lens' accepts and returns only raw unencoded data.
rceContent :: Lens' ReplaceContentEntry (Maybe ByteString)
rceContent = lens _rceContent (\ s a -> s{_rceContent = a}) . mapping _Base64

-- | The path of the conflicting file.
rceFilePath :: Lens' ReplaceContentEntry Text
rceFilePath = lens _rceFilePath (\ s a -> s{_rceFilePath = a})

-- | The replacement type to use when determining how to resolve the conflict.
rceReplacementType :: Lens' ReplaceContentEntry ReplacementTypeEnum
rceReplacementType = lens _rceReplacementType (\ s a -> s{_rceReplacementType = a})

instance Hashable ReplaceContentEntry where

instance NFData ReplaceContentEntry where

instance ToJSON ReplaceContentEntry where
        toJSON ReplaceContentEntry'{..}
          = object
              (catMaybes
                 [("fileMode" .=) <$> _rceFileMode,
                  ("content" .=) <$> _rceContent,
                  Just ("filePath" .= _rceFilePath),
                  Just ("replacementType" .= _rceReplacementType)])

-- | Information about a repository.
--
--
--
-- /See:/ 'repositoryMetadata' smart constructor.
data RepositoryMetadata =
  RepositoryMetadata'
    { _rmRepositoryDescription :: !(Maybe Text)
    , _rmLastModifiedDate      :: !(Maybe POSIX)
    , _rmARN                   :: !(Maybe Text)
    , _rmCloneURLHTTP          :: !(Maybe Text)
    , _rmAccountId             :: !(Maybe Text)
    , _rmDefaultBranch         :: !(Maybe Text)
    , _rmRepositoryId          :: !(Maybe Text)
    , _rmRepositoryName        :: !(Maybe Text)
    , _rmCreationDate          :: !(Maybe POSIX)
    , _rmCloneURLSSH           :: !(Maybe Text)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'RepositoryMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rmRepositoryDescription' - A comment or description about the repository.
--
-- * 'rmLastModifiedDate' - The date and time the repository was last modified, in timestamp format.
--
-- * 'rmARN' - The Amazon Resource Name (ARN) of the repository.
--
-- * 'rmCloneURLHTTP' - The URL to use for cloning the repository over HTTPS.
--
-- * 'rmAccountId' - The ID of the AWS account associated with the repository.
--
-- * 'rmDefaultBranch' - The repository's default branch name.
--
-- * 'rmRepositoryId' - The ID of the repository.
--
-- * 'rmRepositoryName' - The repository's name.
--
-- * 'rmCreationDate' - The date and time the repository was created, in timestamp format.
--
-- * 'rmCloneURLSSH' - The URL to use for cloning the repository over SSH.
repositoryMetadata
    :: RepositoryMetadata
repositoryMetadata =
  RepositoryMetadata'
    { _rmRepositoryDescription = Nothing
    , _rmLastModifiedDate = Nothing
    , _rmARN = Nothing
    , _rmCloneURLHTTP = Nothing
    , _rmAccountId = Nothing
    , _rmDefaultBranch = Nothing
    , _rmRepositoryId = Nothing
    , _rmRepositoryName = Nothing
    , _rmCreationDate = Nothing
    , _rmCloneURLSSH = Nothing
    }


-- | A comment or description about the repository.
rmRepositoryDescription :: Lens' RepositoryMetadata (Maybe Text)
rmRepositoryDescription = lens _rmRepositoryDescription (\ s a -> s{_rmRepositoryDescription = a})

-- | The date and time the repository was last modified, in timestamp format.
rmLastModifiedDate :: Lens' RepositoryMetadata (Maybe UTCTime)
rmLastModifiedDate = lens _rmLastModifiedDate (\ s a -> s{_rmLastModifiedDate = a}) . mapping _Time

-- | The Amazon Resource Name (ARN) of the repository.
rmARN :: Lens' RepositoryMetadata (Maybe Text)
rmARN = lens _rmARN (\ s a -> s{_rmARN = a})

-- | The URL to use for cloning the repository over HTTPS.
rmCloneURLHTTP :: Lens' RepositoryMetadata (Maybe Text)
rmCloneURLHTTP = lens _rmCloneURLHTTP (\ s a -> s{_rmCloneURLHTTP = a})

-- | The ID of the AWS account associated with the repository.
rmAccountId :: Lens' RepositoryMetadata (Maybe Text)
rmAccountId = lens _rmAccountId (\ s a -> s{_rmAccountId = a})

-- | The repository's default branch name.
rmDefaultBranch :: Lens' RepositoryMetadata (Maybe Text)
rmDefaultBranch = lens _rmDefaultBranch (\ s a -> s{_rmDefaultBranch = a})

-- | The ID of the repository.
rmRepositoryId :: Lens' RepositoryMetadata (Maybe Text)
rmRepositoryId = lens _rmRepositoryId (\ s a -> s{_rmRepositoryId = a})

-- | The repository's name.
rmRepositoryName :: Lens' RepositoryMetadata (Maybe Text)
rmRepositoryName = lens _rmRepositoryName (\ s a -> s{_rmRepositoryName = a})

-- | The date and time the repository was created, in timestamp format.
rmCreationDate :: Lens' RepositoryMetadata (Maybe UTCTime)
rmCreationDate = lens _rmCreationDate (\ s a -> s{_rmCreationDate = a}) . mapping _Time

-- | The URL to use for cloning the repository over SSH.
rmCloneURLSSH :: Lens' RepositoryMetadata (Maybe Text)
rmCloneURLSSH = lens _rmCloneURLSSH (\ s a -> s{_rmCloneURLSSH = a})

instance FromJSON RepositoryMetadata where
        parseJSON
          = withObject "RepositoryMetadata"
              (\ x ->
                 RepositoryMetadata' <$>
                   (x .:? "repositoryDescription") <*>
                     (x .:? "lastModifiedDate")
                     <*> (x .:? "Arn")
                     <*> (x .:? "cloneUrlHttp")
                     <*> (x .:? "accountId")
                     <*> (x .:? "defaultBranch")
                     <*> (x .:? "repositoryId")
                     <*> (x .:? "repositoryName")
                     <*> (x .:? "creationDate")
                     <*> (x .:? "cloneUrlSsh"))

instance Hashable RepositoryMetadata where

instance NFData RepositoryMetadata where

-- | Information about a repository name and ID.
--
--
--
-- /See:/ 'repositoryNameIdPair' smart constructor.
data RepositoryNameIdPair =
  RepositoryNameIdPair'
    { _rnipRepositoryId   :: !(Maybe Text)
    , _rnipRepositoryName :: !(Maybe Text)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'RepositoryNameIdPair' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rnipRepositoryId' - The ID associated with the repository.
--
-- * 'rnipRepositoryName' - The name associated with the repository.
repositoryNameIdPair
    :: RepositoryNameIdPair
repositoryNameIdPair =
  RepositoryNameIdPair'
    {_rnipRepositoryId = Nothing, _rnipRepositoryName = Nothing}


-- | The ID associated with the repository.
rnipRepositoryId :: Lens' RepositoryNameIdPair (Maybe Text)
rnipRepositoryId = lens _rnipRepositoryId (\ s a -> s{_rnipRepositoryId = a})

-- | The name associated with the repository.
rnipRepositoryName :: Lens' RepositoryNameIdPair (Maybe Text)
rnipRepositoryName = lens _rnipRepositoryName (\ s a -> s{_rnipRepositoryName = a})

instance FromJSON RepositoryNameIdPair where
        parseJSON
          = withObject "RepositoryNameIdPair"
              (\ x ->
                 RepositoryNameIdPair' <$>
                   (x .:? "repositoryId") <*> (x .:? "repositoryName"))

instance Hashable RepositoryNameIdPair where

instance NFData RepositoryNameIdPair where

-- | Information about a trigger for a repository.
--
--
--
-- /See:/ 'repositoryTrigger' smart constructor.
data RepositoryTrigger =
  RepositoryTrigger'
    { _rtBranches       :: !(Maybe [Text])
    , _rtCustomData     :: !(Maybe Text)
    , _rtName           :: !Text
    , _rtDestinationARN :: !Text
    , _rtEvents         :: ![RepositoryTriggerEventEnum]
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'RepositoryTrigger' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rtBranches' - The branches to be included in the trigger configuration. If you specify an empty array, the trigger applies to all branches.
--
-- * 'rtCustomData' - Any custom data associated with the trigger to be included in the information sent to the target of the trigger.
--
-- * 'rtName' - The name of the trigger.
--
-- * 'rtDestinationARN' - The ARN of the resource that is the target for a trigger (for example, the ARN of a topic in Amazon SNS).
--
-- * 'rtEvents' - The repository events that cause the trigger to run actions in another service, such as sending a notification through Amazon SNS.
repositoryTrigger
    :: Text -- ^ 'rtName'
    -> Text -- ^ 'rtDestinationARN'
    -> RepositoryTrigger
repositoryTrigger pName_ pDestinationARN_ =
  RepositoryTrigger'
    { _rtBranches = Nothing
    , _rtCustomData = Nothing
    , _rtName = pName_
    , _rtDestinationARN = pDestinationARN_
    , _rtEvents = mempty
    }


-- | The branches to be included in the trigger configuration. If you specify an empty array, the trigger applies to all branches.
rtBranches :: Lens' RepositoryTrigger [Text]
rtBranches = lens _rtBranches (\ s a -> s{_rtBranches = a}) . _Default . _Coerce

-- | Any custom data associated with the trigger to be included in the information sent to the target of the trigger.
rtCustomData :: Lens' RepositoryTrigger (Maybe Text)
rtCustomData = lens _rtCustomData (\ s a -> s{_rtCustomData = a})

-- | The name of the trigger.
rtName :: Lens' RepositoryTrigger Text
rtName = lens _rtName (\ s a -> s{_rtName = a})

-- | The ARN of the resource that is the target for a trigger (for example, the ARN of a topic in Amazon SNS).
rtDestinationARN :: Lens' RepositoryTrigger Text
rtDestinationARN = lens _rtDestinationARN (\ s a -> s{_rtDestinationARN = a})

-- | The repository events that cause the trigger to run actions in another service, such as sending a notification through Amazon SNS.
rtEvents :: Lens' RepositoryTrigger [RepositoryTriggerEventEnum]
rtEvents = lens _rtEvents (\ s a -> s{_rtEvents = a}) . _Coerce

instance FromJSON RepositoryTrigger where
        parseJSON
          = withObject "RepositoryTrigger"
              (\ x ->
                 RepositoryTrigger' <$>
                   (x .:? "branches" .!= mempty) <*>
                     (x .:? "customData")
                     <*> (x .: "name")
                     <*> (x .: "destinationArn")
                     <*> (x .:? "events" .!= mempty))

instance Hashable RepositoryTrigger where

instance NFData RepositoryTrigger where

instance ToJSON RepositoryTrigger where
        toJSON RepositoryTrigger'{..}
          = object
              (catMaybes
                 [("branches" .=) <$> _rtBranches,
                  ("customData" .=) <$> _rtCustomData,
                  Just ("name" .= _rtName),
                  Just ("destinationArn" .= _rtDestinationARN),
                  Just ("events" .= _rtEvents)])

-- | A trigger failed to run.
--
--
--
-- /See:/ 'repositoryTriggerExecutionFailure' smart constructor.
data RepositoryTriggerExecutionFailure =
  RepositoryTriggerExecutionFailure'
    { _rtefFailureMessage :: !(Maybe Text)
    , _rtefTrigger        :: !(Maybe Text)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'RepositoryTriggerExecutionFailure' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rtefFailureMessage' - Message information about the trigger that did not run.
--
-- * 'rtefTrigger' - The name of the trigger that did not run.
repositoryTriggerExecutionFailure
    :: RepositoryTriggerExecutionFailure
repositoryTriggerExecutionFailure =
  RepositoryTriggerExecutionFailure'
    {_rtefFailureMessage = Nothing, _rtefTrigger = Nothing}


-- | Message information about the trigger that did not run.
rtefFailureMessage :: Lens' RepositoryTriggerExecutionFailure (Maybe Text)
rtefFailureMessage = lens _rtefFailureMessage (\ s a -> s{_rtefFailureMessage = a})

-- | The name of the trigger that did not run.
rtefTrigger :: Lens' RepositoryTriggerExecutionFailure (Maybe Text)
rtefTrigger = lens _rtefTrigger (\ s a -> s{_rtefTrigger = a})

instance FromJSON RepositoryTriggerExecutionFailure
         where
        parseJSON
          = withObject "RepositoryTriggerExecutionFailure"
              (\ x ->
                 RepositoryTriggerExecutionFailure' <$>
                   (x .:? "failureMessage") <*> (x .:? "trigger"))

instance Hashable RepositoryTriggerExecutionFailure
         where

instance NFData RepositoryTriggerExecutionFailure
         where

-- | Information about the file mode changes.
--
--
--
-- /See:/ 'setFileModeEntry' smart constructor.
data SetFileModeEntry =
  SetFileModeEntry'
    { _sfmeFilePath :: !Text
    , _sfmeFileMode :: !FileModeTypeEnum
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'SetFileModeEntry' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sfmeFilePath' - The full path to the file, including the name of the file.
--
-- * 'sfmeFileMode' - The file mode for the file.
setFileModeEntry
    :: Text -- ^ 'sfmeFilePath'
    -> FileModeTypeEnum -- ^ 'sfmeFileMode'
    -> SetFileModeEntry
setFileModeEntry pFilePath_ pFileMode_ =
  SetFileModeEntry' {_sfmeFilePath = pFilePath_, _sfmeFileMode = pFileMode_}


-- | The full path to the file, including the name of the file.
sfmeFilePath :: Lens' SetFileModeEntry Text
sfmeFilePath = lens _sfmeFilePath (\ s a -> s{_sfmeFilePath = a})

-- | The file mode for the file.
sfmeFileMode :: Lens' SetFileModeEntry FileModeTypeEnum
sfmeFileMode = lens _sfmeFileMode (\ s a -> s{_sfmeFileMode = a})

instance Hashable SetFileModeEntry where

instance NFData SetFileModeEntry where

instance ToJSON SetFileModeEntry where
        toJSON SetFileModeEntry'{..}
          = object
              (catMaybes
                 [Just ("filePath" .= _sfmeFilePath),
                  Just ("fileMode" .= _sfmeFileMode)])

-- | Information about a source file that is part of changes made in a commit.
--
--
--
-- /See:/ 'sourceFileSpecifier' smart constructor.
data SourceFileSpecifier =
  SourceFileSpecifier'
    { _sfsIsMove   :: !(Maybe Bool)
    , _sfsFilePath :: !Text
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'SourceFileSpecifier' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sfsIsMove' - Whether to remove the source file from the parent commit.
--
-- * 'sfsFilePath' - The full path to the file, including the name of the file.
sourceFileSpecifier
    :: Text -- ^ 'sfsFilePath'
    -> SourceFileSpecifier
sourceFileSpecifier pFilePath_ =
  SourceFileSpecifier' {_sfsIsMove = Nothing, _sfsFilePath = pFilePath_}


-- | Whether to remove the source file from the parent commit.
sfsIsMove :: Lens' SourceFileSpecifier (Maybe Bool)
sfsIsMove = lens _sfsIsMove (\ s a -> s{_sfsIsMove = a})

-- | The full path to the file, including the name of the file.
sfsFilePath :: Lens' SourceFileSpecifier Text
sfsFilePath = lens _sfsFilePath (\ s a -> s{_sfsFilePath = a})

instance Hashable SourceFileSpecifier where

instance NFData SourceFileSpecifier where

instance ToJSON SourceFileSpecifier where
        toJSON SourceFileSpecifier'{..}
          = object
              (catMaybes
                 [("isMove" .=) <$> _sfsIsMove,
                  Just ("filePath" .= _sfsFilePath)])

-- | Returns information about a submodule reference in a repository folder.
--
--
--
-- /See:/ 'subModule' smart constructor.
data SubModule =
  SubModule'
    { _smCommitId     :: !(Maybe Text)
    , _smAbsolutePath :: !(Maybe Text)
    , _smRelativePath :: !(Maybe Text)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'SubModule' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'smCommitId' - The commit ID that contains the reference to the submodule.
--
-- * 'smAbsolutePath' - The fully qualified path to the folder that contains the reference to the submodule.
--
-- * 'smRelativePath' - The relative path of the submodule from the folder where the query originated.
subModule
    :: SubModule
subModule =
  SubModule'
    { _smCommitId = Nothing
    , _smAbsolutePath = Nothing
    , _smRelativePath = Nothing
    }


-- | The commit ID that contains the reference to the submodule.
smCommitId :: Lens' SubModule (Maybe Text)
smCommitId = lens _smCommitId (\ s a -> s{_smCommitId = a})

-- | The fully qualified path to the folder that contains the reference to the submodule.
smAbsolutePath :: Lens' SubModule (Maybe Text)
smAbsolutePath = lens _smAbsolutePath (\ s a -> s{_smAbsolutePath = a})

-- | The relative path of the submodule from the folder where the query originated.
smRelativePath :: Lens' SubModule (Maybe Text)
smRelativePath = lens _smRelativePath (\ s a -> s{_smRelativePath = a})

instance FromJSON SubModule where
        parseJSON
          = withObject "SubModule"
              (\ x ->
                 SubModule' <$>
                   (x .:? "commitId") <*> (x .:? "absolutePath") <*>
                     (x .:? "relativePath"))

instance Hashable SubModule where

instance NFData SubModule where

-- | Returns information about a symbolic link in a repository folder.
--
--
--
-- /See:/ 'symbolicLink' smart constructor.
data SymbolicLink =
  SymbolicLink'
    { _slAbsolutePath :: !(Maybe Text)
    , _slFileMode     :: !(Maybe FileModeTypeEnum)
    , _slBlobId       :: !(Maybe Text)
    , _slRelativePath :: !(Maybe Text)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'SymbolicLink' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'slAbsolutePath' - The fully qualified path to the folder that contains the symbolic link.
--
-- * 'slFileMode' - The file mode permissions of the blob that cotains information about the symbolic link.
--
-- * 'slBlobId' - The blob ID that contains the information about the symbolic link.
--
-- * 'slRelativePath' - The relative path of the symbolic link from the folder where the query originated.
symbolicLink
    :: SymbolicLink
symbolicLink =
  SymbolicLink'
    { _slAbsolutePath = Nothing
    , _slFileMode = Nothing
    , _slBlobId = Nothing
    , _slRelativePath = Nothing
    }


-- | The fully qualified path to the folder that contains the symbolic link.
slAbsolutePath :: Lens' SymbolicLink (Maybe Text)
slAbsolutePath = lens _slAbsolutePath (\ s a -> s{_slAbsolutePath = a})

-- | The file mode permissions of the blob that cotains information about the symbolic link.
slFileMode :: Lens' SymbolicLink (Maybe FileModeTypeEnum)
slFileMode = lens _slFileMode (\ s a -> s{_slFileMode = a})

-- | The blob ID that contains the information about the symbolic link.
slBlobId :: Lens' SymbolicLink (Maybe Text)
slBlobId = lens _slBlobId (\ s a -> s{_slBlobId = a})

-- | The relative path of the symbolic link from the folder where the query originated.
slRelativePath :: Lens' SymbolicLink (Maybe Text)
slRelativePath = lens _slRelativePath (\ s a -> s{_slRelativePath = a})

instance FromJSON SymbolicLink where
        parseJSON
          = withObject "SymbolicLink"
              (\ x ->
                 SymbolicLink' <$>
                   (x .:? "absolutePath") <*> (x .:? "fileMode") <*>
                     (x .:? "blobId")
                     <*> (x .:? "relativePath"))

instance Hashable SymbolicLink where

instance NFData SymbolicLink where

-- | Returns information about a target for a pull request.
--
--
--
-- /See:/ 'target' smart constructor.
data Target =
  Target'
    { _tDestinationReference :: !(Maybe Text)
    , _tRepositoryName       :: !Text
    , _tSourceReference      :: !Text
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'Target' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tDestinationReference' - The branch of the repository where the pull request changes are merged. Also known as the destination branch.
--
-- * 'tRepositoryName' - The name of the repository that contains the pull request.
--
-- * 'tSourceReference' - The branch of the repository that contains the changes for the pull request. Also known as the source branch.
target
    :: Text -- ^ 'tRepositoryName'
    -> Text -- ^ 'tSourceReference'
    -> Target
target pRepositoryName_ pSourceReference_ =
  Target'
    { _tDestinationReference = Nothing
    , _tRepositoryName = pRepositoryName_
    , _tSourceReference = pSourceReference_
    }


-- | The branch of the repository where the pull request changes are merged. Also known as the destination branch.
tDestinationReference :: Lens' Target (Maybe Text)
tDestinationReference = lens _tDestinationReference (\ s a -> s{_tDestinationReference = a})

-- | The name of the repository that contains the pull request.
tRepositoryName :: Lens' Target Text
tRepositoryName = lens _tRepositoryName (\ s a -> s{_tRepositoryName = a})

-- | The branch of the repository that contains the changes for the pull request. Also known as the source branch.
tSourceReference :: Lens' Target Text
tSourceReference = lens _tSourceReference (\ s a -> s{_tSourceReference = a})

instance Hashable Target where

instance NFData Target where

instance ToJSON Target where
        toJSON Target'{..}
          = object
              (catMaybes
                 [("destinationReference" .=) <$>
                    _tDestinationReference,
                  Just ("repositoryName" .= _tRepositoryName),
                  Just ("sourceReference" .= _tSourceReference)])

-- | Information about the user who made a specified commit.
--
--
--
-- /See:/ 'userInfo' smart constructor.
data UserInfo =
  UserInfo'
    { _uiEmail :: !(Maybe Text)
    , _uiDate  :: !(Maybe Text)
    , _uiName  :: !(Maybe Text)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'UserInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uiEmail' - The email address associated with the user who made the commit, if any.
--
-- * 'uiDate' - The date when the specified commit was commited, in timestamp format with GMT offset.
--
-- * 'uiName' - The name of the user who made the specified commit.
userInfo
    :: UserInfo
userInfo = UserInfo' {_uiEmail = Nothing, _uiDate = Nothing, _uiName = Nothing}


-- | The email address associated with the user who made the commit, if any.
uiEmail :: Lens' UserInfo (Maybe Text)
uiEmail = lens _uiEmail (\ s a -> s{_uiEmail = a})

-- | The date when the specified commit was commited, in timestamp format with GMT offset.
uiDate :: Lens' UserInfo (Maybe Text)
uiDate = lens _uiDate (\ s a -> s{_uiDate = a})

-- | The name of the user who made the specified commit.
uiName :: Lens' UserInfo (Maybe Text)
uiName = lens _uiName (\ s a -> s{_uiName = a})

instance FromJSON UserInfo where
        parseJSON
          = withObject "UserInfo"
              (\ x ->
                 UserInfo' <$>
                   (x .:? "email") <*> (x .:? "date") <*>
                     (x .:? "name"))

instance Hashable UserInfo where

instance NFData UserInfo where
