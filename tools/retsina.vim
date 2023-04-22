syn keyword retsPrimType byte ubyte short ushort int uint long ulong
syn keyword retsPrimType bool void char char8 char16 char32
syn keyword retsPrimType float double msize smsize
syn keyword retsPrimType __anything Symbolic

syn keyword retsCompType String String8 String16 String32
syn keyword retsCompType LString LString8 LString16 LString32
syn keyword retsCompType RString RString8 RString16 RString32
syn keyword retsCompType AString AString8 AString16 AString32
syn keyword retsCompType ListMT List RopeMT Rope ArrayMT Array
syn keyword retsCompType Sequence SequenceMT Collection CollectionMT Set SetMT Map MapMT
syn keyword retsCompType Iter IterP Iterator IteratorP Monad Applicative Functor MonadTrans
syn keyword retsCompType StateMT State Identity
syn keyword retsCompType IO MaybeMT Maybe JustMT Just NoneMT None Either Left Right Tup Fun DPair
syn keyword retsCompType Type TypeP Symbol QuotedSymbol TypeConstraint TypeConstraintP TypeBound TypeBoundP
syn keyword retsCompType LocationP Location OrdRel OrdConstr Number Integral Fractional
syn keyword retsCompType TopItem Expression Expr FunctionDefintion MemberName ParameterDefinition
syn keyword retsCompType MethodParameterDefinition SpecializingParameterDefinition OperatorDefinition
syn keyword retsCompType Exposition ElementAlias MethodDefinition ModuleDefinition PubExposition
syn keyword retsCompType RecordTypeDefinition ClassDefinition Export ConstantDefinition
syn keyword retsCompType PlainMemberName IndirectMemberName CompoundTypeDefinition PrecGroupDefinition
syn keyword retsCompType PrecedenceDeclaration AssociativityDeclaration
syn keyword retsCompType CompoundTypeMember FacetlessCompoundTypeMember
syn keyword retsCompType FieldDefinition FieldAlias MemberFunctionDefintion MemberMethodDefinition
syn keyword retsCompType MemberTopItem
syn keyword retsCompType RendClause NewClause SatisfiesClause
syn keyword retsCompType InstanceDeclaration
syn keyword retsCompType CompoundTypeClause FacetlessCompoundTypeClause
syn keyword retsCompType SyntaxSpec SequenceSyntax RepetitionSyntax OptionSyntax ChoiceSyntax
syn keyword retsCompType TerminalSyntax NonTerminalSyntax
syn keyword retsCompType MemberAccess PropertyAccess NamedAccess IfExpression LetExpression ControlStructure
syn keyword retsCompType IfBranch LetBinding ConstantLetBinding FunctionLetBinding ForallBinding ForallExpression
syn keyword retsCompType TupleExpression IsExpression AsExpression BeingExpression NewExpression LambdaExpression
syn keyword retsCompType FacetInitializer FacetInitializerBody InnerFacetInitializer
syn keyword retsCompType FieldFacetInitializer DirectFacetInitializer ConstructingFacetInitializer
syn keyword retsCompType CopyingFacetInitializer
syn keyword retsCompType RaiseExpression DropExpression TryExpression TryClause TryHandlerClause
syn keyword retsCompType TakeClause CatchClause
" TODO: InstanceDeclaration

syn keyword retsErrorType Error NotALeftError NotARightError IndexOutOfBoundsError TupleIndexOutOfBoundsError
syn keyword retsErrorType NotAJustError

syn keyword retsInitiator type class fun spec enum mod forall oper precgrp prec assoc do symbolic val
syn keyword retsInitiator import export alias
syn keyword retsInitiator if then elif else new
syn keyword retsModifier pub rend satisfies
syn keyword retsTransform leaf

syn keyword retsHeader provide require __intrin

syn keyword retsNilary true false it
syn keyword retsOper and or not raise let in cat as __reinterpret_as is as being
syn keyword retsOper try take drop catch

syn keyword retsWildcard _

syn region retsString start=+[AuU]\?"+ end=+"\([RLA]\>\)\?+ skip=+\\.+ contains=retsEscape
syn match retsChar /[AuU]\?'\([^\\]\|\\\([abefnrt]\|x[0-9a-fA-F]\{2\}\|[0-7]\{1,3\}\|u[0-9a-fA-F]\{4\}\|U[0-9a-fA-F]\{8\}\)\)'/ contains=retsEscape
syn match retsEscape /\\\([abefnrt]\|x[0-9a-fA-F]\{2\}\|[0-7]\{1,3\}\|u[0-9a-fA-F]\{4\}\|U[0-9a-fA-F]\{8\}\)/ contained
syn match retsInt /\<[0-9]\+\([to]\?\|u\?[ysil]\?\|s\?z\)\>/
syn match retsFloat /\.[0-9]\+\([eE][+-]\?[0-9]\+\)\?[to]\?\>/
syn match retsFloat /\<[0-9]\+\.[0-9]*\([eE][+-]\?[0-9]\+\)\?[to]\?\>/
syn region retsSymbol start=+`+ end=+`+

syn match retsNilary /()/

syn match retsName /[a-zA-Z_][a-zA-Z0-9_]*[!?]*/

syn match retsOper /->\|=>\|==\?\|!=\||\|:\|+\|-\|\\\|<=\?\|>=\?\|\*\|\/\|%\|?/
syn match retsModifier /#\|\$/
syn match retsStructural /::\|{\|}\|\[\|\]/

syn match retsComment +//.*$+
syn region retsComment start=+/\*+ end=+\*/+

hi link retsPrimType Type
hi link retsCompType Identifier
hi link retsErrorType retsCompType
hi link retsString String
hi link retsChar Character
hi link retsEscape Special
hi link retsInt Number
hi link retsFloat Number
hi link retsInitiator Operator
hi link retsModifier Macro
hi link retsTransform retsModifier
hi link retsHeader PreProc
hi link retsNilary Constant
hi link retsSymbol Search
hi link retsOper retsInitiator
hi link retsWildcard Macro
hi link retsComment Comment
hi link retsStructural StorageClass
