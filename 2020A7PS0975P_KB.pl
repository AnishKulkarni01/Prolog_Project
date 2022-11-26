%LICS ASSIGNMENT (US CONSTITUTION)

%Shivam Pande 2020A7PS0124P
%Anish Kulkarni 2020A7PS0975P
%Jash Ranipa    2020A7PS0119P
%Omkar Gothankar 2020A7PS0991P
%Sanchit Kabra   2020A7PS0010P
%
%
% IMPORT KB AS ['2020A7PS075P_KB']. INSTEAD OF [2020A7PS0975_KB].

age(rohan, 23).
citizen(rohan, 23).
age(meera, 30).
citizen(meera, 8).
age(david, 35).
citizen(david, 35).
age(leonard, 40).
citizen(leonard, 40).
age(amy, 38).
citizen(amy, 5).
citizen(george,30).
age(george,30).
chosenState(meera,newYork).
inhabitant(meera,massachusetts).

chosenState(george,newJersey).
inhabitant(george,delware).
chosenState(leonard,northCarolina).
inhabitant(leonard,southCarolina).

chosenState(david,virginia).
inhabitant(david,virginia).


stateOfUS(newHampshire).
stateOfUS(massachusetts).
stateOfUS(connecticut).
stateOfUS(newYork).
stateOfUS(newJersey).
stateOfUS(pennsylvania).
stateOfUS(delaware).
stateOfUS(maryland).
stateOfUS(virginia).
stateOfUS(northCarolina).
stateOfUS(southCarolina).
stateOfUS(georgia).
monday(7, 1, 2019).
monday(2, 12, 2019).

%qualified(X, houseOfRepresentatives).
%power(congress, X).
%executivePower(X).
%right(george, X).
%protectionAgainstInvasion(georgia).
%commanderInChiefOfArmy(X).
%power(X, grant(pardon(offenseAgainstUS))).
%power(northCarolina, collect(tax)).
%presidentOfSenate(X).
%meetingOfCongress(D, M, 2019).

/* Some of the following facts have 'enter_value' written in their
 argument. For example, if you want to specify that the president is to
 be impeached specify impeach(president). in the facts given below.*/

/*Some facts like vacancy(houseOfRepresentatives) are assumed to be true. This can be changed by entering something else(like 'enter value') in place of houseOfRepresentatives in the argument of the predicate*/

vacancy(houseOfRepresentatives).
votes_not(equallydivided).
absent(vicePresidentOfUnitedStates).
onOath(senate).
concurrenceOf(twothirdSenateMembers).
 exercisePresidentialDuties(vicePresidentOfUnitedStates).
impeach(enter_value).
journalContents(enter_public_or_private).
present(enter_value).
elect(president(X)).
president(trump).
elect(enter_value).
senate(enter_value).
vicePresident(john).
recess(senate).
adviceOf(senate).
not_convicted(crime).
ratified(constitution).
approvedBy(three_fourthLegislature,within_7_years).
vacancy(senate).
makeTemporaryAppointments(executiveAuthority).
worked_as_president(obama).
not_prescribed_by(law).
impeach(enter_value_in_predicate).
not_continuance(enter_value,hold_office).
testimony(witnesses,2).
confessionInCourt(person).
removalOf(enter_value).
majorityVotes(enter_value).
least_populous_state(enter_state_name).
ratified(enter_value).
ratifiedBy(enter_value).
approvedBy(enter_value).
ineligibleToOfficeOfP(enter).
state_of_president(enter).
state_of_vice_president(enter).
quoromElection(enter).
houseOfRepresentatives(enter).
not_commited(enter).
house_speech_debate(enter_value).
quorumElection(topThreeCandidatesAndEachStateoneVote).
value_in_controversy(enter_value).
majority(enter_value).
bornIn(enter_citizen_name,unitedStates).
naturalizedIn(enter_citizen_name,unitedStates).

                                %ARTICLE 1



%Section 1

power(congress, legislative).
consistOf(congress, senate).
consistOf(congress, houseOfRepresentatives).

%Section 2

