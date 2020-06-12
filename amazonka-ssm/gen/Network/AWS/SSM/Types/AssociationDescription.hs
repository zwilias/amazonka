{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SSM.Types.AssociationDescription
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.SSM.Types.AssociationDescription where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.SSM.Types.AssociationOverview
import Network.AWS.SSM.Types.AssociationStatus
import Network.AWS.SSM.Types.InstanceAssociationOutputLocation
import Network.AWS.SSM.Types.Target

-- | Describes the parameters for a document.
--
--
--
-- /See:/ 'associationDescription' smart constructor.
data AssociationDescription = AssociationDescription'{_adAssociationId
                                                      :: !(Maybe Text),
                                                      _adInstanceId ::
                                                      !(Maybe Text),
                                                      _adStatus ::
                                                      !(Maybe
                                                          AssociationStatus),
                                                      _adLastSuccessfulExecutionDate
                                                      :: !(Maybe POSIX),
                                                      _adOverview ::
                                                      !(Maybe
                                                          AssociationOverview),
                                                      _adLastUpdateAssociationDate
                                                      :: !(Maybe POSIX),
                                                      _adDate :: !(Maybe POSIX),
                                                      _adLastExecutionDate ::
                                                      !(Maybe POSIX),
                                                      _adScheduleExpression ::
                                                      !(Maybe Text),
                                                      _adName :: !(Maybe Text),
                                                      _adOutputLocation ::
                                                      !(Maybe
                                                          InstanceAssociationOutputLocation),
                                                      _adTargets ::
                                                      !(Maybe [Target]),
                                                      _adParameters ::
                                                      !(Maybe
                                                          (Map Text [Text])),
                                                      _adDocumentVersion ::
                                                      !(Maybe Text),
                                                      _adAssociationVersion ::
                                                      !(Maybe Text),
                                                      _adAssociationName ::
                                                      !(Maybe Text)}
                                deriving (Eq, Read, Show, Data, Typeable,
                                          Generic)

-- | Creates a value of 'AssociationDescription' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'adAssociationId' - The association ID.
--
-- * 'adInstanceId' - The ID of the instance.
--
-- * 'adStatus' - The association status.
--
-- * 'adLastSuccessfulExecutionDate' - The last date on which the association was successfully run.
--
-- * 'adOverview' - Information about the association.
--
-- * 'adLastUpdateAssociationDate' - The date when the association was last updated.
--
-- * 'adDate' - The date when the association was made.
--
-- * 'adLastExecutionDate' - The date on which the association was last run.
--
-- * 'adScheduleExpression' - A cron expression that specifies a schedule when the association runs.
--
-- * 'adName' - The name of the Systems Manager document.
--
-- * 'adOutputLocation' - An Amazon S3 bucket where you want to store the output details of the request.
--
-- * 'adTargets' - The instances targeted by the request. 
--
-- * 'adParameters' - A description of the parameters for a document. 
--
-- * 'adDocumentVersion' - The document version.
--
-- * 'adAssociationVersion' - The association version.
--
-- * 'adAssociationName' - The association name.
associationDescription
    :: AssociationDescription
associationDescription
  = AssociationDescription'{_adAssociationId = Nothing,
                            _adInstanceId = Nothing, _adStatus = Nothing,
                            _adLastSuccessfulExecutionDate = Nothing,
                            _adOverview = Nothing,
                            _adLastUpdateAssociationDate = Nothing,
                            _adDate = Nothing, _adLastExecutionDate = Nothing,
                            _adScheduleExpression = Nothing, _adName = Nothing,
                            _adOutputLocation = Nothing, _adTargets = Nothing,
                            _adParameters = Nothing,
                            _adDocumentVersion = Nothing,
                            _adAssociationVersion = Nothing,
                            _adAssociationName = Nothing}

-- | The association ID.
adAssociationId :: Lens' AssociationDescription (Maybe Text)
adAssociationId = lens _adAssociationId (\ s a -> s{_adAssociationId = a})

-- | The ID of the instance.
adInstanceId :: Lens' AssociationDescription (Maybe Text)
adInstanceId = lens _adInstanceId (\ s a -> s{_adInstanceId = a})

