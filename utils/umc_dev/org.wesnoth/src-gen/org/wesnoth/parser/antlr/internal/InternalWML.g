/*
* generated by Xtext
*/
grammar InternalWML;

options {
	superClass=AbstractInternalAntlrParser;
	
}

@lexer::header {
package org.wesnoth.parser.antlr.internal;

// Hack: Use our own Lexer superclass by means of import. 
// Currently there is no other way to specify the superclass for the lexer.
import org.eclipse.xtext.parser.antlr.Lexer;
}

@parser::header {
package org.wesnoth.parser.antlr.internal; 

import org.eclipse.xtext.*;
import org.eclipse.xtext.parser.*;
import org.eclipse.xtext.parser.impl.*;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.xtext.parser.antlr.AbstractInternalAntlrParser;
import org.eclipse.xtext.parser.antlr.XtextTokenStream;
import org.eclipse.xtext.parser.antlr.XtextTokenStream.HiddenTokens;
import org.eclipse.xtext.parser.antlr.AntlrDatatypeRuleToken;
import org.wesnoth.services.WMLGrammarAccess;

}

@parser::members {

 	private WMLGrammarAccess grammarAccess;
 	
    public InternalWMLParser(TokenStream input, WMLGrammarAccess grammarAccess) {
        this(input);
        this.grammarAccess = grammarAccess;
        registerRules(grammarAccess.getGrammar());
    }
    
    @Override
    protected String getFirstRuleName() {
    	return "WMLRoot";	
   	}
   	
   	@Override
   	protected WMLGrammarAccess getGrammarAccess() {
   		return grammarAccess;
   	}
}

@rulecatch { 
    catch (RecognitionException re) { 
        recover(input,re); 
        appendSkippedTokens();
    } 
}




// Entry rule entryRuleWMLRoot
entryRuleWMLRoot returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getWMLRootRule()); }
	 iv_ruleWMLRoot=ruleWMLRoot 
	 { $current=$iv_ruleWMLRoot.current; } 
	 EOF 
;

// Rule WMLRoot
ruleWMLRoot returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(
(
		{ 
	        newCompositeNode(grammarAccess.getWMLRootAccess().getExpressionsWMLRootExpressionParserRuleCall_0()); 
	    }
		lv_Expressions_0_0=ruleWMLRootExpression		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getWMLRootRule());
	        }
       		add(
       			$current, 
       			"Expressions",
        		lv_Expressions_0_0, 
        		"WMLRootExpression");
	        afterParserOrEnumRuleCall();
	    }

)
)*
;







// Entry rule entryRuleWMLTag
entryRuleWMLTag returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getWMLTagRule()); }
	 iv_ruleWMLTag=ruleWMLTag 
	 { $current=$iv_ruleWMLTag.current; } 
	 EOF 
;

// Rule WMLTag
ruleWMLTag returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(	otherlv_0='[' 
    {
    	newLeafNode(otherlv_0, grammarAccess.getWMLTagAccess().getLeftSquareBracketKeyword_0());
    }
(
(
		lv_plus_1_0=	'+' 
    {
        newLeafNode(lv_plus_1_0, grammarAccess.getWMLTagAccess().getPlusPlusSignKeyword_1_0());
    }
 
	    {
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getWMLTagRule());
	        }
       		setWithLastConsumed($current, "plus", lv_plus_1_0, "+");
	    }

)
)?(
(
		lv_name_2_0=RULE_ID
		{
			newLeafNode(lv_name_2_0, grammarAccess.getWMLTagAccess().getNameIDTerminalRuleCall_2_0()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getWMLTagRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"name",
        		lv_name_2_0, 
        		"ID");
	    }

)
)	otherlv_3=']' 
    {
    	newLeafNode(otherlv_3, grammarAccess.getWMLTagAccess().getRightSquareBracketKeyword_3());
    }
(
(
		{ 
	        newCompositeNode(grammarAccess.getWMLTagAccess().getExpressionsWMLExpressionParserRuleCall_4_0()); 
	    }
		lv_Expressions_4_0=ruleWMLExpression		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getWMLTagRule());
	        }
       		add(
       			$current, 
       			"Expressions",
        		lv_Expressions_4_0, 
        		"WMLExpression");
	        afterParserOrEnumRuleCall();
	    }

)
)*	otherlv_5='[/' 
    {
    	newLeafNode(otherlv_5, grammarAccess.getWMLTagAccess().getLeftSquareBracketSolidusKeyword_5());
    }