consistOf(houseofRepresentatives,members).
chosenBy(members,electors).
elected(members, alternateYear).
qualified(X, houseOfRepresentatives) :- age(X, Y),Y>=25,citizen(X, Z),Z>=7,chosenState(X,W),inhabitant(X,V),W \= V.
totalNumberOfRepresentatives(Num):-Num >= 329500000/30000.
perStateNumberOfRepresentatives(Num,State):-Num  >=1,stateOfUS(State).
perStateNumberOfRepresentatives(3,newHampshire).
perStateNumberOfRepresentatives(8,massachusetts).
perStateNumberOfRepresentatives(1,rhodeIsland).
perStateNumberOfRepresentatives(1,providencePlantations).
perStateNumberOfRepresentatives(5,connecticut).
perStateNumberOfRepresentatives(6,newYork).
perStateNumberOfRepresentatives(4,newJersey).
perStateNumberOfRepresentatives(8,pennsylvania).
perStateNumberOfRepresentatives(1,delware).
perStateNumberOfRepresentatives(6,maryland).
perStateNumberOfRepresentatives(5,northCarolina).
perStateNumberOfRepresentatives(5,southCarolina).
perStateNumberOfRepresentatives(3,georgia).


issue(writsOfElection,executiveAuthority):-vacancy(houseOfRepresentatives).
power(houseOfRepresentatives,impeachment).
chooseOwn(speaker,houseOfRepresentatives).
chooseOwn(officers,houseOfRepresentatives).



%Section 3

consistsOf(senate,senators).
numberOf(senatorsPerState,two).
numberOf(votesPerSenator,one).
senateDividedInto(firstClass,secondClass,thirdClass).
power(executives,temporaryAppointmentofSenators).
seatsVacated(firstClassSenators,expirationOfSecondYear).
seatsVacated(secondClassSenators,expirationOffourthYear).
seatsVacated(thirdClassSenators,expirationOfsixthYear).

qualified(X, senate) :- age(X, Y),Y>=30,citizen(X, Z),Z>=9,chosenState(X,W),inhabitant(X,V),W \= V.

presidentOfSenate(vicePresidentOfUnitedStates).
noVote(presidentOfSenate):-votes_not(equallydivided).
chooseOwn(officers,senate).
chooseOwn(tempraryPresident,senate):-absent(vicePresidentOfUnitedStates);
                                                             exercisePresidentialDuties(vicePresidentOfUnitedStates).
chooseOwn(officers,senate).
power(senate,impeachment).
impeach(memberOfSenate):-onOath(senate),concurrenceOf(twothirdSenateMembers).
removalFrom(office,X):-impeach(X).
disqualificationToHoldOfficeHonour(X):-impeach(X).
subjectTo(trial,X):-impeach(X).
subjectTo(judgement,X):-impeach(X).
subjectTo(punishment,X):-impeach(X).


%Section 4

power(legislature,decideElectionTime).
power(legislature,decideElectionPlace).
power(legislature,decideElectionManner).
power(congress,alterElectionTime).
power(congress,alterElectionManner).
meetingOfCongress(D,M,Y).
meetingOfCongress(2,december,2019).
frequency(congressMeeting,onceAyear).


%Section 5
power(house,X):-(X=judge_of_elections;X=judge_of_returns;X=qualification_of_members;X=det_rules_proceedings;X=punish_disorderly_behavior;X=expel_members_concurrence_twothirds).
consistsOf(majority_house,quorum_for_business).
power(smaller_num_of_houseMembers,X):-(X=adjourn_house;X=compel_attendance,X=impose_penalties).
keepJournal(house).
publishJournalcontents(house):-journalContents(public).



%Section 6
recieve_compensation(X,services,treasury):-X=senators;X=reps.
not_arrest(X,Y):-(X=senators;X=reps),(Y=going_house_session;Y=returning_house_session),not_commited(Z),(Z=treason;Z=felony;Z=breach_peace).
question_speech_debate(X,Y):-(X=senators;X=reps),house_speech_debate(Y).

eligible(X,Y):-(X=senators;X=reps),(Y=civil_office_US;Y=civil_emoluments_increased).
eligibility(X,member_either_house):-not_continuance(X,hold_office).

%Section 7

