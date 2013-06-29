/**
* BigBlueButton open source conferencing system - http://www.bigbluebutton.org/
*
* Copyright (c) 2010 BigBlueButton Inc. and by respective authors (see below).
*
* This program is free software; you can redistribute it and/or modify it under the
* terms of the GNU Lesser General Public License as published by the Free Software
* Foundation; either version 2.1 of the License, or (at your option) any later
* version.
*
* BigBlueButton is distributed in the hope that it will be useful, but WITHOUT ANY
* WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A
* PARTICULAR PURPOSE. See the GNU Lesser General Public License for more details.
*
* You should have received a copy of the GNU Lesser General Public License along
* with BigBlueButton; if not, see <http://www.gnu.org/licenses/>.
* 
*/
package org.bigbluebutton.modules.polling.service
{
	import com.asfusion.mate.events.Dispatcher;
	
	import flash.events.AsyncErrorEvent;
	import flash.events.IEventDispatcher;
	import flash.events.NetStatusEvent;
	import flash.events.SyncEvent;
	import flash.net.NetConnection;
	import flash.net.Responder;
	import flash.net.SharedObject;
	
	import mx.collections.ArrayCollection;
	import mx.controls.Alert;
	
	import org.bigbluebutton.common.IBbbModuleWindow;
	import org.bigbluebutton.common.LogUtil;
	import org.bigbluebutton.common.events.OpenWindowEvent;
	import org.bigbluebutton.core.managers.UserManager;
	import org.bigbluebutton.modules.polling.events.CreatePollEvent;
	import org.bigbluebutton.modules.polling.events.GenerateWebKeyEvent;
	import org.bigbluebutton.modules.polling.events.GetPollsEvent;
	import org.bigbluebutton.modules.polling.events.PollEvent;
	import org.bigbluebutton.modules.polling.events.PollGetPollEvent;
	import org.bigbluebutton.modules.polling.events.PollGetTitlesEvent;
	import org.bigbluebutton.modules.polling.events.PollRefreshEvent;
	import org.bigbluebutton.modules.polling.events.PollReturnTitlesEvent;
	import org.bigbluebutton.modules.polling.events.PollingStatsWindowEvent;
	import org.bigbluebutton.modules.polling.events.PollingViewWindowEvent;
	import org.bigbluebutton.modules.polling.events.RespondEvent;
	import org.bigbluebutton.modules.polling.events.UpdatePollEvent;
	import org.bigbluebutton.modules.polling.managers.PollingWindowManager;
	import org.bigbluebutton.modules.polling.model.PollObject;
	import org.bigbluebutton.modules.polling.views.PollingInstructionsWindow;
	import org.bigbluebutton.modules.polling.views.PollingViewWindow;

	public class PollingService
	{	
		private static const LOG:String = "Poll::PollingService - ";

    /* Injected by Mate */
    public var dataService:IPollDataService;

		public function handleStartModuleEvent(module:PollingModule):void {

		}
		
    public function handleGetPollsEvent(event:GetPollsEvent):void {
      dataService.getPolls();
    }
    
		public function handleCreatePollEvent(event:CreatePollEvent):void {
      dataService.createPoll(event.poll);
		}
		
    public function handleUpdatePollEvent(event:UpdatePollEvent):void {
      dataService.updatePoll(event.poll);
    }

    public function handleStartPollEvent(event:PollEvent):void {
      dataService.startPoll(event.pollID);
    }
    
    public function handleStopPollEvent(event:PollEvent):void {
      dataService.stopPoll(event.pollID);
    }
    
    public function handleRemovePollEvent(event:PollEvent):void {
      dataService.removePoll(event.pollID);
    }
    
    public function handleRespondPollEvent(event:RespondEvent):void {
      dataService.respondPoll(event.response);
    }
    
	  public function  getPoll(pollKey:String, option:String):void{	

	   	}  
	  
		public function publish(poll:PollObject):void{

		}
		 
		public function vote(pollKey:String, answerIDs:Array, webVote:Boolean = false):void{

		}
			
		public function cutOffWebPoll(poll:PollObject):void{

		}
	  	

		
		public function initializePollingMenu(roomID:String):void{
 		
		 }
		
		public function initializePollingMenuRemotely(roomID:String):void{

		}
		 
		 public function updateTitles():void{

		 }
		 
		 
		 public function checkTitles():void{

		 }
		 
		 public function openPoll(pollKey:String):void{

		 }
		 
		 public function closePoll(pollKey:String):void{

		 }
		 
		 public function generate(generateEvent:GenerateWebKeyEvent):void{

		}
	}
}