(
(
		lv_endName_6_0=RULE_ID
		{
			newLeafNode(lv_endName_6_0, grammarAccess.getWMLTagAccess().getEndNameIDTerminalRuleCall_6_0()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getWMLTagRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"endName",
        		lv_endName_6_0, 
        		"ID");
	    }

)
)	otherlv_7=']' 
    {
    	newLeafNode(otherlv_7, grammarAccess.getWMLTagAccess().getRightSquareBracketKeyword_7());
    }
)
;





// Entry rule entryRuleWMLKey
entryRuleWMLKey returns [EObject current=null] 
	@init { 
		HiddenTokens myHiddenTokenState = ((XtextTokenStream)input).setHiddenTokens("RULE_WS");
	}
	:
	{ newCompositeNode(grammarAccess.getWMLKeyRule()); }
	 iv_ruleWMLKey=ruleWMLKey 
	 { $current=$iv_ruleWMLKey.current; } 
	 EOF 
;
finally {
	myHiddenTokenState.restore();
}

// Rule WMLKey
ruleWMLKey returns [EObject current=null] 
    @init { enterRule(); 
		HiddenTokens myHiddenTokenState = ((XtextTokenStream)input).setHiddenTokens("RULE_WS");
    }
    @after { leaveRule(); }:
((
(
		lv_name_0_0=RULE_ID
		{
			newLeafNode(lv_name_0_0, grammarAccess.getWMLKeyAccess().getNameIDTerminalRuleCall_0_0()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getWMLKeyRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"name",
        		lv_name_0_0, 
        		"ID");
	    }

)
)	otherlv_1='=' 
    {
    	newLeafNode(otherlv_1, grammarAccess.getWMLKeyAccess().getEqualsSignKeyword_1());
    }
(
(
		{ 
	        newCompositeNode(grammarAccess.getWMLKeyAccess().getValuesWMLKeyValueParserRuleCall_2_0()); 
	    }
		lv_values_2_0=ruleWMLKeyValue		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getWMLKeyRule());
	        }
       		add(
       			$current, 
       			"values",
        		lv_values_2_0, 
        		"WMLKeyValue");
	        afterParserOrEnumRuleCall();
	    }

)
)*((this_EOL_3=RULE_EOL
    { 
    newLeafNode(this_EOL_3, grammarAccess.getWMLKeyAccess().getEOLTerminalRuleCall_3_0()); 
    }
)?	otherlv_4='+' 
    {
    	newLeafNode(otherlv_4, grammarAccess.getWMLKeyAccess().getPlusSignKeyword_3_1());
    }
(this_EOL_5=RULE_EOL
    { 
    newLeafNode(this_EOL_5, grammarAccess.getWMLKeyAccess().getEOLTerminalRuleCall_3_2()); 
    }
)?(
(
		{ 
	        newCompositeNode(grammarAccess.getWMLKeyAccess().getValuesWMLKeyValueParserRuleCall_3_3_0()); 
	    }
		lv_values_6_0=ruleWMLKeyValue		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getWMLKeyRule());
	        }
       		add(
       			$current, 
       			"values",
        		lv_values_6_0, 
        		"WMLKeyValue");
	        afterParserOrEnumRuleCall();
	    }

)
)+)*(
(
(
		lv_eol_7_1=RULE_EOL
		{
			newLeafNode(lv_eol_7_1, grammarAccess.getWMLKeyAccess().getEolEOLTerminalRuleCall_4_0_0()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getWMLKeyRule());
	        }
       		addWithLastConsumed(
       			$current, 
       			"eol",
        		lv_eol_7_1, 
        		"EOL");
	    }

    |		lv_eol_7_2=RULE_SL_COMMENT
		{
			newLeafNode(lv_eol_7_2, grammarAccess.getWMLKeyAccess().getEolSL_COMMENTTerminalRuleCall_4_0_1()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getWMLKeyRule());
	        }
       		addWithLastConsumed(
       			$current, 
       			"eol",
        		lv_eol_7_2, 
        		"SL_COMMENT");
	    }

)

)
))
;
finally {
	myHiddenTokenState.restore();
}