billToLaw(X):-  (X=['bill originates in senate','bill passed By House Of Representatives','bill sent To President','president Approves bill','bill Becomes Law']);
		(X=['bill originates in house of representatives','bill passed By House Of Senate','bill sent To President','president Approves bill','bill Becomes Law']);
		 (X=['bill originates in senate','bill passed By House Of Representatives','bill sent To President','president Disapproves bill','bill Sent Back ToSenate','if Two Third Of The House Passes It','bill sent To House Of Representatives','if Two Third Of The House Passes It','bill Becomes Law']);
		 (X=['bill originates in house of representatives','passedBySenate','sentToPresident','president Disapproves bill','bill Sent Back To House Of Representatives','if Two Third Of The House Passes It','bill sent To Senate','if Two Third Of The House Passes It','bill Becomes Law']);
		 (X=['bill originates in senate','bill passed By House Of Representatives','bill sent To President','president Does Not Approve bill In Ten Days','bill Becomes Law']);
		 (X=['bill originates in house of representatives','bill passed By Senate','bill sent To President','president Does Not Approve bill In Ten Days','bill Becomes Law']).



%Section 8

power(congress,'Borrow money on credit').
power(congress,'Regulate commerce').
power(congress,' implement uniform laws on the subject of bankruptcies').
power(congress,' coin money, regulate its value,  fix standard of weights and measures').
power(congress,'provide for the punishment of counterfeiting').
power(congress,'establish post office and roads').
power(congress,' provide progress of science and useful arts to authors and inventors').
power(congress,'constitute tribunals inferior to the supreme court').
power(congress,'define and punish piracies and felonies commited on the high seas and offenses against the law of nation').
power(congress,'decalre war grant letters of marque and reprisal and make rules concerning captures on land and waters').
power(congress,'make raise and support armies').
money_for_armies('appropriation not more than 2 years').
power(congress,'provide and maintain a navy').
power(congress,'provide for calling forth the militia to execute the laws of the union suppress insurrections and repel Invasions').
power(congress,'provide for organizing arming and disciplining the Militia').
power(congress,'exercise exclusive Legislation in all Cases whatsoever over such District not exceeding ten Miles square as may by Cession of particular States and the Acceptance of Congress become the Seat of the Government of the United States and to exercise like Authority over all Places purchased by the Consent of the Legislature of the State in which the Same shall be for the Erection of Forts Magazines Arsenals dock yards and other needful Buildings').
power(congress,'make all Laws necessary for carrying into Execution all Powers vested by Constitution').

%Section 9

restrictionOfPower(congress,'The Migration or Importation of such Persons as any of the States now existing shall think proper to admit shall not be prohibited by the Congress prior to the Year one thousand eight hundred and eight but a Tax or duty may be imposed on such Importation not exceeding ten dollars for each Person').
restrictionOfPower(congress,'The Privilege of the Writ of Habeas Corpus shall not be suspended unless when in Cases of Rebellion or Invasion the public Safety may require it').
restrictionOfPower(congress,'No Bill of Attainder or ex post facto Law shall be passed').
restrictionOfPower(congress,'No Capitation or other direct Tax shall be laid unless in Proportion to the Census or Enumeration herein before directed to be taken').
restrictionOfPower(congress,'No Tax or Duty shall be laid on Articles exported from any State').
restrictionOfPower(congress,'No Preference shall be given by any Regulation of Commerce or Revenue to the Ports of one State over those of another nor shall Vessels bound to or from one State be obliged to enter clear or pay Duties in another').
restrictionOfPower(congress,'No Money shall be drawn from the Treasury but in Consequence of Appropriations made by Law and a regular Statement and Account of the Receipts and Expenditures of all public Money shall be published from time to time').

restrictionOfPower(congress,'No Title of Nobility shall be granted by the United States And no Person holding any Office of Profit or Trust under them shall without the Consent of the Congress accept of any present Emolument Office or Title of any kind whatever from any King Prince or foreign State').

%Section 10

restrictionOfPower(state,'No State shall enter into any Treaty Alliance or Confederation grant Letters of Marque and Reprisal coin Money emit Bills of Credit make any Thing but gold and silver Coin a Tender in Payment of Debts pass any Bill of Attainder ex post facto Law or Law impairing the Obligation of Contracts or grant any Title of Nobility').
restrictionOfPower(state,'No State shall without the Consent of the Congress lay any Imposts or Duties on Imports or Exports except what may be absolutely necessary for executing its inspection Laws and the net Produce of all Duties and Imposts laid by any State on Imports or Exports shall be for the Use of the Treasury of the United States and all such Laws shall be subject to the Revision and Control of the Congress').
restrictionOfPower(state,'No State shall without the Consent of Congress lay any Duty of Tonnage keep Troops or Ships of War in time of Peace enter into any Agreement or Compact with another State or with a foreign Power or engage in War unless actually invaded or in such imminent Danger as will not admit of delay').



                            %ARTICLE 2


