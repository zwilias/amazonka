{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SSM.Types.Association
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.SSM.Types.Association where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.SSM.Types.AssociationOverview
import Network.AWS.SSM.Types.Target

-- | Describes an association of a Systems Manager document and an instance.
--
--
--
-- /See:/ 'association' smart constructor.
data Association = Association'{_aAssociationId ::
                                !(Maybe Text),
                                _aInstanceId :: !(Maybe Text),
                                _aOverview :: !(Maybe AssociationOverview),
                                _aLastExecutionDate :: !(Maybe POSIX),
                                _aScheduleExpression :: !(Maybe Text),
                                _aName :: !(Maybe Text),
                                _aTargets :: !(Maybe [Target]),
                                _aDocumentVersion :: !(Maybe Text),
                                _aAssociationVersion :: !(Maybe Text),
                                _aAssociationName :: !(Maybe Text)}
                     deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Association' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aAssociationId' - The ID created by the system when you create an association. An association is a binding between a document and a set of targets with a schedule.
--
-- * 'aInstanceId' - The ID of the instance.
--
-- * 'aOverview' - Information about the association.
--
-- * 'aLastExecutionDate' - The date on which the association was last run.
--
-- * 'aScheduleExpression' - A cron expression that specifies a schedule when the association runs.
--
-- * 'aName' - The name of the Systems Manager document.
--
-- * 'aTargets' - The instances targeted by the request to create an association. 
--
-- * 'aDocumentVersion' - The version of the document used in the association.
--
-- * 'aAssociationVersion' - The association version.
--
-- * 'aAssociationName' - The association name.
association
    :: Association
association
  = Association'{_aAssociationId = Nothing,
                 _aInstanceId = Nothing, _aOverview = Nothing,
                 _aLastExecutionDate = Nothing,
                 _aScheduleExpression = Nothing, _aName = Nothing,
                 _aTargets = Nothing, _aDocumentVersion = Nothing,
                 _aAssociationVersion = Nothing,
                 _aAssociationName = Nothing}

-- | The ID created by the system when you create an association. An association is a binding between a document and a set of targets with a schedule.
aAssociationId :: Lens' Association (Maybe Text)
aAssociationId = lens _aAssociationId (\ s a -> s{_aAssociationId = a})

-- | The ID of the instance.
aInstanceId :: Lens' Association (Maybe Text)
aInstanceId = lens _aInstanceId (\ s a -> s{_aInstanceId = a})

-- | Information about the association.
aOverview :: Lens' Association (Maybe AssociationOverview)
aOverview = lens _aOverview (\ s a -> s{_aOverview = a})

-- | The date on which the association was last run.
aLastExecutionDate :: Lens' Association (Maybe UTCTime)
aLastExecutionDate = lens _aLastExecutionDate (\ s a -> s{_aLastExecutionDate = a}) . mapping _Time

-- | A cron expression that specifies a schedule when the association runs.
aScheduleExpression :: Lens' Association (Maybe Text)
aScheduleExpression = lens _aScheduleExpression (\ s a -> s{_aScheduleExpression = a})

-- | The name of the Systems Manager document.
aName :: Lens' Association (Maybe Text)
aName = lens _aName (\ s a -> s{_aName = a})

-- | The instances targeted by the request to create an association. 
aTargets :: Lens' Association [Target]
aTargets = lens _aTargets (\ s a -> s{_aTargets = a}) . _Default . _Coerce

-- | The version of the document used in the association.
aDocumentVersion :: Lens' Association (Maybe Text)
aDocumentVersion = lens _aDocumentVersion (\ s a -> s{_aDocumentVersion = a})

-- | The association version.
aAssociationVersion :: Lens' Association (Maybe Text)
aAssociationVersion = lens _aAssociationVersion (\ s a -> s{_aAssociationVersion = a})

-- | The association name.
aAssociationName :: Lens' Association (Maybe Text)
aAssociationName = lens _aAssociationName (\ s a -> s{_aAssociationName = a})

instance FromJSON Association where
        parseJSON
          = withObject "Association"
              (\ x ->
                 Association' <$>
                   (x .:? "AssociationId") <*> (x .:? "InstanceId") <*>
                     (x .:? "Overview")
                     <*> (x .:? "LastExecutionDate")
                     <*> (x .:? "ScheduleExpression")
                     <*> (x .:? "Name")
                     <*> (x .:? "Targets" .!= mempty)
                     <*> (x .:? "DocumentVersion")
                     <*> (x .:? "AssociationVersion")
                     <*> (x .:? "AssociationName"))

instance Hashable Association where

instance NFData Association where
