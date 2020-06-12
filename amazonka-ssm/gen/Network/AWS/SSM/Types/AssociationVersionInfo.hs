{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SSM.Types.AssociationVersionInfo
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.SSM.Types.AssociationVersionInfo where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.SSM.Types.InstanceAssociationOutputLocation
import Network.AWS.SSM.Types.Target

-- | Information about the association version.
--
--
--
-- /See:/ 'associationVersionInfo' smart constructor.
data AssociationVersionInfo = AssociationVersionInfo'{_aviAssociationId
                                                      :: !(Maybe Text),
                                                      _aviCreatedDate ::
                                                      !(Maybe POSIX),
                                                      _aviScheduleExpression ::
                                                      !(Maybe Text),
                                                      _aviName :: !(Maybe Text),
                                                      _aviOutputLocation ::
                                                      !(Maybe
                                                          InstanceAssociationOutputLocation),
                                                      _aviTargets ::
                                                      !(Maybe [Target]),
                                                      _aviParameters ::
                                                      !(Maybe
                                                          (Map Text [Text])),
                                                      _aviDocumentVersion ::
                                                      !(Maybe Text),
                                                      _aviAssociationVersion ::
                                                      !(Maybe Text),
                                                      _aviAssociationName ::
                                                      !(Maybe Text)}
                                deriving (Eq, Read, Show, Data, Typeable,
                                          Generic)

-- | Creates a value of 'AssociationVersionInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aviAssociationId' - The ID created by the system when the association was created.
--
-- * 'aviCreatedDate' - The date the association version was created.
--
-- * 'aviScheduleExpression' - The cron or rate schedule specified for the association when the association version was created.
--
-- * 'aviName' - The name specified when the association was created.
--
-- * 'aviOutputLocation' - The location in Amazon S3 specified for the association when the association version was created.
--
-- * 'aviTargets' - The targets specified for the association when the association version was created. 
--
-- * 'aviParameters' - Parameters specified when the association version was created.
--
-- * 'aviDocumentVersion' - The version of a Systems Manager document used when the association version was created.
--
-- * 'aviAssociationVersion' - The association version.
--
-- * 'aviAssociationName' - The name specified for the association version when the association version was created.
associationVersionInfo
    :: AssociationVersionInfo
associationVersionInfo
  = AssociationVersionInfo'{_aviAssociationId =
                              Nothing,
                            _aviCreatedDate = Nothing,
                            _aviScheduleExpression = Nothing,
                            _aviName = Nothing, _aviOutputLocation = Nothing,
                            _aviTargets = Nothing, _aviParameters = Nothing,
                            _aviDocumentVersion = Nothing,
                            _aviAssociationVersion = Nothing,
                            _aviAssociationName = Nothing}

-- | The ID created by the system when the association was created.
aviAssociationId :: Lens' AssociationVersionInfo (Maybe Text)
aviAssociationId = lens _aviAssociationId (\ s a -> s{_aviAssociationId = a})

-- | The date the association version was created.
aviCreatedDate :: Lens' AssociationVersionInfo (Maybe UTCTime)
aviCreatedDate = lens _aviCreatedDate (\ s a -> s{_aviCreatedDate = a}) . mapping _Time

-- | The cron or rate schedule specified for the association when the association version was created.
aviScheduleExpression :: Lens' AssociationVersionInfo (Maybe Text)
aviScheduleExpression = lens _aviScheduleExpression (\ s a -> s{_aviScheduleExpression = a})

-- | The name specified when the association was created.
aviName :: Lens' AssociationVersionInfo (Maybe Text)
aviName = lens _aviName (\ s a -> s{_aviName = a})

-- | The location in Amazon S3 specified for the association when the association version was created.
aviOutputLocation :: Lens' AssociationVersionInfo (Maybe InstanceAssociationOutputLocation)
aviOutputLocation = lens _aviOutputLocation (\ s a -> s{_aviOutputLocation = a})

-- | The targets specified for the association when the association version was created. 
aviTargets :: Lens' AssociationVersionInfo [Target]
aviTargets = lens _aviTargets (\ s a -> s{_aviTargets = a}) . _Default . _Coerce

-- | Parameters specified when the association version was created.
aviParameters :: Lens' AssociationVersionInfo (HashMap Text [Text])
aviParameters = lens _aviParameters (\ s a -> s{_aviParameters = a}) . _Default . _Map

-- | The version of a Systems Manager document used when the association version was created.
aviDocumentVersion :: Lens' AssociationVersionInfo (Maybe Text)
aviDocumentVersion = lens _aviDocumentVersion (\ s a -> s{_aviDocumentVersion = a})

-- | The association version.
aviAssociationVersion :: Lens' AssociationVersionInfo (Maybe Text)
aviAssociationVersion = lens _aviAssociationVersion (\ s a -> s{_aviAssociationVersion = a})

-- | The name specified for the association version when the association version was created.
aviAssociationName :: Lens' AssociationVersionInfo (Maybe Text)
aviAssociationName = lens _aviAssociationName (\ s a -> s{_aviAssociationName = a})

instance FromJSON AssociationVersionInfo where
        parseJSON
          = withObject "AssociationVersionInfo"
              (\ x ->
                 AssociationVersionInfo' <$>
                   (x .:? "AssociationId") <*> (x .:? "CreatedDate") <*>
                     (x .:? "ScheduleExpression")
                     <*> (x .:? "Name")
                     <*> (x .:? "OutputLocation")
                     <*> (x .:? "Targets" .!= mempty)
                     <*> (x .:? "Parameters" .!= mempty)
                     <*> (x .:? "DocumentVersion")
                     <*> (x .:? "AssociationVersion")
                     <*> (x .:? "AssociationName"))

instance Hashable AssociationVersionInfo where

instance NFData AssociationVersionInfo where