%Section 1


modifiedBy(amendment25).
power(president, executive_power).
executivePower(president).
termOfPresident(4).
termOfVicePresident(4).
numberOfElectors(X,NumberofSenators,NumberOfRepresentatives) :- X is NumberOfSenators + NumberOfRepresentatives.
cannotBeElectors(X) :- (X=senator;X=representative;X=person_holding_Office_of_trust_or_profit).



stateof(david,newHampshire).
stateof(rohan,newHampshire).
stateof(meera,newHampshire).
stateof(leonard,virginia).
meet(electors,in_respective_states).
voteByBallot(electors,president,vice-president).
vote(electors):-state_of_president(X),state_of_vice_president(Y).
electorsMakeLists(X,Y):-(X='Persons voted for President '),(Y='Persons voted for Vice-President').
electorsSign(lists).
transmit_to(presidentOfSenate,list).
countVotes(presidentOfSenate):-present(X),(X=senate,X=houseOfRepresentatives).
majorityVotesP(X) :- elect(president(X)).
ifNoMajorityP(X) :- houseOfRepresentatives(elect(president(X))), quorumElection(topThreeCandidatesAndEachStateoneVote), majority(elect(president(X))).
ifNoQuorumMajorityP(vice_president_becomes_acting_president).
majorityVotesVP(X) :- elect(vicePresident(X)).
ifNoMajorityVP(X):- senate(elect(vicePresident(X))), quorumElection(topTwoCandidatesAndSenatorsVote), majority(elect(vicePresident(X))).
ineligibleToOfficeOfVP(X) :- ineligibleToOfficeOfP(X).
openVotes(president).

power(congress,time_of_choosing_electors).
power(congress,day_of_voting).
canGoToPresidentOffice(X) :- (citizen(X,Y) :- Y>=14) , (age(X,Y1) :- Y1>=35).

removal(X,Y) :- (X=president;X=vicePresident),(Y=death;Y=resignation;Y=inability_to_discharge_powers_and_duties_of_office;Y=impeachment;Y=conviction_of_treason;Y=bribery;Y=misdemeanors;Y=crime).

power(congress,to_find_substitute_for_president).
power(congress,to_find_substitute_for_vice_president).

services(president,compensation).
services(president,no_emolument_during_term).

oath(president,'I do solemnly swear that I will faithfully execute the Office of President of the United States, and will to the best of my Ability, preserve, protect and defend the Constitution of the United States.').

%Section 2


commanderInChiefOfArmy(president).
commanderInChiefOfNavy(president).

power(president, grant(pardon(offenseAgainstUS))).
power(president, grant(reprieves(offenseAgainstUS))).
power(president,toMake(treaties)) :- adviceOf(senate), consent(senate), majority(X)>0.67.
power(president,'Appoint Ambassadors, other public Ministers and Consuls, Judges of the Supreme Court, and all other Officers of the United States') :- adviceOf(senate), consent(senate).
power(congress,'Vest appointment of inferior officers like President, Courts of Law or Head of Departments').
power(president,'Fill up Vacancies') :- recess(senate).


%Section 3


duty(president,X) :- (X=giveInformation(congress(stateOfUnion)); X=recommend(measures); X=convene(bothHouses); X=convene(singleHouse);X=receive(ambassadors); X=adjourn(houses); X=receive(publicOfficers); X=executionOf(laws); X=commisions(officers)).

%Section 4


removal(X,Y) :- (X=president;X=vicePresident),(Y=death;Y=resignation;Y=inability_to_discharge_powers_and_duties_of_office;Y=impeachment;Y=conviction_of_treason;Y=bribery;Y=misdemeanors;Y=crime).


                             %Article 3
 %Section 1


power(congress, establishInferiorCourts).
power(congress, ordainInferiorCourts).
power(X,judicial):-(X=one_supreme_court,X=inferior_court).
judges(holdOffice,X):-(X=during_good_behaviour;X=recieve_compensation).
compensation(judges,X):-(X='not diminished during continuance in office').