// Entry rule entryRuleWMLKeyValue
entryRuleWMLKeyValue returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getWMLKeyValueRule()); }
	 iv_ruleWMLKeyValue=ruleWMLKeyValue 
	 { $current=$iv_ruleWMLKeyValue.current; } 
	 EOF 
;

// Rule WMLKeyValue
ruleWMLKeyValue returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(
    { 
        newCompositeNode(grammarAccess.getWMLKeyValueAccess().getWMLValueParserRuleCall_0()); 
    }
    this_WMLValue_0=ruleWMLValue
    { 
        $current = $this_WMLValue_0.current; 
        afterParserOrEnumRuleCall();
    }

    |
    { 
        newCompositeNode(grammarAccess.getWMLKeyValueAccess().getWMLMacroCallParserRuleCall_1()); 
    }
    this_WMLMacroCall_1=ruleWMLMacroCall
    { 
        $current = $this_WMLMacroCall_1.current; 
        afterParserOrEnumRuleCall();
    }

    |
    { 
        newCompositeNode(grammarAccess.getWMLKeyValueAccess().getWMLLuaCodeParserRuleCall_2()); 
    }
    this_WMLLuaCode_2=ruleWMLLuaCode
    { 
        $current = $this_WMLLuaCode_2.current; 
        afterParserOrEnumRuleCall();
    }

    |
    { 
        newCompositeNode(grammarAccess.getWMLKeyValueAccess().getWMLArrayCallParserRuleCall_3()); 
    }
    this_WMLArrayCall_3=ruleWMLArrayCall
    { 
        $current = $this_WMLArrayCall_3.current; 
        afterParserOrEnumRuleCall();
    }
)
;





// Entry rule entryRuleWMLMacroCall
entryRuleWMLMacroCall returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getWMLMacroCallRule()); }
	 iv_ruleWMLMacroCall=ruleWMLMacroCall 
	 { $current=$iv_ruleWMLMacroCall.current; } 
	 EOF 
;

// Rule WMLMacroCall
ruleWMLMacroCall returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(	otherlv_0='{' 
    {
    	newLeafNode(otherlv_0, grammarAccess.getWMLMacroCallAccess().getLeftCurlyBracketKeyword_0());
    }
(
(
		lv_point_1_0=	'./' 
    {
        newLeafNode(lv_point_1_0, grammarAccess.getWMLMacroCallAccess().getPointFullStopSolidusKeyword_1_0());
    }
 
	    {
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getWMLMacroCallRule());
	        }
       		setWithLastConsumed($current, "point", lv_point_1_0, "./");
	    }

)
)?(
(
		lv_relative_2_0=	'~' 
    {
        newLeafNode(lv_relative_2_0, grammarAccess.getWMLMacroCallAccess().getRelativeTildeKeyword_2_0());
    }
 
	    {
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getWMLMacroCallRule());
	        }
       		setWithLastConsumed($current, "relative", lv_relative_2_0, "~");
	    }

)
)?(
(
		lv_name_3_0=RULE_ID
		{
			newLeafNode(lv_name_3_0, grammarAccess.getWMLMacroCallAccess().getNameIDTerminalRuleCall_3_0()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getWMLMacroCallRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"name",
        		lv_name_3_0, 
        		"ID");
	    }

)
)(
(
		{ 
	        newCompositeNode(grammarAccess.getWMLMacroCallAccess().getParametersWMLMacroCallParameterParserRuleCall_4_0()); 
	    }
		lv_Parameters_4_0=ruleWMLMacroCallParameter		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getWMLMacroCallRule());
	        }
       		add(
       			$current, 
       			"Parameters",
        		lv_Parameters_4_0, 
        		"WMLMacroCallParameter");
	        afterParserOrEnumRuleCall();
	    }

)
)*	otherlv_5='}' 
    {
    	newLeafNode(otherlv_5, grammarAccess.getWMLMacroCallAccess().getRightCurlyBracketKeyword_5());
    }
)
;





// Entry rule entryRuleWMLMacroCallParameter
entryRuleWMLMacroCallParameter returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getWMLMacroCallParameterRule()); }
	 iv_ruleWMLMacroCallParameter=ruleWMLMacroCallParameter 
	 { $current=$iv_ruleWMLMacroCallParameter.current; } 
	 EOF 