-- | The association status.
adStatus :: Lens' AssociationDescription (Maybe AssociationStatus)
adStatus = lens _adStatus (\ s a -> s{_adStatus = a})

-- | The last date on which the association was successfully run.
adLastSuccessfulExecutionDate :: Lens' AssociationDescription (Maybe UTCTime)
adLastSuccessfulExecutionDate = lens _adLastSuccessfulExecutionDate (\ s a -> s{_adLastSuccessfulExecutionDate = a}) . mapping _Time

-- | Information about the association.
adOverview :: Lens' AssociationDescription (Maybe AssociationOverview)
adOverview = lens _adOverview (\ s a -> s{_adOverview = a})

-- | The date when the association was last updated.
adLastUpdateAssociationDate :: Lens' AssociationDescription (Maybe UTCTime)
adLastUpdateAssociationDate = lens _adLastUpdateAssociationDate (\ s a -> s{_adLastUpdateAssociationDate = a}) . mapping _Time

-- | The date when the association was made.
adDate :: Lens' AssociationDescription (Maybe UTCTime)
adDate = lens _adDate (\ s a -> s{_adDate = a}) . mapping _Time

-- | The date on which the association was last run.
adLastExecutionDate :: Lens' AssociationDescription (Maybe UTCTime)
adLastExecutionDate = lens _adLastExecutionDate (\ s a -> s{_adLastExecutionDate = a}) . mapping _Time

-- | A cron expression that specifies a schedule when the association runs.
adScheduleExpression :: Lens' AssociationDescription (Maybe Text)
adScheduleExpression = lens _adScheduleExpression (\ s a -> s{_adScheduleExpression = a})

-- | The name of the Systems Manager document.
adName :: Lens' AssociationDescription (Maybe Text)
adName = lens _adName (\ s a -> s{_adName = a})

-- | An Amazon S3 bucket where you want to store the output details of the request.
adOutputLocation :: Lens' AssociationDescription (Maybe InstanceAssociationOutputLocation)
adOutputLocation = lens _adOutputLocation (\ s a -> s{_adOutputLocation = a})

-- | The instances targeted by the request. 
adTargets :: Lens' AssociationDescription [Target]
adTargets = lens _adTargets (\ s a -> s{_adTargets = a}) . _Default . _Coerce

-- | A description of the parameters for a document. 
adParameters :: Lens' AssociationDescription (HashMap Text [Text])
adParameters = lens _adParameters (\ s a -> s{_adParameters = a}) . _Default . _Map

-- | The document version.
adDocumentVersion :: Lens' AssociationDescription (Maybe Text)
adDocumentVersion = lens _adDocumentVersion (\ s a -> s{_adDocumentVersion = a})

-- | The association version.
adAssociationVersion :: Lens' AssociationDescription (Maybe Text)
adAssociationVersion = lens _adAssociationVersion (\ s a -> s{_adAssociationVersion = a})

-- | The association name.
adAssociationName :: Lens' AssociationDescription (Maybe Text)
adAssociationName = lens _adAssociationName (\ s a -> s{_adAssociationName = a})

instance FromJSON AssociationDescription where
        parseJSON
          = withObject "AssociationDescription"
              (\ x ->
                 AssociationDescription' <$>
                   (x .:? "AssociationId") <*> (x .:? "InstanceId") <*>
                     (x .:? "Status")
                     <*> (x .:? "LastSuccessfulExecutionDate")
                     <*> (x .:? "Overview")
                     <*> (x .:? "LastUpdateAssociationDate")
                     <*> (x .:? "Date")
                     <*> (x .:? "LastExecutionDate")
                     <*> (x .:? "ScheduleExpression")
                     <*> (x .:? "Name")
                     <*> (x .:? "OutputLocation")
                     <*> (x .:? "Targets" .!= mempty)
                     <*> (x .:? "Parameters" .!= mempty)
                     <*> (x .:? "DocumentVersion")
                     <*> (x .:? "AssociationVersion")
                     <*> (x .:? "AssociationName"))

instance Hashable AssociationDescription where

instance NFData AssociationDescription where