%Section 2


modifiedBy(amendment11).
judicial_powers_extend_to(X):-(X='Laws of United States';X='Treaties made or shall be made';X='Cases affecting Ambassadors,Ministers,Consuls';X='Cases of admirality and maritime jurisdiction';X='Controversies between two states';X='Controversies between citizens of different states';X='Controversies between citizens of same state claiming land').
supreme_court(originalJurisdiction,X):-(X='Cases affecting ambassadors or other ministers').
place_of_trial(allCases,X):-(X='state where crime took place';X='place directed by law').


%Section 3


treason(unitedStates,X):-(X='levying war against country';X='adhering to enemies';X='giving enemies aid or comfort').
convictedOfTreason(person):-testimony(witnesses,2);confessionInCourt(person).
power(congress,X):-(X='declare punishment of treason').


                                   %ARTICLE 4


%Section 1


power(state,'Public acts of other state').
power(state,'Records of other state').
power(state,'Judicial proceeding of other states').
power(congress,'Prescribe manner of proving acts records proceedings of other states and effects thereof').

%Section 2


right(A,B) :- (citizen(A,Y)), (B=privileges;B=immunities).
person(A,B,C) :- (A=felony;A=treason;A=crime) ,(B=found_in_other_state),(C=on_demand_of_exec_authority_of_state_be_delivered_to_state_with_jurisdiction_of_crime).
person(A,B,C) :- (A=service;A=labour) ,(B=found_in_other_state),(C=cannot_be_discharged_but_delivered_on_claim_of_party_for_which_service_or_labour_is_due).

%Section 3


newState(A) :- (A=not_in_jurisdiction_of_other_state; A=not_by_junction_of_two_states; A=not_by_junction_of_parts_of_two_states).
consent(A,B) :- (A=legislature;A=congress), (B=statename).
consent(congress_and_legislature).
stateCanBeFormed(X,Y) :- (consent(X)),(Y=state_name).
power(congress, 'Dispose or make rules and regulations for territory or property of US').

%Section 4

protectionAgainstInvasion(A) :- stateOfUS(A).
protectionAgainstDomesticViolence(A) :- stateOfUS(A).

                                %ARTICLE 5


power(congress,proposing_amendments).
amendmentPassByHouses(X) :- X >0.67.
amendmentPassByApplicationOfLegislaturesOfStates(X) :- X >0.67.
power(congress,mode_of_ratification).
clause(X) :- X <19.
ratificationByApplicationOfLegislaturesOfStates(X) :- X  >0.75.
ratificationByConventions(X) :- X  >0.75.
amendable(clause(X)) :- X=\=1, X=\=4, X <19.

                                 %ARTICLE 6


validAgainstUSbeforeConstitutionAdoption(X) :- (X=debts_contracted;X=engagements_entered).
supremeLaw(treaties).
judges_bound_by(X) :- supremeLaw(X).
oath_affirmation_to_constitution(A) :-(A=membersOfSenate;A=representatives;A=members;A=judicialOfficers;A=executives).

                                   %ARTICLE 7


witness(A,B) :- (A=newHampshire),(B=john_langdon; B=nicholas_gilman).
witness(A,B) :- (A=massachusetts),(B=nathaniel_gorham; B=rufus_king).
witness(A,B) :- (A=connecticut),(B=william_samuel_johnson; B=roger_sherman).
witness(A,B) :- (A=newYork),(B=alexander_hamilton).
witness(A,B) :- (A=newJersey),(B=wil_livingston;B=david_brearley;B=william_paterson;B=jonathon_dayton).
witness(A,B) :- (A=pennsylvania),(B=b_franklin;B=thomas_mifflin;B=robert_morris;B=george_clymer;B=thomas_fitzsimons;B=jared_ingersoll;B=james_wilson;B=gouv_morris).
witness(A,B) :- (A=delaware),(B=george_read;B=gunning_bedford_jun;B=john_dickinson;B=richard_bassett;B=jacob_broom).
witness(A,B) :- (A=maryland),(B=james_mchenry; B=dan_of_st_thos_jenifer; B=danl_carroll).
witness(A,B) :- (A=virginia),(B=john_blair;B=james_madison_jr).
witness(A,B) :- (A=northCarolina),(B=hu_williamson;B=richard_dobbs_spaight;B=william_blount).
witness(A,B) :- (A=southCarolina),(B=j_rutledge;B=charles_cotesworth_pinckney;B=charles_pinckney;B=pierce_butler).
witness(A,B) :- (A=georgia),(B=william_few;B=abr_baldwin).
witness(A,B) :- (A=secretary),(B=william_jackson).