;

// Rule WMLMacroCallParameter
ruleWMLMacroCallParameter returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(
    { 
        newCompositeNode(grammarAccess.getWMLMacroCallParameterAccess().getWMLMacroParameterParserRuleCall_0()); 
    }
    this_WMLMacroParameter_0=ruleWMLMacroParameter
    { 
        $current = $this_WMLMacroParameter_0.current; 
        afterParserOrEnumRuleCall();
    }

    |
    { 
        newCompositeNode(grammarAccess.getWMLMacroCallParameterAccess().getWMLMacroCallParserRuleCall_1()); 
    }
    this_WMLMacroCall_1=ruleWMLMacroCall
    { 
        $current = $this_WMLMacroCall_1.current; 
        afterParserOrEnumRuleCall();
    }
)
;





// Entry rule entryRuleWMLArrayCall
entryRuleWMLArrayCall returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getWMLArrayCallRule()); }
	 iv_ruleWMLArrayCall=ruleWMLArrayCall 
	 { $current=$iv_ruleWMLArrayCall.current; } 
	 EOF 
;

// Rule WMLArrayCall
ruleWMLArrayCall returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(	otherlv_0='[' 
    {
    	newLeafNode(otherlv_0, grammarAccess.getWMLArrayCallAccess().getLeftSquareBracketKeyword_0());
    }
(
(
		{ 
	        newCompositeNode(grammarAccess.getWMLArrayCallAccess().getValueWMLValueParserRuleCall_1_0()); 
	    }
		lv_value_1_0=ruleWMLValue		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getWMLArrayCallRule());
	        }
       		add(
       			$current, 
       			"value",
        		lv_value_1_0, 
        		"WMLValue");
	        afterParserOrEnumRuleCall();
	    }

)
)+	otherlv_2=']' 
    {
    	newLeafNode(otherlv_2, grammarAccess.getWMLArrayCallAccess().getRightSquareBracketKeyword_2());
    }
)
;





// Entry rule entryRuleWMLMacroDefine
entryRuleWMLMacroDefine returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getWMLMacroDefineRule()); }
	 iv_ruleWMLMacroDefine=ruleWMLMacroDefine 
	 { $current=$iv_ruleWMLMacroDefine.current; } 
	 EOF 
;

// Rule WMLMacroDefine
ruleWMLMacroDefine returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
((
(
		lv_name_0_0=RULE_DEFINE
		{
			newLeafNode(lv_name_0_0, grammarAccess.getWMLMacroDefineAccess().getNameDEFINETerminalRuleCall_0_0()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getWMLMacroDefineRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"name",
        		lv_name_0_0, 
        		"DEFINE");
	    }

)
)(
(
		{ 
	        newCompositeNode(grammarAccess.getWMLMacroDefineAccess().getExpressionsWMLValuedExpressionParserRuleCall_1_0()); 
	    }
		lv_Expressions_1_0=ruleWMLValuedExpression		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getWMLMacroDefineRule());
	        }
       		add(
       			$current, 
       			"Expressions",
        		lv_Expressions_1_0, 
        		"WMLValuedExpression");
	        afterParserOrEnumRuleCall();
	    }

)
)*(
(
		lv_endName_2_0=RULE_ENDDEF
		{
			newLeafNode(lv_endName_2_0, grammarAccess.getWMLMacroDefineAccess().getEndNameENDDEFTerminalRuleCall_2_0()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getWMLMacroDefineRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"endName",
        		lv_endName_2_0, 
        		"ENDDEF");
	    }

)
))
;





// Entry rule entryRuleWMLPreprocIF
entryRuleWMLPreprocIF returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getWMLPreprocIFRule()); }
	 iv_ruleWMLPreprocIF=ruleWMLPreprocIF 
	 { $current=$iv_ruleWMLPreprocIF.current; } 
	 EOF 
;

