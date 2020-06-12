{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SSM.Types.CreateAssociationBatchRequestEntry
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.SSM.Types.CreateAssociationBatchRequestEntry where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.SSM.Types.InstanceAssociationOutputLocation
import Network.AWS.SSM.Types.Target

-- | Describes the association of a Systems Manager document and an instance.
--
--
--
-- /See:/ 'createAssociationBatchRequestEntry' smart constructor.
data CreateAssociationBatchRequestEntry = CreateAssociationBatchRequestEntry'{_cabreInstanceId
                                                                              ::
                                                                              !(Maybe
                                                                                  Text),
                                                                              _cabreScheduleExpression
                                                                              ::
                                                                              !(Maybe
                                                                                  Text),
                                                                              _cabreOutputLocation
                                                                              ::
                                                                              !(Maybe
                                                                                  InstanceAssociationOutputLocation),
                                                                              _cabreTargets
                                                                              ::
                                                                              !(Maybe
                                                                                  [Target]),
                                                                              _cabreParameters
                                                                              ::
                                                                              !(Maybe
                                                                                  (Map
                                                                                     Text
                                                                                     [Text])),
                                                                              _cabreDocumentVersion
                                                                              ::
                                                                              !(Maybe
                                                                                  Text),
                                                                              _cabreAssociationName
                                                                              ::
                                                                              !(Maybe
                                                                                  Text),
                                                                              _cabreName
                                                                              ::
                                                                              !Text}
                                            deriving (Eq, Read, Show, Data,
                                                      Typeable, Generic)

-- | Creates a value of 'CreateAssociationBatchRequestEntry' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cabreInstanceId' - The ID of the instance. 
--
-- * 'cabreScheduleExpression' - A cron expression that specifies a schedule when the association runs.
--
-- * 'cabreOutputLocation' - An Amazon S3 bucket where you want to store the results of this request.
--
-- * 'cabreTargets' - The instances targeted by the request.
--
-- * 'cabreParameters' - A description of the parameters for a document. 
--
-- * 'cabreDocumentVersion' - The document version.
--
-- * 'cabreAssociationName' - Specify a descriptive name for the association.
--
-- * 'cabreName' - The name of the configuration document. 
createAssociationBatchRequestEntry
    :: Text -- ^ 'cabreName'
    -> CreateAssociationBatchRequestEntry
createAssociationBatchRequestEntry pName_
  = CreateAssociationBatchRequestEntry'{_cabreInstanceId
                                          = Nothing,
                                        _cabreScheduleExpression = Nothing,
                                        _cabreOutputLocation = Nothing,
                                        _cabreTargets = Nothing,
                                        _cabreParameters = Nothing,
                                        _cabreDocumentVersion = Nothing,
                                        _cabreAssociationName = Nothing,
                                        _cabreName = pName_}

-- | The ID of the instance. 
cabreInstanceId :: Lens' CreateAssociationBatchRequestEntry (Maybe Text)
cabreInstanceId = lens _cabreInstanceId (\ s a -> s{_cabreInstanceId = a})

-- | A cron expression that specifies a schedule when the association runs.
cabreScheduleExpression :: Lens' CreateAssociationBatchRequestEntry (Maybe Text)
cabreScheduleExpression = lens _cabreScheduleExpression (\ s a -> s{_cabreScheduleExpression = a})

-- | An Amazon S3 bucket where you want to store the results of this request.
cabreOutputLocation :: Lens' CreateAssociationBatchRequestEntry (Maybe InstanceAssociationOutputLocation)
cabreOutputLocation = lens _cabreOutputLocation (\ s a -> s{_cabreOutputLocation = a})

-- | The instances targeted by the request.
cabreTargets :: Lens' CreateAssociationBatchRequestEntry [Target]
cabreTargets = lens _cabreTargets (\ s a -> s{_cabreTargets = a}) . _Default . _Coerce

-- | A description of the parameters for a document. 
cabreParameters :: Lens' CreateAssociationBatchRequestEntry (HashMap Text [Text])
cabreParameters = lens _cabreParameters (\ s a -> s{_cabreParameters = a}) . _Default . _Map

-- | The document version.
cabreDocumentVersion :: Lens' CreateAssociationBatchRequestEntry (Maybe Text)
cabreDocumentVersion = lens _cabreDocumentVersion (\ s a -> s{_cabreDocumentVersion = a})

-- | Specify a descriptive name for the association.
cabreAssociationName :: Lens' CreateAssociationBatchRequestEntry (Maybe Text)
cabreAssociationName = lens _cabreAssociationName (\ s a -> s{_cabreAssociationName = a})

-- | The name of the configuration document. 
cabreName :: Lens' CreateAssociationBatchRequestEntry Text
cabreName = lens _cabreName (\ s a -> s{_cabreName = a})

instance FromJSON CreateAssociationBatchRequestEntry
         where
        parseJSON
          = withObject "CreateAssociationBatchRequestEntry"
              (\ x ->
                 CreateAssociationBatchRequestEntry' <$>
                   (x .:? "InstanceId") <*> (x .:? "ScheduleExpression")
                     <*> (x .:? "OutputLocation")
                     <*> (x .:? "Targets" .!= mempty)
                     <*> (x .:? "Parameters" .!= mempty)
                     <*> (x .:? "DocumentVersion")
                     <*> (x .:? "AssociationName")
                     <*> (x .: "Name"))

instance Hashable CreateAssociationBatchRequestEntry
         where

instance NFData CreateAssociationBatchRequestEntry
         where

instance ToJSON CreateAssociationBatchRequestEntry
         where
        toJSON CreateAssociationBatchRequestEntry'{..}
          = object
              (catMaybes
                 [("InstanceId" .=) <$> _cabreInstanceId,
                  ("ScheduleExpression" .=) <$>
                    _cabreScheduleExpression,
                  ("OutputLocation" .=) <$> _cabreOutputLocation,
                  ("Targets" .=) <$> _cabreTargets,
                  ("Parameters" .=) <$> _cabreParameters,
                  ("DocumentVersion" .=) <$> _cabreDocumentVersion,
                  ("AssociationName" .=) <$> _cabreAssociationName,
                  Just ("Name" .= _cabreName)])