%----------AMENDMENTS----------

%Amendment 1

congress_make_no_law(X):- (X=prohibiting_free_exercise_of_establishment_or_religion;X=abridging_freedom_of_speech_or_press;X=abridging_right_to_assemble_peacefully;X=petitioning_to_Govt_for_redress_of_grievances).

%Amendment 2

not_infringe(well_regulated_militia).
not_infringe(right_to_bear_arms).

%Amendment 3

soldier_not_quartered(during_peace,in_house_without_owner_consent).
soldier_not_quartered(during_war,in_house_without_owner_consent):-not_prescribed_by(law).

%Amendment 4
right(A,X) :- (citizen(A,Y)), (X=secure_in_persons; X=secure_in_homes;X=secure_in_papers;X=secure_in_effects; X=against_unreasonable_searches_and_against_seizures; X=no_warrants_issued).
search_or_seize(X=oath;X=affirmation;X=describing_place_to_be_searched).

%Amendment 5

answerable(X,Y):-(Y=presence_of_grand_jury;Y=cases_relatedTo_land/naval_forces;Y=war_going_on).
not_allowed(X,Y):-(Y=deprived_of_life;Y=deprived_of_liberty;Y=deprived_of_property;Y=private_property_taken_for_public_use).





%Amendment6

right(A,X) :- (citizen(A,Y)), (X=speedy_and_public_trial;X=impartial_jury;X=assistance_of_Counsel_for_defense;X=information_about_nature_of_accusation;X=obtain_witnesses_in_favour).
jury(X):-(X=state_in_which_crime_occured,X=district_acertained_by_law).

%Amendment 7
rightOfTrial(jury,preserved):-value_in_controversy(X),X>20.
fact_tried_by_jury(not_reExamined).


%Amendment 8

not_allowed(X):- (X= excessive_bails; X= excessive_fines; X= cruel_or_unusual_punishments).



%Amendment 9

enumerationInConstitution(X):- X=not_deny_or_disparage_other_rights_retained_by_people.


%Amendment 10

powers(X,Y):- (X= not_given_to_USGovt_by_constitution),
                              (Y= reserved_for_states_if_not_prohibited_by_USGovt;
                               Y= reserved_for_the_people).

%Amendment 11

passedBy(congress).
passedOn(4,march,1794).
ratifiedOn(7,february,1795).
restrictionOfPower(unitedStates,'Construed to extend to any suit in law or equity commenced or prosecuted against one of the United States by Citizens of another State or by Citizens or Subjects of any Foreign State').


%Amendment 12

passedBy(congress).
passedOn(9,december,1803).
ratifiedOn(15,june,1804).
meet(electors,in_respective_states).
voteByBallot(electors,president,vice-president).
vote(electors):-state_of_president(X),state_of_vice_president(Y).
electorsMakeLists(X,Y):-(X='Persons voted for President '),(Y='Persons voted for Vice-President').
electorsSign(lists).
transmit_to(presidentOfSenate,list).
countVotes(presidentOfSenate):-present(X),(X=senate,X=houseOfRepresentatives).
majorityVotesP(X) :- elect(president(X)).
ifNoMajorityP(X) :- houseOfRepresentatives(elect(president(X))), quorumElection(topThreeCandidatesAndEachStateoneVote), majority(elect(president(X))).
ifNoQuorumMajorityP(vice_president_becomes_acting_president).
majorityVotesVP(X) :- elect(vicePresident(X)).
ifNoMajorityVP(X):- senate(elect(vicePresident(X))), quorumElection(topTwoCandidatesAndSenatorsVote), majority(elect(vicePresident(X))).
ineligibleToOfficeOfVP(X) :- ineligibleToOfficeOfP(X).

%Amendment 13

passedBy(congress).
passedOn(31,january,1865).
ratifiedOn(6,december,1865).
%section 1