// Rule WMLPreprocIF
ruleWMLPreprocIF returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
((
(
(
		lv_name_0_1=RULE_IFDEF
		{
			newLeafNode(lv_name_0_1, grammarAccess.getWMLPreprocIFAccess().getNameIFDEFTerminalRuleCall_0_0_0()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getWMLPreprocIFRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"name",
        		lv_name_0_1, 
        		"IFDEF");
	    }

    |		lv_name_0_2=RULE_IFNDEF
		{
			newLeafNode(lv_name_0_2, grammarAccess.getWMLPreprocIFAccess().getNameIFNDEFTerminalRuleCall_0_0_1()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getWMLPreprocIFRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"name",
        		lv_name_0_2, 
        		"IFNDEF");
	    }

    |		lv_name_0_3=RULE_IFHAVE
		{
			newLeafNode(lv_name_0_3, grammarAccess.getWMLPreprocIFAccess().getNameIFHAVETerminalRuleCall_0_0_2()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getWMLPreprocIFRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"name",
        		lv_name_0_3, 
        		"IFHAVE");
	    }

    |		lv_name_0_4=RULE_IFNHAVE
		{
			newLeafNode(lv_name_0_4, grammarAccess.getWMLPreprocIFAccess().getNameIFNHAVETerminalRuleCall_0_0_3()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getWMLPreprocIFRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"name",
        		lv_name_0_4, 
        		"IFNHAVE");
	    }

)

)
)(
(
		{ 
	        newCompositeNode(grammarAccess.getWMLPreprocIFAccess().getExpressionsWMLValuedExpressionParserRuleCall_1_0()); 
	    }
		lv_Expressions_1_0=ruleWMLValuedExpression		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getWMLPreprocIFRule());
	        }
       		add(
       			$current, 
       			"Expressions",
        		lv_Expressions_1_0, 
        		"WMLValuedExpression");
	        afterParserOrEnumRuleCall();
	    }

)
)*((
(
		lv_Elses_2_0=RULE_ELSE
		{
			newLeafNode(lv_Elses_2_0, grammarAccess.getWMLPreprocIFAccess().getElsesELSETerminalRuleCall_2_0_0()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getWMLPreprocIFRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"Elses",
        		lv_Elses_2_0, 
        		"ELSE");
	    }

)
)(
(
		{ 
	        newCompositeNode(grammarAccess.getWMLPreprocIFAccess().getElseExpressionsWMLValuedExpressionParserRuleCall_2_1_0()); 
	    }
		lv_ElseExpressions_3_0=ruleWMLValuedExpression		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getWMLPreprocIFRule());
	        }
       		add(
       			$current, 
       			"ElseExpressions",
        		lv_ElseExpressions_3_0, 
        		"WMLValuedExpression");
	        afterParserOrEnumRuleCall();
	    }

)
)+)?(
(
		lv_endName_4_0=RULE_ENDIF
		{
			newLeafNode(lv_endName_4_0, grammarAccess.getWMLPreprocIFAccess().getEndNameENDIFTerminalRuleCall_3_0()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getWMLPreprocIFRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"endName",
        		lv_endName_4_0, 
        		"ENDIF");
	    }

)
))
;





// Entry rule entryRuleWMLRootExpression
entryRuleWMLRootExpression returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getWMLRootExpressionRule()); }
	 iv_ruleWMLRootExpression=ruleWMLRootExpression 
	 { $current=$iv_ruleWMLRootExpression.current; } 
	 EOF 
;

// Rule WMLRootExpression
ruleWMLRootExpression returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(
    { 
        newCompositeNode(grammarAccess.getWMLRootExpressionAccess().getWMLTagParserRuleCall_0()); 
    }
    this_WMLTag_0=ruleWMLTag
    { 
        $current = $this_WMLTag_0.current; 
        afterParserOrEnumRuleCall();
    }

    |
    { 
        newCompositeNode(grammarAccess.getWMLRootExpressionAccess().getWMLMacroCallParserRuleCall_1()); 
    }
    this_WMLMacroCall_1=ruleWMLMacroCall
    { 
        $current = $this_WMLMacroCall_1.current; 
        afterParserOrEnumRuleCall();
    }

    |
    { 
        newCompositeNode(grammarAccess.getWMLRootExpressionAccess().getWMLMacroDefineParserRuleCall_2()); 
    }
    this_WMLMacroDefine_2=ruleWMLMacroDefine
    { 
        $current = $this_WMLMacroDefine_2.current; 
        afterParserOrEnumRuleCall();
    }

    |
    { 
        newCompositeNode(grammarAccess.getWMLRootExpressionAccess().getWMLTextdomainParserRuleCall_3()); 
    }
    this_WMLTextdomain_3=ruleWMLTextdomain
    { 
        $current = $this_WMLTextdomain_3.current; 
        afterParserOrEnumRuleCall();
    }

    |
    { 
        newCompositeNode(grammarAccess.getWMLRootExpressionAccess().getWMLPreprocIFParserRuleCall_4()); 
    }
    this_WMLPreprocIF_4=ruleWMLPreprocIF
    { 
        $current = $this_WMLPreprocIF_4.current; 
        afterParserOrEnumRuleCall();
    }
)
;





