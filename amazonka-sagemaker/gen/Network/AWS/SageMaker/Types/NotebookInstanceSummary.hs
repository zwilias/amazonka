{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.NotebookInstanceSummary
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.SageMaker.Types.NotebookInstanceSummary where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.SageMaker.Types.InstanceType
import Network.AWS.SageMaker.Types.NotebookInstanceStatus

-- | Provides summary information for an Amazon SageMaker notebook instance.
--
--
--
-- /See:/ 'notebookInstanceSummary' smart constructor.
data NotebookInstanceSummary = NotebookInstanceSummary'{_nisCreationTime
                                                        :: !(Maybe POSIX),
                                                        _nisURL ::
                                                        !(Maybe Text),
                                                        _nisLastModifiedTime ::
                                                        !(Maybe POSIX),
                                                        _nisInstanceType ::
                                                        !(Maybe InstanceType),
                                                        _nisNotebookInstanceStatus
                                                        ::
                                                        !(Maybe
                                                            NotebookInstanceStatus),
                                                        _nisNotebookInstanceLifecycleConfigName
                                                        :: !(Maybe Text),
                                                        _nisNotebookInstanceName
                                                        :: !Text,
                                                        _nisNotebookInstanceARN
                                                        :: !Text}
                                 deriving (Eq, Read, Show, Data, Typeable,
                                           Generic)

-- | Creates a value of 'NotebookInstanceSummary' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'nisCreationTime' - A timestamp that shows when the notebook instance was created.
--
-- * 'nisURL' - The URL that you use to connect to the Jupyter instance running in your notebook instance. 
--
-- * 'nisLastModifiedTime' - A timestamp that shows when the notebook instance was last modified.
--
-- * 'nisInstanceType' - The type of ML compute instance that the notebook instance is running on.
--
-- * 'nisNotebookInstanceStatus' - The status of the notebook instance.
--
-- * 'nisNotebookInstanceLifecycleConfigName' - The name of a notebook instance lifecycle configuration associated with this notebook instance. For information about notebook instance lifestyle configurations, see 'notebook-lifecycle-config' .
--
-- * 'nisNotebookInstanceName' - The name of the notebook instance that you want a summary for.
--
-- * 'nisNotebookInstanceARN' - The Amazon Resource Name (ARN) of the notebook instance.
notebookInstanceSummary
    :: Text -- ^ 'nisNotebookInstanceName'
    -> Text -- ^ 'nisNotebookInstanceARN'
    -> NotebookInstanceSummary
notebookInstanceSummary pNotebookInstanceName_
  pNotebookInstanceARN_
  = NotebookInstanceSummary'{_nisCreationTime =
                               Nothing,
                             _nisURL = Nothing, _nisLastModifiedTime = Nothing,
                             _nisInstanceType = Nothing,
                             _nisNotebookInstanceStatus = Nothing,
                             _nisNotebookInstanceLifecycleConfigName = Nothing,
                             _nisNotebookInstanceName = pNotebookInstanceName_,
                             _nisNotebookInstanceARN = pNotebookInstanceARN_}

-- | A timestamp that shows when the notebook instance was created.
nisCreationTime :: Lens' NotebookInstanceSummary (Maybe UTCTime)
nisCreationTime = lens _nisCreationTime (\ s a -> s{_nisCreationTime = a}) . mapping _Time

-- | The URL that you use to connect to the Jupyter instance running in your notebook instance. 
nisURL :: Lens' NotebookInstanceSummary (Maybe Text)
nisURL = lens _nisURL (\ s a -> s{_nisURL = a})

-- | A timestamp that shows when the notebook instance was last modified.
nisLastModifiedTime :: Lens' NotebookInstanceSummary (Maybe UTCTime)
nisLastModifiedTime = lens _nisLastModifiedTime (\ s a -> s{_nisLastModifiedTime = a}) . mapping _Time

-- | The type of ML compute instance that the notebook instance is running on.
nisInstanceType :: Lens' NotebookInstanceSummary (Maybe InstanceType)
nisInstanceType = lens _nisInstanceType (\ s a -> s{_nisInstanceType = a})

-- | The status of the notebook instance.
nisNotebookInstanceStatus :: Lens' NotebookInstanceSummary (Maybe NotebookInstanceStatus)
nisNotebookInstanceStatus = lens _nisNotebookInstanceStatus (\ s a -> s{_nisNotebookInstanceStatus = a})

-- | The name of a notebook instance lifecycle configuration associated with this notebook instance. For information about notebook instance lifestyle configurations, see 'notebook-lifecycle-config' .
nisNotebookInstanceLifecycleConfigName :: Lens' NotebookInstanceSummary (Maybe Text)
nisNotebookInstanceLifecycleConfigName = lens _nisNotebookInstanceLifecycleConfigName (\ s a -> s{_nisNotebookInstanceLifecycleConfigName = a})

-- | The name of the notebook instance that you want a summary for.
nisNotebookInstanceName :: Lens' NotebookInstanceSummary Text
nisNotebookInstanceName = lens _nisNotebookInstanceName (\ s a -> s{_nisNotebookInstanceName = a})

-- | The Amazon Resource Name (ARN) of the notebook instance.
nisNotebookInstanceARN :: Lens' NotebookInstanceSummary Text
nisNotebookInstanceARN = lens _nisNotebookInstanceARN (\ s a -> s{_nisNotebookInstanceARN = a})

instance FromJSON NotebookInstanceSummary where
        parseJSON
          = withObject "NotebookInstanceSummary"
              (\ x ->
                 NotebookInstanceSummary' <$>
                   (x .:? "CreationTime") <*> (x .:? "Url") <*>
                     (x .:? "LastModifiedTime")
                     <*> (x .:? "InstanceType")
                     <*> (x .:? "NotebookInstanceStatus")
                     <*> (x .:? "NotebookInstanceLifecycleConfigName")
                     <*> (x .: "NotebookInstanceName")
                     <*> (x .: "NotebookInstanceArn"))

instance Hashable NotebookInstanceSummary where

instance NFData NotebookInstanceSummary where