not_exist(slavery,unitedStates):-not_convicted(crime).
not_exist(involuntary_servitude,unitedStates):-not_convicted(crime).

%section 2

power(congress,'Enforce Article 4').


%Amendment 14

passedBy(congress).
passedOn(13,june,1866).
ratifiedOn(9,july,1868).

%Section 1

citizenOfUnitedStates(X):-bornIn(X,unitedStates);naturalizedIn(X,unitedStates).
restrictionOfPower(unitedStates,'No State shall make or enforce any law which shall abridge the privileges or immunities of citizens of the United States').
restrictionOfPower(unitedStates,'No state shall  deprive any person of life, liberty, or property, without due process of law; nor deny to any person within its jurisdiction the equal protection of the laws. ').
right(A,X) :- (citizen(A,Y)), (X=state_cannot_deprive_of_life_liberty_property_without_process_of_law; X=cannot_deny_equal_protection_of_laws).
%Section 2

modifiedBy(amendment26sec1).



%Section 3

cannotBe(X,Y):-(X=senator;X=representative;X=holdOffice;X=electorOfPresident;X=electorOfVicePresident;X=holdCivil; X=holdMilitary),(Y='has taken oath as a member of Congress, or as an officer of the United States, or as a member of any State legislature, or as an executive or judicial officer of any State, to support the Constitution of the United States, shall have engaged in insurrection or rebellion against the same, or given aid or comfort to the enemies thereof').
removeDisability(congress,X):-vote(twoThirdsOfEachHouse).

%Section 4

shallNotBeQuestioned('The validity of the public debt of the United States, authorized by law, including debts incurred for payment of pensions and bounties for services in suppressing insurrection or rebellion').

restrictionOfPower(unitedStates, 'assume or pay any debt or obligation incurred in aid of insurrection or rebellion against the United States, or any claim for the loss or emancipation of any slave; but all such debts, obligations and claims shall be held illegal and void').

restrictionOfPower(state, 'assume or pay any debt or obligation incurred in aid of insurrection or rebellion against the United States, or any claim for the loss or emancipation of any slave; but all such debts, obligations and claims shall be held illegal and void').

%Section 5
power(congress,'To enforce, by appropriate legislation, the provisions of this article').

%Amendment 15

passedBy(congress).
passedOn(26,february,1869).
ratifiedOn(3,february,1870).

%section 1
restrictionOfPower(unitedStates,'Right to vote cannot be denied on account of race, color, or previous conditions of servitude').

%section 2
power(congress,'enforce article by legislation').

%Amendment 16

passedBy(congress).
passedOn(2,july,1909).
ratifiedOn(3,february,1913).
power(A,collect(tax)) :- stateOfUS(A).
power(congress,'To lay and collect taxes on incomes, from whatever source derived, without apportionment among the several States, and without regard to any census or enumeration.').

%Amendment 17

passedBy(congress).
passedOn(13,may,1912).
ratifiedOn(8,april,1913).
consistsOf(senate,senators).
numberOf(senatorsPerState,two).
numberOf(votesPerSenator,one).
term(senators,6).
issueWrits(executiveAuthority):-vacancy(senate),makeTemporaryAppointments(executiveAuthority).

amendment17(X):-(X='amendment shall not be so construed as to affect the election or term of any Senator chosen before it becomes valid as part of the Constitution').




%Amendment 18
passedBy(congress).
passedOn(18,december,1917).
ratifiedOn(16,january,1919).
repealed(5,december,1933).
repealedBy('21_amendment').
%Section 1
prohibitionOf(X):-(X='Manufacture, sale, or transportation of intoxicating liquors within, the importation thereof into, or the exportation thereof from the United States and all territory subject to the jurisdiction thereof for beverage purposes').

%Section 2
power(congress,'Enforce Amendment 18').

%Section 3
amendment18_operative:-ratified(constitution),approvedBy(three_fourthLegislature,within_7_years).



%Amendment 19
passedBy(congress).
passedOn(4,march,1794).
ratifiedOn(7,february,1795).
restrictionOfPower(unitedStates,'Right to vote cannot be denied on account of sex’').
power(congress,'Enforce Amendment 19').

% Amendment 20


passedBy(congress).
passedOn(2,march,1932).
ratifiedOn(23,january,1933).

% SECTION 1