// Entry rule entryRuleWMLExpression
entryRuleWMLExpression returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getWMLExpressionRule()); }
	 iv_ruleWMLExpression=ruleWMLExpression 
	 { $current=$iv_ruleWMLExpression.current; } 
	 EOF 
;

// Rule WMLExpression
ruleWMLExpression returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(
    { 
        newCompositeNode(grammarAccess.getWMLExpressionAccess().getWMLRootExpressionParserRuleCall_0()); 
    }
    this_WMLRootExpression_0=ruleWMLRootExpression
    { 
        $current = $this_WMLRootExpression_0.current; 
        afterParserOrEnumRuleCall();
    }

    |
    { 
        newCompositeNode(grammarAccess.getWMLExpressionAccess().getWMLKeyParserRuleCall_1()); 
    }
    this_WMLKey_1=ruleWMLKey
    { 
        $current = $this_WMLKey_1.current; 
        afterParserOrEnumRuleCall();
    }
)
;





// Entry rule entryRuleWMLValuedExpression
entryRuleWMLValuedExpression returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getWMLValuedExpressionRule()); }
	 iv_ruleWMLValuedExpression=ruleWMLValuedExpression 
	 { $current=$iv_ruleWMLValuedExpression.current; } 
	 EOF 
;

// Rule WMLValuedExpression
ruleWMLValuedExpression returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(
    { 
        newCompositeNode(grammarAccess.getWMLValuedExpressionAccess().getWMLExpressionParserRuleCall_0()); 
    }
    this_WMLExpression_0=ruleWMLExpression
    { 
        $current = $this_WMLExpression_0.current; 
        afterParserOrEnumRuleCall();
    }

    |
    { 
        newCompositeNode(grammarAccess.getWMLValuedExpressionAccess().getWMLValueParserRuleCall_1()); 
    }
    this_WMLValue_1=ruleWMLValue
    { 
        $current = $this_WMLValue_1.current; 
        afterParserOrEnumRuleCall();
    }
)
;





// Entry rule entryRuleWMLTextdomain
entryRuleWMLTextdomain returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getWMLTextdomainRule()); }
	 iv_ruleWMLTextdomain=ruleWMLTextdomain 
	 { $current=$iv_ruleWMLTextdomain.current; } 
	 EOF 
;

// Rule WMLTextdomain
ruleWMLTextdomain returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(
(
		lv_name_0_0=RULE_TEXTDOMAIN
		{
			newLeafNode(lv_name_0_0, grammarAccess.getWMLTextdomainAccess().getNameTEXTDOMAINTerminalRuleCall_0()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getWMLTextdomainRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"name",
        		lv_name_0_0, 
        		"TEXTDOMAIN");
	    }

)
)
;





// Entry rule entryRuleWMLLuaCode
entryRuleWMLLuaCode returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getWMLLuaCodeRule()); }
	 iv_ruleWMLLuaCode=ruleWMLLuaCode 
	 { $current=$iv_ruleWMLLuaCode.current; } 
	 EOF 
;

// Rule WMLLuaCode
ruleWMLLuaCode returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(
(
		lv_value_0_0=RULE_LUA_CODE
		{
			newLeafNode(lv_value_0_0, grammarAccess.getWMLLuaCodeAccess().getValueLUA_CODETerminalRuleCall_0()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getWMLLuaCodeRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"value",
        		lv_value_0_0, 
        		"LUA_CODE");
	    }

)
)
;