end_term(president,'20th January at noon').
end_term(president,'20th January at noon').
end_term(senators,'3rd January at noon').
end_term(representatives,'3rd January at noon').

% SECTION 2
assembly(congress,'Once an year on 3rd January at noon unless appointed a different day by Law').

% SECTION 3

substitute_at_start_of_term(president,X,vice_president) :- (X=died;X='Not chosen before time';X='failed to qualify').
substitute_by_congress(X) :- (X='if both president and vice_president are not qualified').

% SECTION 4

choose_president_on_death('House of Representatives').
choose_vice_president_on_death('Senate').

% SECTION 5

enforced('On 15 October after ratification').

% SECTION 6
amendment20_operative:-ratified(constitution),approvedBy(three_fourthLegislature,within_7_years).


% Amendment 21

passedBy(congress).
passedOn(20,february,1933).
ratifiedOn(5,december,1933).
% SECTION 1
repealedBy('21st_amendment').

% SECTION 2
transportation_prohibited(X) :- (X=intoxicating_liquors).
importation_prohibited(X) :- (X=intoxicating_liquors).

% SECTION 3
amendment21_operative:-ratified(constitution),approvedBy(conventions_in_several_states,within_7_years).

% Amendment 22


passedBy(congress).
passedOn(21,march,1947).
ratifiedOn(27,february,1951).
% SECTION 1
qualified(X, president):- worked_as_president(X) , X>2 , elected(X,Y) , Y<1.
qualified(X, president):- elected(X,Y) , Y<2.
not_applied_Amendment22(president,'if his term is going on').
not_applied_Amendment22('Acting as president','if his term is going on').


%SECTION 2
amendment20_operative:-ratified(constitution),approvedBy(three_fourthLegislature,within_7_years).

% Amendment 23


passedBy(congress).
passedOn(16,june,1960).
ratifiedOn(29,march,1961).
% SECTION 1
least_populous_state(wyoming).

power(congress,'congress appoint seats of Government for District.').
numberOfElectors(X,NumberOfSenators,NumberOfRepresentatives) :- X is NumberOfSenators, NumberOfRepresentatives.
state_appoint_electors(least_populous_state(X)).
electors_appointed_by_state('perform duties as given by the 12th amendment').


%SECTION 2
power(congress,'Enforce Amendment 23').


% Amendment 24

passedBy(congress).
passedOn(27,august,1962).
ratifiedOn(23,january,1964).
% SECTION 1
restrictionOfPower(unitedStates,'Right to vote cannot be denied for not paying taxes').

%SECTION 2
power(congress,'Enforce Amendment 24').

% Amendment 25


passedBy(congress).
passedOn(6,july,1965).
ratifiedOn(10,february,1967).

% SECTION 1
substitute_president(vice_president) :- removalOf(president).

%SECTION 2
power(president,'Appoint Vice President') :- majorityVotes(housesOfCongress).

% SECTION 3
pro_tempore_of_president('President transmits the Senate and the Speaker of the House of Representatives his written declaration that he is unable to discharge the powers and duties. From now on, the Vice President works as acting president').

%SECTION 4
pro_tempore_of_president('President transmits the Senate and the Speaker of the House of Representatives his written declaration that he is unable to discharge the powers and duties. From now on, the Vice President works as acting president').

procedure_to_come_out_from_pro_tempore('President can write a declaration that no inability exists and resume his position , unless Vice President and other officers transmit a written declaration within four days that the President is unable. The issue will be decided by Congress, which will convene within 48 hours if it is not already in session. If the Congress determines by two-thirds vote of both Houses that the President is unable to discharge the powers and duties of his office within twenty-one days after receipt of the latter written declaration, or if Congress is not in session, within twenty-one days after Congress is required to assemble, the Vice President shall continue to discharge the same as Acting President.').


% Amendment 26


passedBy(congress).
passedOn(23,march,1971).
ratifiedOn(1,july,1971).
% SECTION 1
right(A,B) :- (citizen(A,Y)), (B=right_to_vote).
right_to_vote(X) :- age(X,Y) , Y>=18.

%SECTION 2
power(congress,'Enforce Amendment 26').

% Amendment 27

passedOn(25,sept,1789).
ratifiedOn(7,may,1992).
fixed_compensation_until_election_intervened(X) :- (X=senator ; X=representatives).

%END




