// Entry rule entryRuleWMLMacroParameter
entryRuleWMLMacroParameter returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getWMLMacroParameterRule()); }
	 iv_ruleWMLMacroParameter=ruleWMLMacroParameter 
	 { $current=$iv_ruleWMLMacroParameter.current; } 
	 EOF 
;

// Rule WMLMacroParameter
ruleWMLMacroParameter returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(
    { 
        newCompositeNode(grammarAccess.getWMLMacroParameterAccess().getWMLValueParserRuleCall_0()); 
    }
    this_WMLValue_0=ruleWMLValue
    { 
        $current = $this_WMLValue_0.current; 
        afterParserOrEnumRuleCall();
    }

    |
    { 
        newCompositeNode(grammarAccess.getWMLMacroParameterAccess().getMacroTokensParserRuleCall_1()); 
    }
    this_MacroTokens_1=ruleMacroTokens
    { 
        $current = $this_MacroTokens_1.current; 
        afterParserOrEnumRuleCall();
    }
)
;





// Entry rule entryRuleWMLValue
entryRuleWMLValue returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getWMLValueRule()); }
	 iv_ruleWMLValue=ruleWMLValue 
	 { $current=$iv_ruleWMLValue.current; } 
	 EOF 
;

// Rule WMLValue
ruleWMLValue returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(
(
(
		lv_value_0_1=RULE_ID
		{
			newLeafNode(lv_value_0_1, grammarAccess.getWMLValueAccess().getValueIDTerminalRuleCall_0_0()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getWMLValueRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"value",
        		lv_value_0_1, 
        		"ID");
	    }

    |		lv_value_0_2=RULE_STRING
		{
			newLeafNode(lv_value_0_2, grammarAccess.getWMLValueAccess().getValueSTRINGTerminalRuleCall_0_1()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getWMLValueRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"value",
        		lv_value_0_2, 
        		"STRING");
	    }

    |		lv_value_0_3=	'_' 
    {
        newLeafNode(lv_value_0_3, grammarAccess.getWMLValueAccess().getValue_Keyword_0_2());
    }
 
	    {
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getWMLValueRule());
	        }
       		setWithLastConsumed($current, "value", lv_value_0_3, null);
	    }

    |		lv_value_0_4=	'~' 
    {
        newLeafNode(lv_value_0_4, grammarAccess.getWMLValueAccess().getValueTildeKeyword_0_3());
    }
 
	    {
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getWMLValueRule());
	        }
       		setWithLastConsumed($current, "value", lv_value_0_4, null);
	    }

    |		lv_value_0_5=	'.' 
    {
        newLeafNode(lv_value_0_5, grammarAccess.getWMLValueAccess().getValueFullStopKeyword_0_4());
    }
 
	    {
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getWMLValueRule());
	        }
       		setWithLastConsumed($current, "value", lv_value_0_5, null);
	    }

    |		lv_value_0_6=	'./' 
    {
        newLeafNode(lv_value_0_6, grammarAccess.getWMLValueAccess().getValueFullStopSolidusKeyword_0_5());
    }
 
	    {
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getWMLValueRule());
	        }
       		setWithLastConsumed($current, "value", lv_value_0_6, null);
	    }

    |		lv_value_0_7=	'$' 
    {
        newLeafNode(lv_value_0_7, grammarAccess.getWMLValueAccess().getValueDollarSignKeyword_0_6());
    }
 
	    {
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getWMLValueRule());
	        }
       		setWithLastConsumed($current, "value", lv_value_0_7, null);
	    }

    |		lv_value_0_8=	'/' 
    {
        newLeafNode(lv_value_0_8, grammarAccess.getWMLValueAccess().getValueSolidusKeyword_0_7());
    }
 
	    {
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getWMLValueRule());
	        }
       		setWithLastConsumed($current, "value", lv_value_0_8, null);
	    }

    |		lv_value_0_9=	'(' 
    {
        newLeafNode(lv_value_0_9, grammarAccess.getWMLValueAccess().getValueLeftParenthesisKeyword_0_8());
    }
 
	    {
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getWMLValueRule());
	        }
       		setWithLastConsumed($current, "value", lv_value_0_9, null);
	    }

    |		lv_value_0_10=	')' 
    {
        newLeafNode(lv_value_0_10, grammarAccess.getWMLValueAccess().getValueRightParenthesisKeyword_0_9());
    }
 
	    {
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getWMLValueRule());
	        }
       		setWithLastConsumed($current, "value", lv_value_0_10, null);
	    }

    |		lv_value_0_11=RULE_ANY_OTHER
		{
			newLeafNode(lv_value_0_11, grammarAccess.getWMLValueAccess().getValueANY_OTHERTerminalRuleCall_0_10()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getWMLValueRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"value",
        		lv_value_0_11, 
        		"ANY_OTHER");
	    }

)

)
)
;





// Entry rule entryRuleMacroTokens
entryRuleMacroTokens returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getMacroTokensRule()); }
	 iv_ruleMacroTokens=ruleMacroTokens 
	 { $current=$iv_ruleMacroTokens.current; } 
	 EOF 
;

// Rule MacroTokens
ruleMacroTokens returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(
(
(
		lv_value_0_1=	'=' 
    {
        newLeafNode(lv_value_0_1, grammarAccess.getMacroTokensAccess().getValueEqualsSignKeyword_0_0());
    }
 
	    {
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getMacroTokensRule());
	        }
       		setWithLastConsumed($current, "value", lv_value_0_1, null);
	    }

    |		lv_value_0_2=	'[' 
    {
        newLeafNode(lv_value_0_2, grammarAccess.getMacroTokensAccess().getValueLeftSquareBracketKeyword_0_1());
    }
 
	    {
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getMacroTokensRule());
	        }
       		setWithLastConsumed($current, "value", lv_value_0_2, null);
	    }

    |		lv_value_0_3=	']' 
    {
        newLeafNode(lv_value_0_3, grammarAccess.getMacroTokensAccess().getValueRightSquareBracketKeyword_0_2());
    }
 
	    {
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getMacroTokensRule());
	        }
       		setWithLastConsumed($current, "value", lv_value_0_3, null);
	    }

    |		lv_value_0_4=	'+' 
    {
        newLeafNode(lv_value_0_4, grammarAccess.getMacroTokensAccess().getValuePlusSignKeyword_0_3());
    }
 
	    {
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getMacroTokensRule());
	        }
       		setWithLastConsumed($current, "value", lv_value_0_4, null);
	    }

    |		lv_value_0_5=	'[/' 
    {
        newLeafNode(lv_value_0_5, grammarAccess.getMacroTokensAccess().getValueLeftSquareBracketSolidusKeyword_0_4());
    }
 
	    {
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getMacroTokensRule());
	        }
       		setWithLastConsumed($current, "value", lv_value_0_5, null);
	    }

)

)
)
;





RULE_LUA_CODE : '<<' ( options {greedy=false;} : . )*'>>';

RULE_IFHAVE : '#ifhave' ~(('\n'|'\r'))* ('\r'? '\n')?;

RULE_IFNHAVE : '#ifnhave' ~(('\n'|'\r'))* ('\r'? '\n')?;

RULE_IFDEF : '#ifdef' ~(('\n'|'\r'))* ('\r'? '\n')?;

RULE_IFNDEF : '#ifndef' ~(('\n'|'\r'))* ('\r'? '\n')?;

RULE_ELSE : '#else' ~(('\n'|'\r'))* ('\r'? '\n')?;

RULE_ENDIF : '#endif' ~(('\n'|'\r'))* ('\r'? '\n')?;

RULE_DEFINE : '#define' ~(('\n'|'\r'))* ('\r'? '\n')?;

RULE_ENDDEF : '#enddef' ~(('\n'|'\r'))* ('\r'? '\n')?;

RULE_TEXTDOMAIN : '#textdomain' ~(('\n'|'\r'))* ('\r'? '\n')?;

RULE_STRING : '"' ('\\' ('b'|'t'|'n'|'f'|'r'|'"'|'\''|'\\')|~(('\\'|'"')))* '"';

RULE_ID : ('a'..'z'|'A'..'Z'|'0'..'9'|'_'|'-'|',')+;

RULE_EOL : '\r'? '\n';

RULE_WS : (' '|'\t')+;

RULE_ANY_OTHER : .;

RULE_SL_COMMENT : '#' ~(('\n'|'\r'))* ('\r'? '\n')?;

