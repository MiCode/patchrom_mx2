.class public Lcom/meizu/widget/RecipientEdit;
.super Landroid/widget/FrameLayout;
.source "RecipientEdit.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/widget/RecipientEdit$RecipientDragWatcher;,
        Lcom/meizu/widget/RecipientEdit$OnEmailAddWhenGroupListener;,
        Lcom/meizu/widget/RecipientEdit$OnRecipientFirstAddListener;,
        Lcom/meizu/widget/RecipientEdit$OnDropDownListener;,
        Lcom/meizu/widget/RecipientEdit$OnTextChangedListener;,
        Lcom/meizu/widget/RecipientEdit$OnRecipientChangedListener;,
        Lcom/meizu/widget/RecipientEdit$RecipientRunnable;,
        Lcom/meizu/widget/RecipientEdit$RecipientObserver;,
        Lcom/meizu/widget/RecipientEdit$HistoryHandler;,
        Lcom/meizu/widget/RecipientEdit$RecipientHandler;,
        Lcom/meizu/widget/RecipientEdit$RecipientWorker;,
        Lcom/meizu/widget/RecipientEdit$DirectoryListQuery;,
        Lcom/meizu/widget/RecipientEdit$RecipientAdapter;,
        Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;,
        Lcom/meizu/widget/RecipientEdit$ItemView;,
        Lcom/meizu/widget/RecipientEdit$RecipientDragShadowBuilder;,
        Lcom/meizu/widget/RecipientEdit$DragInfo;
    }
.end annotation


# static fields
.field private static final DATA_INDEX:I = 0x1

.field private static final DELAYMILLIS:J = 0x5dcL

.field public static final INPUT_TYPE_DEFAULT:I = 0x0

.field public static final INPUT_TYPE_EMAIL:I = 0x2

.field public static final INPUT_TYPE_PHONE:I = 0x1

.field private static final MSG_SAVE:I = 0x2

.field private static final MSG_SIP_CHECK:I = 0x1

.field private static final MSG_UPDATE_NAME:I = 0x3

.field private static final NAME_INDEX:I = 0x0

.field private static final PHONE:Ljava/util/regex/Pattern; = null

.field private static final PROJECTION:[Ljava/lang/String; = null

.field private static final SPLITTER:Ljava/lang/String; = ";|, "

.field public static final TAG:Ljava/lang/String; = "RecipientEdit"

.field private static sContentWorker:Lcom/meizu/widget/RecipientEdit$RecipientWorker;

.field private static sHistoryWorker:Lcom/meizu/widget/RecipientEdit$RecipientWorker;

.field private static sRecipientWorker:Lcom/meizu/widget/RecipientEdit$RecipientWorker;


# instance fields
.field private mAddContactsBtn:Landroid/widget/ImageButton;

.field private mBeginSipCheck:Z

.field private mBtnVisibility:Z

.field private mCheckSipDestAddr:Z

.field private mCheckingRecipient:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContentHandler:Landroid/os/Handler;

.field private mCountView:Landroid/widget/TextView;

.field private mDbHelper:Lcom/meizu/widget/RecipientDbHelper;

.field private final mDbLock:Ljava/lang/Object;

.field private mDisplayNameView:Landroid/widget/TextView;

.field private mDragInfo:Lcom/meizu/widget/RecipientEdit$DragInfo;

.field private mDragWatcher:Lcom/meizu/widget/RecipientEdit$RecipientDragWatcher;

.field private mEditMaxWidth:I

.field private mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

.field private mEnabledDrag:Z

.field private mFirstDragPos:I

.field private mHasEmail:Z

.field private mHintStr:Ljava/lang/String;

.field private mHintView:Landroid/widget/TextView;

.field private mHintView2:Landroid/widget/TextView;

.field private mHistoryEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHistoryHandler:Lcom/meizu/widget/RecipientEdit$HistoryHandler;

.field private mInDrag:Z

.field private mInputType:I

.field private mIsFirstLayout:Z

.field private mIsSaveHistory:Z

.field private mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mLastInputMethod:Ljava/lang/String;

.field private mMaxHeight:I

.field private mObserver:Landroid/database/ContentObserver;

.field private mOnDragListener:Landroid/view/View$OnDragListener;

.field private mOnEmailAddWhenGroupListener:Lcom/meizu/widget/RecipientEdit$OnEmailAddWhenGroupListener;

.field private mOnKeyPreImeListener:Landroid/widget/EditText$OnKeyPreImeListener;

.field private mOnRecipientChangedListener:Lcom/meizu/widget/RecipientEdit$OnRecipientChangedListener;

.field private mOnRecipientFirstAddListener:Lcom/meizu/widget/RecipientEdit$OnRecipientFirstAddListener;

.field private mOnSipCheckerBehaviorListener:Lcom/meizu/widget/RecipientStateInfo$OnSipCheckerBehaviorListener;

.field private mOnSipStateChangedListener:Lcom/meizu/widget/RecipientStateInfo$OnSipStateChangedListener;

.field private mOnTextChangedListener:Lcom/meizu/widget/RecipientEdit$OnTextChangedListener;

.field private mOpenGlobalAddressBook:Z

.field private mRecipientDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRecipientHandler:Lcom/meizu/widget/RecipientEdit$RecipientHandler;

.field private mRecipientLayout:Landroid/widget/AbsoluteLayout;

.field private mRecipientMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRecipientNotSip:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRecipientScrollView:Landroid/widget/ScrollView;

.field private mRecipientState:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/meizu/widget/RecipientStateInfo$SipState;",
            ">;"
        }
    .end annotation
.end field

.field private mRunnable:Ljava/lang/Runnable;

.field private mSipDestChecker:Lcom/meizu/widget/RecipientStateInfo$SipDestChecker;

.field private mSipVersion:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mStartDrag:Z

.field private mViewSelected:Landroid/view/View;

.field private mWatcher:Landroid/text/TextWatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1533
    const-string v0, "(\\+[0-9]+[\\- \\.]*)?(\\([0-9]+\\)[\\- \\.]*)?([0-9][0-9\\- \\.]*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/meizu/widget/RecipientEdit;->PHONE:Ljava/util/regex/Pattern;

    .line 3074
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "data1"

    aput-object v2, v0, v1

    sput-object v0, Lcom/meizu/widget/RecipientEdit;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 206
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/meizu/widget/RecipientEdit;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 207
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 210
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/widget/RecipientEdit;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 211
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 214
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 162
    iput-boolean v2, p0, Lcom/meizu/widget/RecipientEdit;->mCheckSipDestAddr:Z

    .line 167
    iput-boolean v3, p0, Lcom/meizu/widget/RecipientEdit;->mOpenGlobalAddressBook:Z

    .line 183
    new-instance v1, Ljava/lang/Object;

    invoke-direct/range {v1 .. v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mDbLock:Ljava/lang/Object;

    .line 836
    new-instance v1, Lcom/meizu/widget/RecipientEdit$2;

    invoke-direct {v1, p0}, Lcom/meizu/widget/RecipientEdit$2;-><init>(Lcom/meizu/widget/RecipientEdit;)V

    iput-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mWatcher:Landroid/text/TextWatcher;

    .line 901
    new-instance v1, Lcom/meizu/widget/RecipientEdit$3;

    invoke-direct {v1, p0}, Lcom/meizu/widget/RecipientEdit$3;-><init>(Lcom/meizu/widget/RecipientEdit;)V

    iput-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mRunnable:Ljava/lang/Runnable;

    .line 925
    new-instance v1, Lcom/meizu/widget/RecipientEdit$4;

    invoke-direct {v1, p0}, Lcom/meizu/widget/RecipientEdit$4;-><init>(Lcom/meizu/widget/RecipientEdit;)V

    iput-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 216
    sget-object v1, Lcom/android/internal/R$styleable;->RecipientEdit:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 218
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/meizu/widget/RecipientEdit;->mInputType:I

    .line 219
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mHintStr:Ljava/lang/String;

    .line 220
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/meizu/widget/RecipientEdit;->mMaxHeight:I

    .line 221
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 223
    invoke-direct {p0}, Lcom/meizu/widget/RecipientEdit;->initRecipientEdit()V

    .line 224
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/widget/RecipientEdit;)Landroid/widget/EditText$OnKeyPreImeListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit;->mOnKeyPreImeListener:Landroid/widget/EditText$OnKeyPreImeListener;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/meizu/widget/RecipientEdit;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/meizu/widget/RecipientEdit;->mCheckSipDestAddr:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/meizu/widget/RecipientEdit;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/meizu/widget/RecipientEdit;->refreshSipDestState()V

    return-void
.end method

.method static synthetic access$1200(Lcom/meizu/widget/RecipientEdit;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/meizu/widget/RecipientEdit;->endCheck()V

    return-void
.end method

.method static synthetic access$1300(Lcom/meizu/widget/RecipientEdit;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit;->mViewSelected:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/meizu/widget/RecipientEdit;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 104
    iput-object p1, p0, Lcom/meizu/widget/RecipientEdit;->mViewSelected:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/meizu/widget/RecipientEdit;)Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/meizu/widget/RecipientEdit;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/meizu/widget/RecipientEdit;->isDefaultInputMethod()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/meizu/widget/RecipientEdit;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 104
    iget v0, p0, Lcom/meizu/widget/RecipientEdit;->mInputType:I

    return v0
.end method

.method static synthetic access$1700(Lcom/meizu/widget/RecipientEdit;)Lcom/meizu/widget/RecipientEdit$OnRecipientChangedListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit;->mOnRecipientChangedListener:Lcom/meizu/widget/RecipientEdit$OnRecipientChangedListener;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/meizu/widget/RecipientEdit;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lcom/meizu/widget/RecipientEdit;->removeSpecialCharacter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lcom/meizu/widget/RecipientEdit;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lcom/meizu/widget/RecipientEdit;->isValidRecipient(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/meizu/widget/RecipientEdit;)Lcom/meizu/widget/RecipientEdit$OnTextChangedListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit;->mOnTextChangedListener:Lcom/meizu/widget/RecipientEdit$OnTextChangedListener;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/meizu/widget/RecipientEdit;)Lcom/meizu/widget/RecipientStateInfo$SipDestChecker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit;->mSipDestChecker:Lcom/meizu/widget/RecipientStateInfo$SipDestChecker;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/meizu/widget/RecipientEdit;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/meizu/widget/RecipientEdit;->beginCheck()V

    return-void
.end method

.method static synthetic access$2200(Lcom/meizu/widget/RecipientEdit;)Lcom/meizu/widget/RecipientStateInfo$OnSipStateChangedListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit;->mOnSipStateChangedListener:Lcom/meizu/widget/RecipientStateInfo$OnSipStateChangedListener;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/meizu/widget/RecipientEdit;J)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 104
    invoke-direct {p0, p1, p2}, Lcom/meizu/widget/RecipientEdit;->addGroupData(J)I

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lcom/meizu/widget/RecipientEdit;)Lcom/meizu/widget/RecipientEdit$OnRecipientFirstAddListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit;->mOnRecipientFirstAddListener:Lcom/meizu/widget/RecipientEdit$OnRecipientFirstAddListener;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/meizu/widget/RecipientEdit;)Lcom/meizu/widget/RecipientEdit$DragInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit;->mDragInfo:Lcom/meizu/widget/RecipientEdit$DragInfo;

    return-object v0
.end method

.method static synthetic access$300(Lcom/meizu/widget/RecipientEdit;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit;->mRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/meizu/widget/RecipientEdit;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3300()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    sget-object v0, Lcom/meizu/widget/RecipientEdit;->PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/meizu/widget/RecipientEdit;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit;->mDbLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/meizu/widget/RecipientEdit;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/meizu/widget/RecipientEdit;->mIsSaveHistory:Z

    return v0
.end method

.method static synthetic access$3600(Lcom/meizu/widget/RecipientEdit;)Lcom/meizu/widget/RecipientDbHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit;->mDbHelper:Lcom/meizu/widget/RecipientDbHelper;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/meizu/widget/RecipientEdit;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/meizu/widget/RecipientEdit;->mOpenGlobalAddressBook:Z

    return v0
.end method

.method static synthetic access$3800(Lcom/meizu/widget/RecipientEdit;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/meizu/widget/RecipientEdit;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/meizu/widget/RecipientEdit;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientDataList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/meizu/widget/RecipientEdit;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lcom/meizu/widget/RecipientEdit;->queryDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4100(Lcom/meizu/widget/RecipientEdit;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/meizu/widget/RecipientEdit;)Landroid/widget/AbsoluteLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientLayout:Landroid/widget/AbsoluteLayout;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/meizu/widget/RecipientEdit;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lcom/meizu/widget/RecipientEdit;->refreshLayout(Z)V

    return-void
.end method

.method static synthetic access$4400(Lcom/meizu/widget/RecipientEdit;)Lcom/meizu/widget/RecipientEdit$HistoryHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit;->mHistoryHandler:Lcom/meizu/widget/RecipientEdit$HistoryHandler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/meizu/widget/RecipientEdit;)Lcom/meizu/widget/RecipientEdit$RecipientHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientHandler:Lcom/meizu/widget/RecipientEdit$RecipientHandler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/meizu/widget/RecipientEdit;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientState:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$700(Lcom/meizu/widget/RecipientEdit;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit;->mSipVersion:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$800(Lcom/meizu/widget/RecipientEdit;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit;->mCheckingRecipient:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$900(Lcom/meizu/widget/RecipientEdit;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientNotSip:Ljava/util/ArrayList;

    return-object v0
.end method

.method private addGroupData(J)I
    .locals 13
    .parameter "groupId"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v4, 0x0

    .line 1265
    const/4 v6, 0x0

    .line 1266
    .local v6, dataCursor:Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 1267
    .local v1, uri:Landroid/net/Uri;
    iget v0, p0, Lcom/meizu/widget/RecipientEdit;->mInputType:I

    packed-switch v0, :pswitch_data_0

    .line 1290
    :goto_0
    if-eqz v6, :cond_5

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_5

    .line 1291
    const/4 v9, 0x0

    .line 1293
    .local v9, result:I
    const/4 v0, -0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1294
    :cond_0
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1295
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1296
    .local v8, number:Ljava/lang/String;
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1297
    .local v7, name:Ljava/lang/String;
    invoke-direct {p0, v8, v7}, Lcom/meizu/widget/RecipientEdit;->addRecipientInternal(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    .line 1298
    .local v10, ret:Z
    if-eqz v10, :cond_0

    .line 1299
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 1270
    .end local v7           #name:Ljava/lang/String;
    .end local v8           #number:Ljava/lang/String;
    .end local v9           #result:I
    .end local v10           #ret:Z
    :pswitch_0
    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_GROUP_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 1271
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/meizu/widget/RecipientEdit;->PROJECTION:[Ljava/lang/String;

    const-string v3, "is_primary = 1"

    const-string v5, "sort_key"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1275
    goto :goto_0

    .line 1278
    :pswitch_1
    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_GROUP_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 1279
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/meizu/widget/RecipientEdit;->PROJECTION:[Ljava/lang/String;

    const-string v5, "sort_key"

    move-object v3, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1283
    goto :goto_0

    .line 1303
    .restart local v9       #result:I
    :cond_1
    if-lez v9, :cond_4

    .line 1304
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit;->mOnRecipientChangedListener:Lcom/meizu/widget/RecipientEdit$OnRecipientChangedListener;

    if-eqz v0, :cond_2

    .line 1305
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit;->mOnRecipientChangedListener:Lcom/meizu/widget/RecipientEdit$OnRecipientChangedListener;

    invoke-interface {v0}, Lcom/meizu/widget/RecipientEdit$OnRecipientChangedListener;->OnRecipientChanged()V

    .line 1308
    :cond_2
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v12, :cond_3

    iget-boolean v0, p0, Lcom/meizu/widget/RecipientEdit;->mHasEmail:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit;->mOnEmailAddWhenGroupListener:Lcom/meizu/widget/RecipientEdit$OnEmailAddWhenGroupListener;

    if-eqz v0, :cond_3

    .line 1310
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit;->mOnEmailAddWhenGroupListener:Lcom/meizu/widget/RecipientEdit$OnEmailAddWhenGroupListener;

    invoke-interface {v0}, Lcom/meizu/widget/RecipientEdit$OnEmailAddWhenGroupListener;->OnEmailAddWhenGroup()V

    .line 1313
    :cond_3
    iget-boolean v0, p0, Lcom/meizu/widget/RecipientEdit;->mIsFirstLayout:Z

    if-nez v0, :cond_4

    .line 1314
    invoke-virtual {p0}, Lcom/meizu/widget/RecipientEdit;->hasFocus()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/meizu/widget/RecipientEdit;->refreshLayout(Z)V

    .line 1318
    :cond_4
    invoke-direct {p0}, Lcom/meizu/widget/RecipientEdit;->saveHistory()V

    .line 1325
    .end local v9           #result:I
    :goto_2
    return v9

    .line 1322
    :cond_5
    if-eqz v6, :cond_6

    .line 1323
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_6
    move v9, v11

    .line 1325
    goto :goto_2

    .line 1267
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private addItemView(Ljava/lang/CharSequence;)I
    .locals 8
    .parameter "name"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1462
    iget-object v3, p0, Lcom/meizu/widget/RecipientEdit;->mContext:Landroid/content/Context;

    const v4, 0x10900bf

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/meizu/widget/RecipientEdit;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/meizu/widget/RecipientEdit$ItemView;

    .line 1463
    .local v1, item:Lcom/meizu/widget/RecipientEdit$ItemView;
    invoke-virtual {v1}, Lcom/meizu/widget/RecipientEdit$ItemView;->getView()Landroid/widget/TextView;

    move-result-object v2

    .line 1464
    .local v2, tv:Landroid/widget/TextView;
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1465
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setEllipsisSmall(Z)V

    .line 1467
    invoke-virtual {v1, v6}, Lcom/meizu/widget/RecipientEdit$ItemView;->setClickable(Z)V

    .line 1468
    invoke-virtual {v1, p0}, Lcom/meizu/widget/RecipientEdit$ItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1469
    invoke-virtual {v1, v6}, Lcom/meizu/widget/RecipientEdit$ItemView;->setLongClickable(Z)V

    .line 1470
    invoke-virtual {v1, p0}, Lcom/meizu/widget/RecipientEdit$ItemView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1471
    invoke-virtual {v1, v7}, Lcom/meizu/widget/RecipientEdit$ItemView;->setFocusable(Z)V

    .line 1472
    invoke-virtual {v1, v7}, Lcom/meizu/widget/RecipientEdit$ItemView;->setFocusableInTouchMode(Z)V

    .line 1473
    iget-object v3, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientLayout:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v3}, Landroid/widget/AbsoluteLayout;->getChildCount()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .line 1474
    .local v0, index:I
    iget-object v3, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientLayout:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v3, v1, v0}, Landroid/widget/AbsoluteLayout;->addView(Landroid/view/View;I)V

    .line 1475
    return v0
.end method

.method private addRecipientInternal(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "number"
    .parameter "contactName"

    .prologue
    .line 1329
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/widget/RecipientEdit;->addRecipientInternal(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method private addRecipientInternal(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 10
    .parameter "number"
    .parameter "contactName"
    .parameter "dragPos"

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 1333
    invoke-direct {p0, p1}, Lcom/meizu/widget/RecipientEdit;->removeSpecialCharacter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1335
    .local v1, dstNumber:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1396
    :cond_0
    :goto_0
    return v6

    .line 1339
    :cond_1
    iget-object v8, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientDataList:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 1343
    iget-boolean v6, p0, Lcom/meizu/widget/RecipientEdit;->mHasEmail:Z

    if-nez v6, :cond_2

    invoke-static {v1}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1344
    iput-boolean v7, p0, Lcom/meizu/widget/RecipientEdit;->mHasEmail:Z

    .line 1347
    :cond_2
    move-object v0, p2

    .line 1348
    .local v0, displayName:Ljava/lang/String;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1349
    invoke-direct {p0, v1}, Lcom/meizu/widget/RecipientEdit;->queryDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1351
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 1352
    move-object v0, p2

    .line 1358
    :cond_3
    :goto_1
    invoke-direct {p0, v1}, Lcom/meizu/widget/RecipientEdit;->isValidRecipient(Ljava/lang/String;)Z

    move-result v5

    .line 1359
    .local v5, valid:Z
    move v2, p3

    .line 1360
    .local v2, index:I
    iget-object v6, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientLayout:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v6, v2}, Landroid/widget/AbsoluteLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1361
    .local v3, item:Landroid/view/View;
    if-eqz v3, :cond_7

    .line 1362
    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1363
    invoke-virtual {v3, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1370
    :cond_4
    :goto_2
    iget-object v6, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientDataList:Ljava/util/ArrayList;

    add-int/lit8 v8, v2, -0x1

    invoke-virtual {v6, v8, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1371
    iget-object v6, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientMap:Ljava/util/HashMap;

    invoke-virtual {v6, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1374
    iget-object v6, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientState:Ljava/util/HashMap;

    invoke-virtual {v6, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/meizu/widget/RecipientStateInfo$SipState;

    .line 1375
    .local v4, state:Lcom/meizu/widget/RecipientStateInfo$SipState;
    iget-object v6, p0, Lcom/meizu/widget/RecipientEdit;->mCheckingRecipient:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    iget-object v6, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientNotSip:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    if-eqz v4, :cond_8

    sget-object v6, Lcom/meizu/widget/RecipientStateInfo$SipState;->SIP_UNCHECK:Lcom/meizu/widget/RecipientStateInfo$SipState;

    if-eq v4, v6, :cond_8

    :cond_5
    move v6, v7

    .line 1378
    goto :goto_0

    .line 1354
    .end local v2           #index:I
    .end local v3           #item:Landroid/view/View;
    .end local v4           #state:Lcom/meizu/widget/RecipientStateInfo$SipState;
    .end local v5           #valid:Z
    :cond_6
    move-object v0, v1

    goto :goto_1

    .line 1365
    .restart local v2       #index:I
    .restart local v3       #item:Landroid/view/View;
    .restart local v5       #valid:Z
    :cond_7
    invoke-direct {p0, v0}, Lcom/meizu/widget/RecipientEdit;->addItemView(Ljava/lang/CharSequence;)I

    move-result v2

    .line 1366
    iget-boolean v6, p0, Lcom/meizu/widget/RecipientEdit;->mIsSaveHistory:Z

    if-eqz v6, :cond_4

    if-eqz v5, :cond_4

    .line 1367
    iget-object v6, p0, Lcom/meizu/widget/RecipientEdit;->mHistoryEntries:Ljava/util/ArrayList;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ";"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1381
    .restart local v4       #state:Lcom/meizu/widget/RecipientStateInfo$SipState;
    :cond_8
    if-eqz v5, :cond_b

    .line 1382
    iget-boolean v6, p0, Lcom/meizu/widget/RecipientEdit;->mCheckSipDestAddr:Z

    if-eqz v6, :cond_a

    iget-object v6, p0, Lcom/meizu/widget/RecipientEdit;->mSipDestChecker:Lcom/meizu/widget/RecipientStateInfo$SipDestChecker;

    if-eqz v6, :cond_a

    iget-object v6, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientNotSip:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 1383
    iget-object v6, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientState:Ljava/util/HashMap;

    sget-object v8, Lcom/meizu/widget/RecipientStateInfo$SipState;->SIP_CHECKING:Lcom/meizu/widget/RecipientStateInfo$SipState;

    invoke-virtual {v6, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1384
    iget-object v6, p0, Lcom/meizu/widget/RecipientEdit;->mCheckingRecipient:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1385
    iget-object v6, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientHandler:Lcom/meizu/widget/RecipientEdit$RecipientHandler;

    invoke-virtual {v6, v7, v1}, Lcom/meizu/widget/RecipientEdit$RecipientHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 1386
    invoke-direct {p0}, Lcom/meizu/widget/RecipientEdit;->beginCheck()V

    :cond_9
    :goto_3
    move v6, v7

    .line 1396
    goto/16 :goto_0

    .line 1388
    :cond_a
    iget-object v6, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientState:Ljava/util/HashMap;

    sget-object v8, Lcom/meizu/widget/RecipientStateInfo$SipState;->SIP_UNCHECK:Lcom/meizu/widget/RecipientStateInfo$SipState;

    invoke-virtual {v6, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 1391
    :cond_b
    iget-object v6, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientNotSip:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1392
    iget-object v6, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientNotSip:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ne v6, v7, :cond_9

    iget-object v6, p0, Lcom/meizu/widget/RecipientEdit;->mOnSipStateChangedListener:Lcom/meizu/widget/RecipientStateInfo$OnSipStateChangedListener;

    if-eqz v6, :cond_9

    .line 1393
    iget-object v6, p0, Lcom/meizu/widget/RecipientEdit;->mOnSipStateChangedListener:Lcom/meizu/widget/RecipientStateInfo$OnSipStateChangedListener;

    sget-object v8, Lcom/meizu/widget/RecipientStateInfo$SipState;->SIP_NO:Lcom/meizu/widget/RecipientStateInfo$SipState;

    invoke-interface {v6, p0, v8}, Lcom/meizu/widget/RecipientStateInfo$OnSipStateChangedListener;->onSipStateChanged(Landroid/view/View;Lcom/meizu/widget/RecipientStateInfo$SipState;)V

    goto :goto_3
.end method

.method private beginCheck()V
    .locals 1

    .prologue
    .line 2238
    iget-boolean v0, p0, Lcom/meizu/widget/RecipientEdit;->mBeginSipCheck:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit;->mOnSipCheckerBehaviorListener:Lcom/meizu/widget/RecipientStateInfo$OnSipCheckerBehaviorListener;

    if-eqz v0, :cond_0

    .line 2239
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/widget/RecipientEdit;->mBeginSipCheck:Z

    .line 2240
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit;->mOnSipCheckerBehaviorListener:Lcom/meizu/widget/RecipientStateInfo$OnSipCheckerBehaviorListener;

    invoke-interface {v0, p0}, Lcom/meizu/widget/RecipientStateInfo$OnSipCheckerBehaviorListener;->beginCheck(Landroid/view/View;)V

    .line 2242
    :cond_0
    return-void
.end method

.method private changeViewPos(Lcom/meizu/widget/RecipientEdit$DragInfo;II)I
    .locals 19
    .parameter "dragInfo"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 594
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/RecipientEdit;->mRecipientScrollView:Landroid/widget/ScrollView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/ScrollView;->getLeft()I

    move-result v17

    sub-int p2, p2, v17

    .line 595
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/RecipientEdit;->mRecipientScrollView:Landroid/widget/ScrollView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/ScrollView;->getTop()I

    move-result v17

    sub-int p3, p3, v17

    .line 597
    move-object/from16 v0, p1

    iget v0, v0, Lcom/meizu/widget/RecipientEdit$DragInfo;->mOffSetX:I

    move/from16 v17, v0

    sub-int v10, p2, v17

    .line 598
    .local v10, left:I
    move-object/from16 v0, p1

    iget v0, v0, Lcom/meizu/widget/RecipientEdit$DragInfo;->mOffSetY:I

    move/from16 v17, v0

    sub-int v15, p3, v17

    .line 599
    .local v15, top:I
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/meizu/widget/RecipientEdit$DragInfo;->mDragView:Lcom/meizu/widget/RecipientEdit$ItemView;

    move-object/from16 v16, v0

    .line 600
    .local v16, v:Landroid/view/View;
    new-instance v14, Landroid/graphics/Rect;

    invoke-virtual/range {v16 .. v16}, Lcom/meizu/widget/RecipientEdit$ItemView;->getWidth()I

    move-result v17

    add-int v17, v17, v10

    invoke-virtual/range {v16 .. v16}, Lcom/meizu/widget/RecipientEdit$ItemView;->getHeight()I

    move-result v18

    add-int v18, v18, v15

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v14, v10, v15, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 601
    .local v14, shadowFrame:Landroid/graphics/Rect;
    invoke-virtual {v14}, Landroid/graphics/Rect;->centerX()I

    move-result v12

    .line 602
    .local v12, shadowCenterX:I
    invoke-virtual {v14}, Landroid/graphics/Rect;->centerY()I

    move-result v13

    .line 604
    .local v13, shadowCenterY:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/RecipientEdit;->mRecipientLayout:Landroid/widget/AbsoluteLayout;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/AbsoluteLayout;->indexOfChild(Landroid/view/View;)I

    move-result v9

    .line 605
    .local v9, lastIndex:I
    const/4 v8, -0x1

    .line 606
    .local v8, index:I
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 607
    .local v6, frame:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/RecipientEdit;->mRecipientLayout:Landroid/widget/AbsoluteLayout;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/AbsoluteLayout;->getChildCount()I

    move-result v5

    .line 608
    .local v5, count:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    if-ge v7, v5, :cond_1

    .line 609
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/RecipientEdit;->mRecipientLayout:Landroid/widget/AbsoluteLayout;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Landroid/widget/AbsoluteLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 610
    .local v4, child:Landroid/view/View;
    invoke-virtual {v4, v6}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 611
    invoke-virtual {v6}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    .line 612
    .local v2, centerX:I
    invoke-virtual {v6}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    .line 613
    .local v3, centerY:I
    invoke-virtual {v6, v12, v13}, Landroid/graphics/Rect;->contains(II)Z

    move-result v17

    if-nez v17, :cond_0

    invoke-virtual {v14, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 615
    :cond_0
    if-ge v2, v12, :cond_6

    .line 616
    add-int/lit8 v8, v7, 0x1

    .line 630
    .end local v2           #centerX:I
    .end local v3           #centerY:I
    .end local v4           #child:Landroid/view/View;
    :cond_1
    :goto_1
    if-nez v8, :cond_a

    .line 631
    const/4 v8, 0x1

    .line 636
    :cond_2
    :goto_2
    if-lez v9, :cond_3

    if-ge v9, v8, :cond_3

    .line 637
    add-int/lit8 v8, v8, -0x1

    .line 640
    :cond_3
    if-gez v9, :cond_4

    if-gez v8, :cond_4

    .line 641
    add-int/lit8 v8, v5, -0x1

    .line 644
    :cond_4
    if-lez v8, :cond_b

    if-eq v8, v9, :cond_b

    .line 645
    invoke-virtual/range {v16 .. v16}, Lcom/meizu/widget/RecipientEdit$ItemView;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    check-cast v11, Landroid/view/ViewGroup;

    .line 646
    .local v11, oldParent:Landroid/view/ViewGroup;
    if-eqz v11, :cond_5

    .line 647
    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 650
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/RecipientEdit;->mRecipientLayout:Landroid/widget/AbsoluteLayout;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v8}, Landroid/widget/AbsoluteLayout;->addView(Landroid/view/View;I)V

    .line 654
    .end local v8           #index:I
    .end local v11           #oldParent:Landroid/view/ViewGroup;
    :goto_3
    return v8

    .line 618
    .restart local v2       #centerX:I
    .restart local v3       #centerY:I
    .restart local v4       #child:Landroid/view/View;
    .restart local v8       #index:I
    :cond_6
    move v8, v7

    .line 620
    goto :goto_1

    .line 621
    :cond_7
    iget v0, v6, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v14, v0, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 622
    move v8, v7

    .line 623
    goto :goto_1

    .line 624
    :cond_8
    iget v0, v6, Landroid/graphics/Rect;->right:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v14, v0, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v17

    if-eqz v17, :cond_9

    .line 625
    add-int/lit8 v8, v7, 0x1

    .line 626
    goto :goto_1

    .line 608
    :cond_9
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 632
    .end local v2           #centerX:I
    .end local v3           #centerY:I
    .end local v4           #child:Landroid/view/View;
    :cond_a
    if-ne v8, v5, :cond_2

    .line 633
    add-int/lit8 v8, v5, -0x1

    goto :goto_2

    :cond_b
    move v8, v9

    .line 654
    goto :goto_3
.end method

.method private endCheck()V
    .locals 1

    .prologue
    .line 2245
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit;->mCheckingRecipient:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/meizu/widget/RecipientEdit;->mBeginSipCheck:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit;->mOnSipCheckerBehaviorListener:Lcom/meizu/widget/RecipientStateInfo$OnSipCheckerBehaviorListener;

    if-eqz v0, :cond_0

    .line 2247
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/widget/RecipientEdit;->mBeginSipCheck:Z

    .line 2248
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit;->mOnSipCheckerBehaviorListener:Lcom/meizu/widget/RecipientStateInfo$OnSipCheckerBehaviorListener;

    invoke-interface {v0, p0}, Lcom/meizu/widget/RecipientStateInfo$OnSipCheckerBehaviorListener;->endCheck(Landroid/view/View;)V

    .line 2250
    :cond_0
    return-void
.end method

.method private goContactDetail(Ljava/lang/String;Ljava/lang/String;)V
    .locals 16
    .parameter "phoneOrEmail"
    .parameter "displayName"

    .prologue
    .line 760
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/widget/RecipientEdit;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 761
    .local v1, resolver:Landroid/content/ContentResolver;
    sget-object v3, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 763
    .local v2, uriP:Landroid/net/Uri;
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v3, v5

    const/4 v5, 0x1

    const-string v6, "lookup"

    aput-object v6, v3, v5

    const/4 v5, 0x2

    const-string v6, "number"

    aput-object v6, v3, v5

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 766
    .local v12, cursor:Landroid/database/Cursor;
    if-eqz v12, :cond_0

    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_2

    .line 767
    :cond_0
    if-eqz v12, :cond_1

    .line 768
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 769
    const/4 v12, 0x0

    .line 772
    :cond_1
    sget-object v3, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 774
    .local v4, uriE:Landroid/net/Uri;
    const/4 v3, 0x3

    new-array v5, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v6, "contact_id"

    aput-object v6, v5, v3

    const/4 v3, 0x1

    const-string v6, "lookup"

    aput-object v6, v5, v3

    const/4 v3, 0x2

    const-string v6, "data1"

    aput-object v6, v5, v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v1

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 779
    .end local v4           #uriE:Landroid/net/Uri;
    :cond_2
    const/4 v15, 0x0

    .line 780
    .local v15, lookupUri:Landroid/net/Uri;
    if-eqz v12, :cond_5

    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 781
    const/4 v3, 0x0

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 782
    .local v10, contactId:J
    const/4 v3, 0x1

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 784
    .local v14, lookupKey:Ljava/lang/String;
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v3

    const/4 v5, 0x1

    if-le v3, v5, :cond_4

    const/4 v3, 0x2

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 785
    :cond_3
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 786
    const/4 v3, 0x2

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 787
    const/4 v3, 0x0

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 788
    const/4 v3, 0x1

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 794
    :cond_4
    invoke-static {v10, v11, v14}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    .line 797
    .end local v10           #contactId:J
    .end local v14           #lookupKey:Ljava/lang/String;
    :cond_5
    if-eqz v12, :cond_6

    .line 798
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 801
    :cond_6
    const/4 v13, 0x0

    .line 802
    .local v13, intent:Landroid/content/Intent;
    if-eqz v15, :cond_8

    .line 804
    new-instance v13, Landroid/content/Intent;

    .end local v13           #intent:Landroid/content/Intent;
    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v13, v3, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 815
    .restart local v13       #intent:Landroid/content/Intent;
    :goto_0
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 816
    .local v9, bundle:Landroid/os/Bundle;
    invoke-direct/range {p0 .. p1}, Lcom/meizu/widget/RecipientEdit;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 818
    const-string v3, "phone"

    move-object/from16 v0, p1

    invoke-virtual {v9, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 819
    const-string v3, "data"

    move-object/from16 v0, p2

    invoke-virtual {v9, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 820
    const-string v3, "android.intent.action.INSERT"

    const-string v5, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v9, v3, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 827
    :goto_1
    invoke-virtual {v13, v9}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 829
    const/high16 v3, 0x8

    invoke-virtual {v13, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 830
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/widget/RecipientEdit;->mContext:Landroid/content/Context;

    instance-of v3, v3, Landroid/app/Activity;

    if-nez v3, :cond_7

    .line 831
    const/high16 v3, 0x5000

    invoke-virtual {v13, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 833
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/widget/RecipientEdit;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v13}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 834
    return-void

    .line 807
    .end local v9           #bundle:Landroid/os/Bundle;
    :cond_8
    new-instance v13, Landroid/content/Intent;

    .end local v13           #intent:Landroid/content/Intent;
    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v13, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 808
    .restart local v13       #intent:Landroid/content/Intent;
    invoke-direct/range {p0 .. p1}, Lcom/meizu/widget/RecipientEdit;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 809
    const-string v3, "vnd.android.cursor.item/phone_contact"

    invoke-virtual {v13, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 811
    :cond_9
    const-string v3, "vnd.android.cursor.item/email_contact"

    invoke-virtual {v13, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 823
    .restart local v9       #bundle:Landroid/os/Bundle;
    :cond_a
    const-string v3, "email"

    move-object/from16 v0, p1

    invoke-virtual {v9, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 824
    const-string v3, "data"

    move-object/from16 v0, p2

    invoke-virtual {v9, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 825
    const-string v3, "android.intent.action.INSERT"

    const-string v5, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v9, v3, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private initRecipientEdit()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 227
    iput-boolean v3, p0, Lcom/meizu/widget/RecipientEdit;->mBtnVisibility:Z

    .line 228
    iput-boolean v3, p0, Lcom/meizu/widget/RecipientEdit;->mIsFirstLayout:Z

    .line 229
    iput-boolean v4, p0, Lcom/meizu/widget/RecipientEdit;->mIsSaveHistory:Z

    .line 230
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientDataList:Ljava/util/ArrayList;

    .line 231
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientMap:Ljava/util/HashMap;

    .line 232
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientState:Ljava/util/HashMap;

    .line 233
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mSipVersion:Ljava/util/HashMap;

    .line 234
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientNotSip:Ljava/util/ArrayList;

    .line 235
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mCheckingRecipient:Ljava/util/ArrayList;

    .line 236
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mHistoryEntries:Ljava/util/ArrayList;

    .line 238
    invoke-virtual {p0, p0}, Lcom/meizu/widget/RecipientEdit;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 239
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mContext:Landroid/content/Context;

    const v2, 0x10900be

    invoke-static {v1, v2, p0}, Lcom/meizu/widget/RecipientEdit;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 241
    const v1, 0x10203a6

    invoke-virtual {p0, v1}, Lcom/meizu/widget/RecipientEdit;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    iput-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientScrollView:Landroid/widget/ScrollView;

    .line 242
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v1, v3}, Landroid/widget/ScrollView;->setOverScrollMode(I)V

    .line 243
    const v1, 0x10203a7

    invoke-virtual {p0, v1}, Lcom/meizu/widget/RecipientEdit;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/AbsoluteLayout;

    iput-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientLayout:Landroid/widget/AbsoluteLayout;

    .line 244
    const v1, 0x10203a8

    invoke-virtual {p0, v1}, Lcom/meizu/widget/RecipientEdit;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mHintView:Landroid/widget/TextView;

    .line 245
    const v1, 0x10203a9

    invoke-virtual {p0, v1}, Lcom/meizu/widget/RecipientEdit;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    iput-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    .line 246
    const v1, 0x10203aa

    invoke-virtual {p0, v1}, Lcom/meizu/widget/RecipientEdit;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mAddContactsBtn:Landroid/widget/ImageButton;

    .line 247
    const v1, 0x10203ab

    invoke-virtual {p0, v1}, Lcom/meizu/widget/RecipientEdit;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mHintView2:Landroid/widget/TextView;

    .line 248
    const v1, 0x10203ac

    invoke-virtual {p0, v1}, Lcom/meizu/widget/RecipientEdit;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mDisplayNameView:Landroid/widget/TextView;

    .line 249
    const v1, 0x10203ad

    invoke-virtual {p0, v1}, Lcom/meizu/widget/RecipientEdit;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mCountView:Landroid/widget/TextView;

    .line 251
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientLayout:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v1, v3}, Landroid/widget/AbsoluteLayout;->setClickable(Z)V

    .line 252
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientLayout:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v1, p0}, Landroid/widget/AbsoluteLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 253
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mDisplayNameView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEllipsisSmall(Z)V

    .line 255
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mHintStr:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 256
    invoke-virtual {p0}, Lcom/meizu/widget/RecipientEdit;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040575

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mHintStr:Ljava/lang/String;

    .line 258
    :cond_0
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mHintView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit;->mHintStr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 259
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mHintView2:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit;->mHintStr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 261
    new-instance v0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;

    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;-><init>(Lcom/meizu/widget/RecipientEdit;Landroid/content/Context;)V

    .line 262
    .local v0, adapter:Lcom/meizu/widget/RecipientEdit$RecipientAdapter;
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v1, v0}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 263
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {p0}, Lcom/meizu/widget/RecipientEdit;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->setDropDownAnchor(I)V

    .line 264
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v1, v4}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->setDropDownAnimationStyle(I)V

    .line 265
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    const v2, 0x106007b

    invoke-virtual {v1, v2}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->setDropDownBackgroundResource(I)V

    .line 266
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v1, v3}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->keepInputMethodNeeded(Z)V

    .line 267
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v2}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 268
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit;->mWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v1, v2}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 269
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v1, p0}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 270
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v1, p0}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 271
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v1, v3}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->setForceIgnoreOutsideTouch(Z)V

    .line 272
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    new-instance v2, Lcom/meizu/widget/RecipientEdit$1;

    invoke-direct {v2, p0}, Lcom/meizu/widget/RecipientEdit$1;-><init>(Lcom/meizu/widget/RecipientEdit;)V

    invoke-virtual {v1, v2}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->setOnKeyPreImeListener(Landroid/widget/EditText$OnKeyPreImeListener;)V

    .line 281
    iget v1, p0, Lcom/meizu/widget/RecipientEdit;->mInputType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 282
    const v1, 0x1080629

    invoke-virtual {p0, v1}, Lcom/meizu/widget/RecipientEdit;->setBackgroundResource(I)V

    .line 283
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    const/16 v2, 0x21

    invoke-virtual {v1, v2}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->setInputType(I)V

    .line 291
    :goto_0
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "default_input_method"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mLastInputMethod:Ljava/lang/String;

    .line 295
    invoke-super {p0, v4}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 296
    invoke-super {p0, v4}, Landroid/widget/FrameLayout;->setFocusableInTouchMode(Z)V

    .line 297
    invoke-virtual {p0, v3}, Lcom/meizu/widget/RecipientEdit;->setFocusable(Z)V

    .line 298
    invoke-virtual {p0, v3}, Lcom/meizu/widget/RecipientEdit;->setFocusableInTouchMode(Z)V

    .line 299
    return-void

    .line 286
    :cond_1
    const v1, 0x108062a

    invoke-virtual {p0, v1}, Lcom/meizu/widget/RecipientEdit;->setBackgroundResource(I)V

    .line 287
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    const/16 v2, 0xb1

    invoke-virtual {v1, v2}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->setInputType(I)V

    goto :goto_0
.end method

.method private isDefaultInputMethod()Z
    .locals 3

    .prologue
    .line 362
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "default_input_method"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 365
    .local v0, lastInputMethodId:Ljava/lang/String;
    const-string v1, "com.meizu.input/.MzInputService"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    return v1
.end method

.method private isPhoneNumber(Ljava/lang/String;)Z
    .locals 2
    .parameter "number"

    .prologue
    .line 1540
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1541
    const/4 v1, 0x0

    .line 1545
    :goto_0
    return v1

    .line 1544
    :cond_0
    sget-object v1, Lcom/meizu/widget/RecipientEdit;->PHONE:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1545
    .local v0, match:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    goto :goto_0
.end method

.method private isValidRecipient(Ljava/lang/String;)Z
    .locals 2
    .parameter "number"

    .prologue
    const/4 v0, 0x0

    .line 1519
    iget v1, p0, Lcom/meizu/widget/RecipientEdit;->mInputType:I

    packed-switch v1, :pswitch_data_0

    .line 1530
    :cond_0
    :goto_0
    return v0

    .line 1521
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/meizu/widget/RecipientEdit;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p1}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 1524
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/meizu/widget/RecipientEdit;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 1527
    :pswitch_2
    invoke-static {p1}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 1519
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private layoutChildren()V
    .locals 15

    .prologue
    .line 1076
    iget-object v13, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientLayout:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v13}, Landroid/widget/AbsoluteLayout;->getMeasuredWidth()I

    move-result v13

    if-nez v13, :cond_0

    .line 1077
    invoke-virtual {p0}, Lcom/meizu/widget/RecipientEdit;->getMeasuredWidth()I

    move-result v13

    const/high16 v14, 0x4000

    invoke-static {v13, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 1079
    .local v10, widthMeasureSpec:I
    invoke-virtual {p0}, Lcom/meizu/widget/RecipientEdit;->getMeasuredHeight()I

    move-result v13

    const/high16 v14, 0x4000

    invoke-static {v13, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 1081
    .local v2, heightMeasureSpec:I
    invoke-virtual {p0, v10, v2}, Lcom/meizu/widget/RecipientEdit;->measure(II)V

    .line 1084
    .end local v2           #heightMeasureSpec:I
    .end local v10           #widthMeasureSpec:I
    :cond_0
    const/4 v11, 0x0

    .line 1085
    .local v11, x:I
    const/4 v12, 0x0

    .line 1086
    .local v12, y:I
    const/16 v8, 0x3c

    .line 1088
    .local v8, minLen:I
    iget-object v13, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientLayout:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v13}, Landroid/widget/AbsoluteLayout;->getChildCount()I

    move-result v1

    .line 1089
    .local v1, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_5

    .line 1090
    iget-object v13, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientLayout:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v13, v3}, Landroid/widget/AbsoluteLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1091
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v13

    const/16 v14, 0x8

    if-ne v13, v14, :cond_1

    .line 1089
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1095
    :cond_1
    const/4 v13, 0x1

    if-ne v3, v13, :cond_2

    const/4 v13, 0x2

    if-le v1, v13, :cond_2

    .line 1096
    iget-object v13, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientLayout:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v13}, Landroid/widget/AbsoluteLayout;->getMeasuredWidth()I

    move-result v13

    sub-int v7, v13, v11

    .line 1097
    .local v7, max:I
    instance-of v13, v0, Lcom/meizu/widget/RecipientEdit$ItemView;

    if-eqz v13, :cond_2

    move-object v13, v0

    .line 1098
    check-cast v13, Lcom/meizu/widget/RecipientEdit$ItemView;

    invoke-virtual {v13}, Lcom/meizu/widget/RecipientEdit$ItemView;->getView()Landroid/widget/TextView;

    move-result-object v13

    invoke-virtual {v13, v7}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 1102
    .end local v7           #max:I
    :cond_2
    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v0, v13, v14}, Landroid/view/View;->measure(II)V

    .line 1104
    add-int/lit8 v13, v1, -0x1

    if-ne v3, v13, :cond_4

    .line 1105
    add-int v9, v11, v8

    .line 1110
    .local v9, width:I
    :goto_2
    iget-object v13, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientLayout:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v13}, Landroid/widget/AbsoluteLayout;->getMeasuredWidth()I

    move-result v13

    if-le v9, v13, :cond_3

    const/4 v13, 0x1

    if-le v3, v13, :cond_3

    .line 1111
    const/4 v11, 0x0

    .line 1112
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    add-int/2addr v12, v13

    .line 1115
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/AbsoluteLayout$LayoutParams;

    .line 1116
    .local v5, lp:Landroid/widget/AbsoluteLayout$LayoutParams;
    iput v11, v5, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    .line 1117
    iput v12, v5, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    .line 1120
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    add-int/2addr v11, v13

    goto :goto_1

    .line 1107
    .end local v5           #lp:Landroid/widget/AbsoluteLayout$LayoutParams;
    .end local v9           #width:I
    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    add-int v9, v11, v13

    .restart local v9       #width:I
    goto :goto_2

    .line 1123
    .end local v0           #child:Landroid/view/View;
    .end local v9           #width:I
    :cond_5
    iget-object v13, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v13}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/AbsoluteLayout$LayoutParams;

    .line 1125
    .local v6, lpEditText:Landroid/widget/AbsoluteLayout$LayoutParams;
    iget-object v13, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientLayout:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v13}, Landroid/widget/AbsoluteLayout;->getMeasuredWidth()I

    move-result v13

    iget v14, v6, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    sub-int/2addr v13, v14

    iput v13, p0, Lcom/meizu/widget/RecipientEdit;->mEditMaxWidth:I

    .line 1126
    iget v13, p0, Lcom/meizu/widget/RecipientEdit;->mEditMaxWidth:I

    if-lez v13, :cond_6

    iget v8, p0, Lcom/meizu/widget/RecipientEdit;->mEditMaxWidth:I

    .end local v8           #minLen:I
    :cond_6
    iput v8, p0, Lcom/meizu/widget/RecipientEdit;->mEditMaxWidth:I

    .line 1127
    iget-object v13, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    iget v14, p0, Lcom/meizu/widget/RecipientEdit;->mEditMaxWidth:I

    invoke-virtual {v13, v14}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->setWidth(I)V

    .line 1129
    invoke-virtual {p0}, Lcom/meizu/widget/RecipientEdit;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 1130
    .local v4, layoutParams:Landroid/view/ViewGroup$LayoutParams;
    iget-boolean v13, p0, Lcom/meizu/widget/RecipientEdit;->mInDrag:Z

    if-eqz v13, :cond_8

    .line 1131
    const/4 v13, -0x2

    iput v13, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1146
    :cond_7
    :goto_3
    return-void

    .line 1132
    :cond_8
    iget v13, p0, Lcom/meizu/widget/RecipientEdit;->mMaxHeight:I

    if-lez v13, :cond_7

    .line 1133
    invoke-virtual {p0}, Lcom/meizu/widget/RecipientEdit;->getMeasuredWidth()I

    move-result v13

    const/high16 v14, 0x4000

    invoke-static {v13, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 1135
    .restart local v10       #widthMeasureSpec:I
    const/4 v13, -0x2

    const/high16 v14, 0x4000

    invoke-static {v13, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 1137
    .restart local v2       #heightMeasureSpec:I
    invoke-virtual {p0, v10, v2}, Lcom/meizu/widget/RecipientEdit;->measure(II)V

    .line 1139
    invoke-virtual {p0}, Lcom/meizu/widget/RecipientEdit;->getMeasuredHeight()I

    move-result v13

    iget v14, p0, Lcom/meizu/widget/RecipientEdit;->mMaxHeight:I

    if-lt v13, v14, :cond_9

    .line 1140
    iget v13, p0, Lcom/meizu/widget/RecipientEdit;->mMaxHeight:I

    iput v13, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_3

    .line 1142
    :cond_9
    const/4 v13, -0x2

    iput v13, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_3
.end method

.method private queryDisplayName(Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .parameter "number"

    .prologue
    .line 1400
    const-string v13, ""

    .line 1401
    .local v13, displayName:Ljava/lang/String;
    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1402
    .local v0, resolver:Landroid/content/ContentResolver;
    const/4 v12, 0x0

    .line 1404
    .local v12, cursor:Landroid/database/Cursor;
    iget v2, p0, Lcom/meizu/widget/RecipientEdit;->mInputType:I

    packed-switch v2, :pswitch_data_0

    .line 1442
    :cond_0
    :goto_0
    if-eqz v12, :cond_2

    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1443
    const/4 v2, 0x0

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 1444
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v2

    const/4 v4, 0x1

    if-le v2, v4, :cond_2

    const/4 v2, 0x1

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1445
    :cond_1
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1446
    const/4 v2, 0x1

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1447
    const/4 v2, 0x0

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 1454
    :cond_2
    if-eqz v12, :cond_3

    .line 1455
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 1458
    :cond_3
    return-object v13

    .line 1406
    :pswitch_0
    sget-object v2, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1408
    .local v1, uriP:Landroid/net/Uri;
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v6, "display_name"

    aput-object v6, v2, v4

    const/4 v4, 0x1

    const-string v6, "number"

    aput-object v6, v2, v4

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 1411
    if-eqz v12, :cond_4

    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_0

    .line 1412
    :cond_4
    if-eqz v12, :cond_5

    .line 1413
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 1414
    const/4 v12, 0x0

    .line 1417
    :cond_5
    sget-object v2, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1419
    .local v3, uriE:Landroid/net/Uri;
    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v6, "display_name"

    aput-object v6, v4, v2

    const/4 v2, 0x1

    const-string v6, "data1"

    aput-object v6, v4, v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 1422
    goto/16 :goto_0

    .line 1426
    .end local v1           #uriP:Landroid/net/Uri;
    .end local v3           #uriE:Landroid/net/Uri;
    :pswitch_1
    sget-object v2, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 1428
    .local v5, uriPhone:Landroid/net/Uri;
    const/4 v2, 0x2

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v4, "display_name"

    aput-object v4, v6, v2

    const/4 v2, 0x1

    const-string v4, "number"

    aput-object v4, v6, v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 1431
    goto/16 :goto_0

    .line 1434
    .end local v5           #uriPhone:Landroid/net/Uri;
    :pswitch_2
    sget-object v2, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 1436
    .local v7, uriEmail:Landroid/net/Uri;
    const/4 v2, 0x2

    new-array v8, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v4, "display_name"

    aput-object v4, v8, v2

    const/4 v2, 0x1

    const-string v4, "data1"

    aput-object v4, v8, v2

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v6, v0

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    goto/16 :goto_0

    .line 1404
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private refreshLayout(Z)V
    .locals 11
    .parameter "hasFocus"

    .prologue
    const/4 v8, -0x2

    const/4 v10, 0x0

    const/16 v9, 0x8

    .line 422
    if-nez p1, :cond_0

    iget-boolean v7, p0, Lcom/meizu/widget/RecipientEdit;->mInDrag:Z

    if-eqz v7, :cond_1

    .line 423
    :cond_0
    iget-object v7, p0, Lcom/meizu/widget/RecipientEdit;->mAddContactsBtn:Landroid/widget/ImageButton;

    invoke-virtual {v7, v10}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 424
    iget-object v7, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v7, v10}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 425
    iget-object v7, p0, Lcom/meizu/widget/RecipientEdit;->mHintView2:Landroid/widget/TextView;

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 426
    iget-object v7, p0, Lcom/meizu/widget/RecipientEdit;->mDisplayNameView:Landroid/widget/TextView;

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 427
    iget-object v7, p0, Lcom/meizu/widget/RecipientEdit;->mCountView:Landroid/widget/TextView;

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 428
    invoke-direct {p0}, Lcom/meizu/widget/RecipientEdit;->layoutChildren()V

    .line 470
    :goto_0
    return-void

    .line 430
    :cond_1
    invoke-virtual {p0}, Lcom/meizu/widget/RecipientEdit;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 431
    .local v4, layoutParams:Landroid/view/ViewGroup$LayoutParams;
    iget v7, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v7, v8, :cond_2

    .line 432
    iput v8, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 433
    invoke-virtual {p0, v4}, Lcom/meizu/widget/RecipientEdit;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 436
    :cond_2
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 437
    .local v1, displayNames:Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .line 438
    .local v2, i:I
    iget-object v7, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientDataList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 439
    .local v6, number:Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    .line 440
    iget-object v7, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientMap:Ljava/util/HashMap;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 441
    .local v5, name:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 442
    move-object v5, v6

    .line 444
    :cond_4
    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 445
    const/16 v7, 0x14

    if-lt v2, v7, :cond_3

    .line 450
    .end local v5           #name:Ljava/lang/String;
    .end local v6           #number:Ljava/lang/String;
    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    if-lez v7, :cond_6

    .line 451
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x2

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 454
    :cond_6
    iget-object v7, p0, Lcom/meizu/widget/RecipientEdit;->mDisplayNameView:Landroid/widget/TextView;

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 455
    iget-object v7, p0, Lcom/meizu/widget/RecipientEdit;->mDisplayNameView:Landroid/widget/TextView;

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 456
    iget-object v7, p0, Lcom/meizu/widget/RecipientEdit;->mHintView2:Landroid/widget/TextView;

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 458
    invoke-virtual {p0}, Lcom/meizu/widget/RecipientEdit;->getRecipientCount()I

    move-result v0

    .line 459
    .local v0, count:I
    const/4 v7, 0x1

    if-le v0, v7, :cond_7

    .line 460
    iget-object v7, p0, Lcom/meizu/widget/RecipientEdit;->mCountView:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 461
    iget-object v7, p0, Lcom/meizu/widget/RecipientEdit;->mCountView:Landroid/widget/TextView;

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 467
    :goto_1
    iget-object v7, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v7, v9}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 468
    iget-object v7, p0, Lcom/meizu/widget/RecipientEdit;->mAddContactsBtn:Landroid/widget/ImageButton;

    invoke-virtual {v7, v9}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/16 :goto_0

    .line 463
    :cond_7
    iget-object v7, p0, Lcom/meizu/widget/RecipientEdit;->mCountView:Landroid/widget/TextView;

    const-string v8, ""

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 464
    iget-object v7, p0, Lcom/meizu/widget/RecipientEdit;->mCountView:Landroid/widget/TextView;

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method private refreshSipDestState()V
    .locals 5

    .prologue
    .line 2253
    invoke-virtual {p0}, Lcom/meizu/widget/RecipientEdit;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2254
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientLayout:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v3}, Landroid/widget/AbsoluteLayout;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_1

    .line 2255
    iget-object v3, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientDataList:Ljava/util/ArrayList;

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2256
    .local v1, number:Ljava/lang/String;
    iget-object v3, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientState:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/meizu/widget/RecipientStateInfo$SipState;

    .line 2257
    .local v2, state:Lcom/meizu/widget/RecipientStateInfo$SipState;
    iget-boolean v3, p0, Lcom/meizu/widget/RecipientEdit;->mCheckSipDestAddr:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientNotSip:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    .line 2258
    sget-object v3, Lcom/meizu/widget/RecipientStateInfo$SipState;->SIP_UNCHECK:Lcom/meizu/widget/RecipientStateInfo$SipState;

    if-ne v2, v3, :cond_0

    iget-object v3, p0, Lcom/meizu/widget/RecipientEdit;->mSipDestChecker:Lcom/meizu/widget/RecipientStateInfo$SipDestChecker;

    if-eqz v3, :cond_0

    .line 2259
    iget-object v3, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientState:Ljava/util/HashMap;

    sget-object v4, Lcom/meizu/widget/RecipientStateInfo$SipState;->SIP_CHECKING:Lcom/meizu/widget/RecipientStateInfo$SipState;

    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2260
    iget-object v3, p0, Lcom/meizu/widget/RecipientEdit;->mCheckingRecipient:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2261
    iget-object v3, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientHandler:Lcom/meizu/widget/RecipientEdit$RecipientHandler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v1}, Lcom/meizu/widget/RecipientEdit$RecipientHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 2262
    invoke-direct {p0}, Lcom/meizu/widget/RecipientEdit;->beginCheck()V

    .line 2254
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2267
    .end local v0           #i:I
    .end local v1           #number:Ljava/lang/String;
    .end local v2           #state:Lcom/meizu/widget/RecipientStateInfo$SipState;
    :cond_1
    return-void
.end method

.method private removeComposingSpan()V
    .locals 6

    .prologue
    .line 369
    iget-object v4, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v4}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v4

    instance-of v4, v4, Landroid/text/Spannable;

    if-eqz v4, :cond_0

    .line 370
    iget-object v4, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v4}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v3

    .line 371
    .local v3, sp:Landroid/text/Spannable;
    invoke-static {v3}, Lcom/android/internal/widget/EditableInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v1

    .line 372
    .local v1, candStart:I
    invoke-static {v3}, Lcom/android/internal/widget/EditableInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v0

    .line 373
    .local v0, candEnd:I
    if-ltz v1, :cond_0

    if-ltz v0, :cond_0

    .line 374
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    invoke-interface {v3, v5, v1}, Landroid/text/Spannable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v3}, Landroid/text/Spannable;->length()I

    move-result v5

    invoke-interface {v3, v0, v5}, Landroid/text/Spannable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 376
    .local v2, dstr:Ljava/lang/String;
    iget-object v4, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v4, v2}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 379
    .end local v0           #candEnd:I
    .end local v1           #candStart:I
    .end local v2           #dstr:Ljava/lang/String;
    .end local v3           #sp:Landroid/text/Spannable;
    :cond_0
    return-void
.end method

.method private removeRecipientAt(IZ)Z
    .locals 8
    .parameter "index"
    .parameter "removeView"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1675
    iget-object v6, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientDataList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1676
    .local v3, size:I
    const/4 v6, -0x1

    if-le p1, v6, :cond_7

    if-ge p1, v3, :cond_7

    .line 1677
    iget-object v6, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientDataList:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1678
    .local v2, removeStr:Ljava/lang/String;
    iget-object v6, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientHandler:Lcom/meizu/widget/RecipientEdit$RecipientHandler;

    if-eqz v6, :cond_0

    .line 1679
    iget-object v6, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientHandler:Lcom/meizu/widget/RecipientEdit$RecipientHandler;

    invoke-virtual {v6, v4, v2}, Lcom/meizu/widget/RecipientEdit$RecipientHandler;->removeMessages(ILjava/lang/Object;)V

    .line 1681
    :cond_0
    iget-object v6, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientMap:Ljava/util/HashMap;

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1682
    iget-object v6, p0, Lcom/meizu/widget/RecipientEdit;->mCheckingRecipient:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1683
    iget-object v6, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientState:Ljava/util/HashMap;

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1684
    iget-object v6, p0, Lcom/meizu/widget/RecipientEdit;->mSipVersion:Ljava/util/HashMap;

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1686
    iget-object v6, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientNotSip:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1687
    iget-boolean v6, p0, Lcom/meizu/widget/RecipientEdit;->mCheckSipDestAddr:Z

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/meizu/widget/RecipientEdit;->mSipDestChecker:Lcom/meizu/widget/RecipientStateInfo$SipDestChecker;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientNotSip:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1688
    iget-object v6, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientState:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1689
    .local v1, number:Ljava/lang/String;
    iget-object v6, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientState:Ljava/util/HashMap;

    invoke-virtual {v6, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    sget-object v7, Lcom/meizu/widget/RecipientStateInfo$SipState;->SIP_UNCHECK:Lcom/meizu/widget/RecipientStateInfo$SipState;

    if-ne v6, v7, :cond_1

    iget-object v6, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientNotSip:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1691
    iget-object v6, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientState:Ljava/util/HashMap;

    sget-object v7, Lcom/meizu/widget/RecipientStateInfo$SipState;->SIP_CHECKING:Lcom/meizu/widget/RecipientStateInfo$SipState;

    invoke-virtual {v6, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1692
    iget-object v6, p0, Lcom/meizu/widget/RecipientEdit;->mCheckingRecipient:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1693
    iget-object v6, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientHandler:Lcom/meizu/widget/RecipientEdit$RecipientHandler;

    invoke-virtual {v6, v4, v1}, Lcom/meizu/widget/RecipientEdit$RecipientHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 1694
    invoke-direct {p0}, Lcom/meizu/widget/RecipientEdit;->beginCheck()V

    goto :goto_0

    .line 1700
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #number:Ljava/lang/String;
    :cond_2
    invoke-static {v2}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1701
    iput-boolean v5, p0, Lcom/meizu/widget/RecipientEdit;->mHasEmail:Z

    .line 1704
    :cond_3
    invoke-direct {p0}, Lcom/meizu/widget/RecipientEdit;->endCheck()V

    .line 1705
    if-eqz p2, :cond_4

    .line 1706
    iget-object v5, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientLayout:Landroid/widget/AbsoluteLayout;

    add-int/lit8 v6, p1, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/AbsoluteLayout;->removeViewAt(I)V

    .line 1707
    invoke-virtual {p0}, Lcom/meizu/widget/RecipientEdit;->hasFocus()Z

    move-result v5

    invoke-direct {p0, v5}, Lcom/meizu/widget/RecipientEdit;->refreshLayout(Z)V

    .line 1710
    :cond_4
    iget-object v5, p0, Lcom/meizu/widget/RecipientEdit;->mOnSipStateChangedListener:Lcom/meizu/widget/RecipientStateInfo$OnSipStateChangedListener;

    if-eqz v5, :cond_5

    .line 1711
    iget-object v5, p0, Lcom/meizu/widget/RecipientEdit;->mOnSipStateChangedListener:Lcom/meizu/widget/RecipientStateInfo$OnSipStateChangedListener;

    invoke-virtual {p0}, Lcom/meizu/widget/RecipientEdit;->getSipState()Lcom/meizu/widget/RecipientStateInfo$SipState;

    move-result-object v6

    invoke-interface {v5, p0, v6}, Lcom/meizu/widget/RecipientStateInfo$OnSipStateChangedListener;->onSipStateChanged(Landroid/view/View;Lcom/meizu/widget/RecipientStateInfo$SipState;)V

    .line 1714
    :cond_5
    iget-object v5, p0, Lcom/meizu/widget/RecipientEdit;->mOnRecipientChangedListener:Lcom/meizu/widget/RecipientEdit$OnRecipientChangedListener;

    if-eqz v5, :cond_6

    .line 1715
    iget-object v5, p0, Lcom/meizu/widget/RecipientEdit;->mOnRecipientChangedListener:Lcom/meizu/widget/RecipientEdit$OnRecipientChangedListener;

    invoke-interface {v5}, Lcom/meizu/widget/RecipientEdit$OnRecipientChangedListener;->OnRecipientChanged()V

    .line 1720
    .end local v2           #removeStr:Ljava/lang/String;
    :cond_6
    :goto_1
    return v4

    :cond_7
    move v4, v5

    goto :goto_1
.end method

.method private removeSpecialCharacter(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "cons"

    .prologue
    .line 1479
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1480
    const-string v4, ""

    .line 1515
    :cond_0
    :goto_0
    return-object v4

    .line 1483
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 1485
    .local v4, str:Ljava/lang/String;
    iget v6, p0, Lcom/meizu/widget/RecipientEdit;->mInputType:I

    const/4 v7, 0x1

    if-eq v6, v7, :cond_2

    iget v6, p0, Lcom/meizu/widget/RecipientEdit;->mInputType:I

    if-nez v6, :cond_6

    :cond_2
    invoke-static {v4}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 1487
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    .line 1488
    .local v2, len:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1490
    .local v3, ret:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_5

    .line 1491
    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1492
    .local v0, c:C
    const/16 v6, 0x20

    if-ne v0, v6, :cond_4

    .line 1490
    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1494
    :cond_4
    const/16 v6, 0x2e

    if-eq v0, v6, :cond_3

    .line 1496
    const/16 v6, 0x2d

    if-eq v0, v6, :cond_3

    .line 1498
    const/16 v6, 0x28

    if-eq v0, v6, :cond_3

    .line 1500
    const/16 v6, 0x29

    if-eq v0, v6, :cond_3

    .line 1503
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1507
    .end local v0           #c:C
    :cond_5
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1508
    goto :goto_0

    .line 1509
    .end local v1           #i:I
    .end local v2           #len:I
    .end local v3           #ret:Ljava/lang/StringBuilder;
    :cond_6
    invoke-static {v4}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v5

    .line 1510
    .local v5, token:[Landroid/text/util/Rfc822Token;
    array-length v6, v5

    if-lez v6, :cond_0

    .line 1511
    const/4 v6, 0x0

    aget-object v6, v5, v6

    invoke-virtual {v6}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private saveHistory()V
    .locals 3

    .prologue
    .line 2177
    iget-boolean v1, p0, Lcom/meizu/widget/RecipientEdit;->mIsSaveHistory:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mHistoryEntries:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 2178
    sget-object v1, Lcom/meizu/widget/RecipientEdit;->sHistoryWorker:Lcom/meizu/widget/RecipientEdit$RecipientWorker;

    if-nez v1, :cond_0

    .line 2179
    new-instance v1, Lcom/meizu/widget/RecipientEdit$RecipientWorker;

    const-string v2, "mz_recipient_history"

    invoke-direct {v1, v2}, Lcom/meizu/widget/RecipientEdit$RecipientWorker;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/meizu/widget/RecipientEdit;->sHistoryWorker:Lcom/meizu/widget/RecipientEdit$RecipientWorker;

    .line 2182
    :cond_0
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mHistoryHandler:Lcom/meizu/widget/RecipientEdit$HistoryHandler;

    if-nez v1, :cond_1

    .line 2183
    sget-object v1, Lcom/meizu/widget/RecipientEdit;->sHistoryWorker:Lcom/meizu/widget/RecipientEdit$RecipientWorker;

    invoke-static {v1}, Lcom/meizu/widget/RecipientEdit$RecipientWorker;->access$104(Lcom/meizu/widget/RecipientEdit$RecipientWorker;)I

    .line 2184
    new-instance v1, Lcom/meizu/widget/RecipientEdit$HistoryHandler;

    sget-object v2, Lcom/meizu/widget/RecipientEdit;->sHistoryWorker:Lcom/meizu/widget/RecipientEdit$RecipientWorker;

    invoke-virtual {v2}, Lcom/meizu/widget/RecipientEdit$RecipientWorker;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/meizu/widget/RecipientEdit$HistoryHandler;-><init>(Lcom/meizu/widget/RecipientEdit;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mHistoryHandler:Lcom/meizu/widget/RecipientEdit$HistoryHandler;

    .line 2187
    :cond_1
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mHistoryHandler:Lcom/meizu/widget/RecipientEdit$HistoryHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/meizu/widget/RecipientEdit$HistoryHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2188
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mHistoryEntries:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit;->mHistoryEntries:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2189
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mHistoryHandler:Lcom/meizu/widget/RecipientEdit$HistoryHandler;

    invoke-virtual {v1, v0}, Lcom/meizu/widget/RecipientEdit$HistoryHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2192
    .end local v0           #msg:Landroid/os/Message;
    :cond_2
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mHistoryEntries:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2193
    return-void
.end method


# virtual methods
.method public addRecipient(Ljava/util/ArrayList;)I
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v6, 0x0

    const/4 v8, 0x1

    .line 1219
    if-nez p1, :cond_0

    move v2, v6

    .line 1256
    :goto_0
    return v2

    .line 1223
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1224
    .local v0, count:I
    const/4 v2, 0x0

    .line 1225
    .local v2, result:I
    const/4 v3, 0x0

    .line 1226
    .local v3, ret:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_4

    .line 1227
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v7, ";"

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1229
    .local v4, str:[Ljava/lang/String;
    array-length v5, v4

    if-le v5, v8, :cond_3

    .line 1230
    aget-object v5, v4, v6

    aget-object v7, v4, v8

    invoke-direct {p0, v5, v7}, Lcom/meizu/widget/RecipientEdit;->addRecipientInternal(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 1235
    :cond_1
    :goto_2
    if-eqz v3, :cond_2

    .line 1236
    add-int/lit8 v2, v2, 0x1

    .line 1226
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1231
    :cond_3
    array-length v5, v4

    if-ne v5, v8, :cond_1

    .line 1232
    aget-object v5, v4, v6

    const/4 v7, 0x0

    invoke-direct {p0, v5, v7}, Lcom/meizu/widget/RecipientEdit;->addRecipientInternal(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    goto :goto_2

    .line 1240
    .end local v4           #str:[Ljava/lang/String;
    :cond_4
    if-lez v2, :cond_7

    .line 1241
    iget-object v5, p0, Lcom/meizu/widget/RecipientEdit;->mOnRecipientChangedListener:Lcom/meizu/widget/RecipientEdit$OnRecipientChangedListener;

    if-eqz v5, :cond_5

    .line 1242
    iget-object v5, p0, Lcom/meizu/widget/RecipientEdit;->mOnRecipientChangedListener:Lcom/meizu/widget/RecipientEdit$OnRecipientChangedListener;

    invoke-interface {v5}, Lcom/meizu/widget/RecipientEdit$OnRecipientChangedListener;->OnRecipientChanged()V

    .line 1245
    :cond_5
    iget-object v5, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientDataList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, v8, :cond_6

    iget-boolean v5, p0, Lcom/meizu/widget/RecipientEdit;->mHasEmail:Z

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/meizu/widget/RecipientEdit;->mOnEmailAddWhenGroupListener:Lcom/meizu/widget/RecipientEdit$OnEmailAddWhenGroupListener;

    if-eqz v5, :cond_6

    .line 1247
    iget-object v5, p0, Lcom/meizu/widget/RecipientEdit;->mOnEmailAddWhenGroupListener:Lcom/meizu/widget/RecipientEdit$OnEmailAddWhenGroupListener;

    invoke-interface {v5}, Lcom/meizu/widget/RecipientEdit$OnEmailAddWhenGroupListener;->OnEmailAddWhenGroup()V

    .line 1250
    :cond_6
    iget-boolean v5, p0, Lcom/meizu/widget/RecipientEdit;->mIsFirstLayout:Z

    if-nez v5, :cond_7

    .line 1251
    invoke-virtual {p0}, Lcom/meizu/widget/RecipientEdit;->hasFocus()Z

    move-result v5

    invoke-direct {p0, v5}, Lcom/meizu/widget/RecipientEdit;->refreshLayout(Z)V

    .line 1255
    :cond_7
    invoke-direct {p0}, Lcom/meizu/widget/RecipientEdit;->saveHistory()V

    goto :goto_0
.end method

.method public addRecipient(Ljava/lang/CharSequence;)Z
    .locals 7
    .parameter "number"

    .prologue
    const/4 v4, 0x0

    .line 1166
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1183
    :cond_0
    :goto_0
    return v4

    .line 1170
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, ";|, "

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1171
    .local v2, numbers:[Ljava/lang/String;
    const/4 v3, 0x0

    .line 1172
    .local v3, ret:I
    array-length v5, v2

    if-lez v5, :cond_3

    .line 1173
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1174
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v5, v2

    if-ge v0, v5, :cond_2

    .line 1175
    aget-object v5, v2, v0

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1174
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1177
    :cond_2
    invoke-virtual {p0, v1}, Lcom/meizu/widget/RecipientEdit;->addRecipient(Ljava/util/ArrayList;)I

    move-result v3

    .line 1180
    .end local v0           #i:I
    .end local v1           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    if-lez v3, :cond_0

    .line 1181
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public addRecipient(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 5
    .parameter "number"
    .parameter "contactName"

    .prologue
    const/4 v2, 0x0

    .line 1194
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1209
    :cond_0
    :goto_0
    return v2

    .line 1198
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1199
    .local v0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1200
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1205
    :goto_1
    invoke-virtual {p0, v0}, Lcom/meizu/widget/RecipientEdit;->addRecipient(Ljava/util/ArrayList;)I

    move-result v1

    .line 1206
    .local v1, ret:I
    if-lez v1, :cond_0

    .line 1207
    const/4 v2, 0x1

    goto :goto_0

    .line 1202
    .end local v1           #ret:I
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public checkSipDestAddress(Z)V
    .locals 2
    .parameter "checked"

    .prologue
    .line 2199
    iput-boolean p1, p0, Lcom/meizu/widget/RecipientEdit;->mCheckSipDestAddr:Z

    .line 2201
    iget-boolean v0, p0, Lcom/meizu/widget/RecipientEdit;->mCheckSipDestAddr:Z

    if-eqz v0, :cond_1

    .line 2202
    sget-object v0, Lcom/meizu/widget/RecipientEdit;->sRecipientWorker:Lcom/meizu/widget/RecipientEdit$RecipientWorker;

    if-nez v0, :cond_0

    .line 2203
    new-instance v0, Lcom/meizu/widget/RecipientEdit$RecipientWorker;

    const-string v1, "mz_recipient_worker"

    invoke-direct {v0, v1}, Lcom/meizu/widget/RecipientEdit$RecipientWorker;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/meizu/widget/RecipientEdit;->sRecipientWorker:Lcom/meizu/widget/RecipientEdit$RecipientWorker;

    .line 2206
    :cond_0
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientHandler:Lcom/meizu/widget/RecipientEdit$RecipientHandler;

    if-nez v0, :cond_1

    .line 2207
    sget-object v0, Lcom/meizu/widget/RecipientEdit;->sRecipientWorker:Lcom/meizu/widget/RecipientEdit$RecipientWorker;

    invoke-static {v0}, Lcom/meizu/widget/RecipientEdit$RecipientWorker;->access$104(Lcom/meizu/widget/RecipientEdit$RecipientWorker;)I

    .line 2208
    new-instance v0, Lcom/meizu/widget/RecipientEdit$RecipientHandler;

    sget-object v1, Lcom/meizu/widget/RecipientEdit;->sRecipientWorker:Lcom/meizu/widget/RecipientEdit$RecipientWorker;

    invoke-virtual {v1}, Lcom/meizu/widget/RecipientEdit$RecipientWorker;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/meizu/widget/RecipientEdit$RecipientHandler;-><init>(Lcom/meizu/widget/RecipientEdit;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientHandler:Lcom/meizu/widget/RecipientEdit$RecipientHandler;

    .line 2211
    :cond_1
    return-void
.end method

.method public closeHistory()V
    .locals 2

    .prologue
    .line 2163
    iget v0, p0, Lcom/meizu/widget/RecipientEdit;->mInputType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 2174
    :goto_0
    return-void

    .line 2167
    :cond_0
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mDbLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2168
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/meizu/widget/RecipientEdit;->mIsSaveHistory:Z

    .line 2169
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit;->mDbHelper:Lcom/meizu/widget/RecipientDbHelper;

    if-eqz v0, :cond_1

    .line 2170
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit;->mDbHelper:Lcom/meizu/widget/RecipientDbHelper;

    invoke-virtual {v0}, Lcom/meizu/widget/RecipientDbHelper;->close()V

    .line 2171
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/widget/RecipientEdit;->mDbHelper:Lcom/meizu/widget/RecipientDbHelper;

    .line 2173
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public completeInput()V
    .locals 3

    .prologue
    .line 1152
    invoke-direct {p0}, Lcom/meizu/widget/RecipientEdit;->removeComposingSpan()V

    .line 1153
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v1}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1154
    .local v0, text:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1155
    invoke-virtual {p0, v0}, Lcom/meizu/widget/RecipientEdit;->addRecipient(Ljava/lang/CharSequence;)Z

    .line 1156
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1158
    :cond_0
    return-void
.end method

.method public containsEmail()Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 1584
    iget-object v4, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientDataList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1585
    .local v2, number:Ljava/lang/String;
    invoke-static {v2}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1595
    .end local v2           #number:Ljava/lang/String;
    :cond_1
    :goto_0
    return v3

    .line 1590
    :cond_2
    iget-object v4, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v4}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/meizu/widget/RecipientEdit;->removeSpecialCharacter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1591
    .local v1, input:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {v1}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1595
    :cond_3
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public dispatchDragEvent(Landroid/view/DragEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 474
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit;->mOnDragListener:Landroid/view/View$OnDragListener;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/meizu/widget/RecipientEdit;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit;->mOnDragListener:Landroid/view/View$OnDragListener;

    invoke-interface {v0, p0, p1}, Landroid/view/View$OnDragListener;->onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 476
    const/4 v0, 0x1

    .line 479
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/meizu/widget/RecipientEdit;->onDragEvent(Landroid/view/DragEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 6
    .parameter "event"

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    .line 950
    iget-object v3, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v3}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 951
    .local v1, inputText:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/16 v4, 0x42

    if-ne v3, v4, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 953
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-ne v3, v2, :cond_0

    .line 954
    invoke-virtual {p0, v1}, Lcom/meizu/widget/RecipientEdit;->addRecipient(Ljava/lang/CharSequence;)Z

    .line 955
    iget-object v3, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 978
    :cond_0
    :goto_0
    return v2

    .line 960
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/16 v4, 0x43

    if-ne v3, v4, :cond_3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_3

    .line 962
    iget-object v3, p0, Lcom/meizu/widget/RecipientEdit;->mViewSelected:Landroid/view/View;

    if-eqz v3, :cond_2

    .line 963
    iget-object v3, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientLayout:Landroid/widget/AbsoluteLayout;

    iget-object v4, p0, Lcom/meizu/widget/RecipientEdit;->mViewSelected:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/widget/AbsoluteLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 964
    .local v0, index:I
    add-int/lit8 v3, v0, -0x1

    invoke-direct {p0, v3, v2}, Lcom/meizu/widget/RecipientEdit;->removeRecipientAt(IZ)Z

    .line 965
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/meizu/widget/RecipientEdit;->mViewSelected:Landroid/view/View;

    .line 966
    iget-object v3, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v3, v2}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->setCursorVisible(Z)V

    .line 967
    iget-object v3, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientScrollView:Landroid/widget/ScrollView;

    iget-object v4, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientLayout:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v4}, Landroid/widget/AbsoluteLayout;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v3, v5, v4}, Landroid/widget/ScrollView;->scrollTo(II)V

    goto :goto_0

    .line 969
    .end local v0           #index:I
    :cond_2
    iget-object v3, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientLayout:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v3}, Landroid/widget/AbsoluteLayout;->getChildCount()I

    move-result v3

    const/4 v4, 0x2

    if-le v3, v4, :cond_3

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 971
    iget-object v3, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientLayout:Landroid/widget/AbsoluteLayout;

    iget-object v4, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientLayout:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v4}, Landroid/widget/AbsoluteLayout;->getChildCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {v3, v4}, Landroid/widget/AbsoluteLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/meizu/widget/RecipientEdit;->mViewSelected:Landroid/view/View;

    .line 972
    iget-object v3, p0, Lcom/meizu/widget/RecipientEdit;->mViewSelected:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setSelected(Z)V

    .line 973
    iget-object v3, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v3, v5}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->setCursorVisible(Z)V

    goto :goto_0

    .line 978
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_0
.end method

.method public formatInvalidNumbers()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1602
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1603
    .local v3, sb:Ljava/lang/StringBuilder;
    iget-object v4, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientDataList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1604
    .local v2, number:Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/meizu/widget/RecipientEdit;->isValidRecipient(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1605
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-eqz v4, :cond_1

    .line 1606
    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1608
    :cond_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1612
    .end local v2           #number:Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v4}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/meizu/widget/RecipientEdit;->removeSpecialCharacter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1613
    .local v1, input:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientDataList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-direct {p0, v1}, Lcom/meizu/widget/RecipientEdit;->isValidRecipient(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 1615
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-eqz v4, :cond_3

    .line 1616
    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1618
    :cond_3
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1621
    :cond_4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public getAllNumbers()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1801
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1802
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientDataList:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientDataList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 1803
    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientDataList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    check-cast v1, Ljava/util/ArrayList;

    .line 1806
    .restart local v1       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v2}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/meizu/widget/RecipientEdit;->removeSpecialCharacter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1807
    .local v0, input:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientDataList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1808
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1811
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 1814
    .end local v1           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    return-object v1

    .restart local v1       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAllRecipientNames()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1822
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1823
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientDataList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1824
    .local v4, number:Ljava/lang/String;
    iget-object v5, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientMap:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1825
    .local v3, name:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1826
    move-object v3, v4

    .line 1828
    :cond_0
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1831
    .end local v3           #name:Ljava/lang/String;
    .end local v4           #number:Ljava/lang/String;
    :cond_1
    iget-object v5, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v5}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/meizu/widget/RecipientEdit;->removeSpecialCharacter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1832
    .local v1, input:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientDataList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 1833
    invoke-direct {p0, v1}, Lcom/meizu/widget/RecipientEdit;->queryDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1834
    .restart local v3       #name:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1835
    move-object v3, v1

    .line 1837
    :cond_2
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1840
    .end local v3           #name:Ljava/lang/String;
    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_4

    .line 1843
    .end local v2           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    return-object v2

    .restart local v2       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getButtonVisibility()Z
    .locals 1

    .prologue
    .line 2090
    iget-boolean v0, p0, Lcom/meizu/widget/RecipientEdit;->mBtnVisibility:Z

    return v0
.end method

.method public getImeOptions()I
    .locals 1

    .prologue
    .line 2140
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v0}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->getImeOptions()I

    move-result v0

    and-int/lit16 v0, v0, -0x100

    return v0
.end method

.method public getInputType()I
    .locals 1

    .prologue
    .line 2118
    iget v0, p0, Lcom/meizu/widget/RecipientEdit;->mInputType:I

    return v0
.end method

.method public getInvalidNumbers()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1952
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1953
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientDataList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1954
    .local v3, number:Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/meizu/widget/RecipientEdit;->isValidRecipient(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1955
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1959
    .end local v3           #number:Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v4}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/meizu/widget/RecipientEdit;->removeSpecialCharacter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1960
    .local v1, input:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientDataList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-direct {p0, v1}, Lcom/meizu/widget/RecipientEdit;->isValidRecipient(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1962
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1965
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 1968
    .end local v2           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    return-object v2

    .restart local v2       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getInvalidRecipientNames()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1976
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1977
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientDataList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1978
    .local v4, number:Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/meizu/widget/RecipientEdit;->isValidRecipient(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1979
    iget-object v5, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientMap:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1980
    .local v3, name:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1981
    move-object v3, v4

    .line 1983
    :cond_1
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1987
    .end local v3           #name:Ljava/lang/String;
    .end local v4           #number:Ljava/lang/String;
    :cond_2
    iget-object v5, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v5}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/meizu/widget/RecipientEdit;->removeSpecialCharacter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1988
    .local v1, input:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientDataList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-direct {p0, v1}, Lcom/meizu/widget/RecipientEdit;->isValidRecipient(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 1990
    invoke-direct {p0, v1}, Lcom/meizu/widget/RecipientEdit;->queryDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1991
    .restart local v3       #name:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1992
    move-object v3, v1

    .line 1994
    :cond_3
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1997
    .end local v3           #name:Ljava/lang/String;
    :cond_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_5

    .line 2000
    .end local v2           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    return-object v2

    .restart local v2       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_5
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getMaxHeight()I
    .locals 1

    .prologue
    .line 2071
    iget v0, p0, Lcom/meizu/widget/RecipientEdit;->mMaxHeight:I

    return v0
.end method

.method public getRecipientCount()I
    .locals 3

    .prologue
    .line 2039
    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientDataList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2040
    .local v0, count:I
    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v2}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/meizu/widget/RecipientEdit;->removeSpecialCharacter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2041
    .local v1, input:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientDataList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2042
    add-int/lit8 v0, v0, 0x1

    .line 2045
    :cond_0
    return v0
.end method

.method public getRecipients()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2010
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2011
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientDataList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2012
    .local v4, number:Ljava/lang/String;
    iget-object v5, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientMap:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2013
    .local v3, name:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2014
    move-object v3, v4

    .line 2016
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2019
    .end local v3           #name:Ljava/lang/String;
    .end local v4           #number:Ljava/lang/String;
    :cond_1
    iget-object v5, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v5}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/meizu/widget/RecipientEdit;->removeSpecialCharacter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2020
    .local v1, input:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientDataList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 2021
    invoke-direct {p0, v1}, Lcom/meizu/widget/RecipientEdit;->queryDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2022
    .restart local v3       #name:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2023
    move-object v3, v1

    .line 2025
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2028
    .end local v3           #name:Ljava/lang/String;
    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_4

    .line 2031
    .end local v2           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    return-object v2

    .restart local v2       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getSipState()Lcom/meizu/widget/RecipientStateInfo$SipState;
    .locals 5

    .prologue
    .line 1851
    iget-object v4, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientDataList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_0

    .line 1852
    sget-object v4, Lcom/meizu/widget/RecipientStateInfo$SipState;->SIP_NO:Lcom/meizu/widget/RecipientStateInfo$SipState;

    .line 1874
    :goto_0
    return-object v4

    .line 1855
    :cond_0
    iget-object v4, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientNotSip:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gtz v4, :cond_1

    iget-object v4, p0, Lcom/meizu/widget/RecipientEdit;->mCheckingRecipient:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 1856
    :cond_1
    sget-object v4, Lcom/meizu/widget/RecipientStateInfo$SipState;->SIP_NO:Lcom/meizu/widget/RecipientStateInfo$SipState;

    goto :goto_0

    .line 1859
    :cond_2
    iget-object v4, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientDataList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1860
    .local v2, number:Ljava/lang/String;
    iget-object v4, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientState:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/meizu/widget/RecipientStateInfo$SipState;

    .line 1861
    .local v3, state:Lcom/meizu/widget/RecipientStateInfo$SipState;
    if-eqz v3, :cond_4

    sget-object v4, Lcom/meizu/widget/RecipientStateInfo$SipState;->SIP_YES:Lcom/meizu/widget/RecipientStateInfo$SipState;

    if-eq v3, v4, :cond_3

    .line 1862
    :cond_4
    sget-object v4, Lcom/meizu/widget/RecipientStateInfo$SipState;->SIP_NO:Lcom/meizu/widget/RecipientStateInfo$SipState;

    goto :goto_0

    .line 1866
    .end local v2           #number:Ljava/lang/String;
    .end local v3           #state:Lcom/meizu/widget/RecipientStateInfo$SipState;
    :cond_5
    iget-object v4, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v4}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/meizu/widget/RecipientEdit;->removeSpecialCharacter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1867
    .local v1, input:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    iget-object v4, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientDataList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 1868
    iget-object v4, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientState:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/meizu/widget/RecipientStateInfo$SipState;

    .line 1869
    .restart local v3       #state:Lcom/meizu/widget/RecipientStateInfo$SipState;
    if-eqz v3, :cond_6

    sget-object v4, Lcom/meizu/widget/RecipientStateInfo$SipState;->SIP_YES:Lcom/meizu/widget/RecipientStateInfo$SipState;

    if-eq v3, v4, :cond_7

    .line 1870
    :cond_6
    sget-object v4, Lcom/meizu/widget/RecipientStateInfo$SipState;->SIP_NO:Lcom/meizu/widget/RecipientStateInfo$SipState;

    goto :goto_0

    .line 1874
    .end local v3           #state:Lcom/meizu/widget/RecipientStateInfo$SipState;
    :cond_7
    sget-object v4, Lcom/meizu/widget/RecipientStateInfo$SipState;->SIP_YES:Lcom/meizu/widget/RecipientStateInfo$SipState;

    goto :goto_0
.end method

.method public getSipVersion()I
    .locals 4

    .prologue
    .line 1881
    const v1, 0x7fffffff

    .line 1882
    .local v1, sipVersion:I
    iget-object v3, p0, Lcom/meizu/widget/RecipientEdit;->mSipVersion:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1883
    .local v2, version:I
    if-ge v2, v1, :cond_0

    .line 1884
    move v1, v2

    goto :goto_0

    .line 1888
    .end local v2           #version:I
    :cond_1
    const v3, 0x7fffffff

    if-ne v1, v3, :cond_2

    const/4 v1, -0x1

    .end local v1           #sipVersion:I
    :cond_2
    return v1
.end method

.method public getValidNumbers()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1896
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1897
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientDataList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1898
    .local v3, number:Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/meizu/widget/RecipientEdit;->isValidRecipient(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1899
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1903
    .end local v3           #number:Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v4}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/meizu/widget/RecipientEdit;->removeSpecialCharacter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1904
    .local v1, input:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientDataList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-direct {p0, v1}, Lcom/meizu/widget/RecipientEdit;->isValidRecipient(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1906
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1909
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 1912
    .end local v2           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    return-object v2

    .restart local v2       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getValidRecipientNames()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1920
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1921
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientDataList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1922
    .local v4, number:Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/meizu/widget/RecipientEdit;->isValidRecipient(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1923
    iget-object v5, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientMap:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1924
    .local v3, name:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1925
    move-object v3, v4

    .line 1927
    :cond_1
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1931
    .end local v3           #name:Ljava/lang/String;
    .end local v4           #number:Ljava/lang/String;
    :cond_2
    iget-object v5, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v5}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/meizu/widget/RecipientEdit;->removeSpecialCharacter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1932
    .local v1, input:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientDataList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-direct {p0, v1}, Lcom/meizu/widget/RecipientEdit;->isValidRecipient(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1934
    invoke-direct {p0, v1}, Lcom/meizu/widget/RecipientEdit;->queryDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1935
    .restart local v3       #name:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1936
    move-object v3, v1

    .line 1938
    :cond_3
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1941
    .end local v3           #name:Ljava/lang/String;
    :cond_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_5

    .line 1944
    .end local v2           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    return-object v2

    .restart local v2       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_5
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public hasInvalidRecipient()Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 1554
    iget-object v4, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientDataList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1555
    .local v2, number:Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/meizu/widget/RecipientEdit;->isValidRecipient(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1565
    .end local v2           #number:Ljava/lang/String;
    :cond_1
    :goto_0
    return v3

    .line 1560
    :cond_2
    iget-object v4, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v4}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/meizu/widget/RecipientEdit;->removeSpecialCharacter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1561
    .local v1, input:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-direct {p0, v1}, Lcom/meizu/widget/RecipientEdit;->isValidRecipient(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1565
    :cond_3
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public hasValidRecipient()Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 1569
    iget-object v4, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientDataList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1570
    .local v2, number:Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/meizu/widget/RecipientEdit;->isValidRecipient(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1580
    .end local v2           #number:Ljava/lang/String;
    :cond_1
    :goto_0
    return v3

    .line 1575
    :cond_2
    iget-object v4, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v4}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/meizu/widget/RecipientEdit;->removeSpecialCharacter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1576
    .local v1, input:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-direct {p0, v1}, Lcom/meizu/widget/RecipientEdit;->isValidRecipient(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1580
    :cond_3
    const/4 v3, 0x0

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .prologue
    .line 322
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 324
    sget-object v0, Lcom/meizu/widget/RecipientEdit;->sContentWorker:Lcom/meizu/widget/RecipientEdit$RecipientWorker;

    if-nez v0, :cond_0

    .line 325
    new-instance v0, Lcom/meizu/widget/RecipientEdit$RecipientWorker;

    const-string v1, "mz_recipient_content"

    invoke-direct {v0, v1}, Lcom/meizu/widget/RecipientEdit$RecipientWorker;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/meizu/widget/RecipientEdit;->sContentWorker:Lcom/meizu/widget/RecipientEdit$RecipientWorker;

    .line 328
    :cond_0
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit;->mContentHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 329
    sget-object v0, Lcom/meizu/widget/RecipientEdit;->sContentWorker:Lcom/meizu/widget/RecipientEdit$RecipientWorker;

    invoke-static {v0}, Lcom/meizu/widget/RecipientEdit$RecipientWorker;->access$104(Lcom/meizu/widget/RecipientEdit$RecipientWorker;)I

    .line 330
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/meizu/widget/RecipientEdit;->sContentWorker:Lcom/meizu/widget/RecipientEdit$RecipientWorker;

    invoke-virtual {v1}, Lcom/meizu/widget/RecipientEdit$RecipientWorker;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/meizu/widget/RecipientEdit;->mContentHandler:Landroid/os/Handler;

    .line 333
    :cond_1
    new-instance v0, Lcom/meizu/widget/RecipientEdit$RecipientObserver;

    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mContentHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/meizu/widget/RecipientEdit$RecipientObserver;-><init>(Lcom/meizu/widget/RecipientEdit;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/meizu/widget/RecipientEdit;->mObserver:Landroid/database/ContentObserver;

    .line 334
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/meizu/widget/RecipientEdit;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 336
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9
    .parameter "view"

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 707
    instance-of v5, p1, Landroid/widget/AutoCompleteTextView;

    if-eqz v5, :cond_1

    .line 708
    iget-object v5, p0, Lcom/meizu/widget/RecipientEdit;->mViewSelected:Landroid/view/View;

    if-eqz v5, :cond_0

    .line 709
    iget-object v5, p0, Lcom/meizu/widget/RecipientEdit;->mViewSelected:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setSelected(Z)V

    .line 710
    iput-object v6, p0, Lcom/meizu/widget/RecipientEdit;->mViewSelected:Landroid/view/View;

    .line 711
    iget-object v5, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v5, v8}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->setCursorVisible(Z)V

    .line 757
    :cond_0
    :goto_0
    return-void

    .line 713
    :cond_1
    instance-of v5, p1, Lcom/meizu/widget/RecipientEdit$ItemView;

    if-eqz v5, :cond_5

    .line 714
    invoke-direct {p0}, Lcom/meizu/widget/RecipientEdit;->removeComposingSpan()V

    .line 715
    iget-object v5, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v5}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 716
    .local v4, text:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 717
    invoke-virtual {p0, v4}, Lcom/meizu/widget/RecipientEdit;->addRecipient(Ljava/lang/CharSequence;)Z

    .line 718
    iget-object v5, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    const-string v6, ""

    invoke-virtual {v5, v6}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 721
    :cond_2
    iget-object v5, p0, Lcom/meizu/widget/RecipientEdit;->mViewSelected:Landroid/view/View;

    if-eqz v5, :cond_4

    .line 722
    iget-object v5, p0, Lcom/meizu/widget/RecipientEdit;->mViewSelected:Landroid/view/View;

    if-ne p1, v5, :cond_3

    .line 723
    iget-object v5, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientLayout:Landroid/widget/AbsoluteLayout;

    iget-object v6, p0, Lcom/meizu/widget/RecipientEdit;->mViewSelected:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/widget/AbsoluteLayout;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 724
    .local v1, index:I
    iget-object v5, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientDataList:Ljava/util/ArrayList;

    add-int/lit8 v6, v1, -0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 725
    .local v3, phoneOrEmail:Ljava/lang/String;
    iget-object v5, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientMap:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 726
    .local v2, name:Ljava/lang/String;
    invoke-direct {p0, v3, v2}, Lcom/meizu/widget/RecipientEdit;->goContactDetail(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 729
    .end local v1           #index:I
    .end local v2           #name:Ljava/lang/String;
    .end local v3           #phoneOrEmail:Ljava/lang/String;
    :cond_3
    iget-object v5, p0, Lcom/meizu/widget/RecipientEdit;->mViewSelected:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setSelected(Z)V

    .line 735
    :goto_1
    iput-object p1, p0, Lcom/meizu/widget/RecipientEdit;->mViewSelected:Landroid/view/View;

    .line 736
    invoke-virtual {p1, v8}, Landroid/view/View;->setSelected(Z)V

    .line 738
    iget-object v5, p0, Lcom/meizu/widget/RecipientEdit;->mContext:Landroid/content/Context;

    const-string v6, "input_method"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 740
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v5, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v0, v5, v7}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_0

    .line 732
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_4
    iget-object v5, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v5, v7}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->setCursorVisible(Z)V

    goto :goto_1

    .line 742
    .end local v4           #text:Ljava/lang/String;
    :cond_5
    iget-object v5, p0, Lcom/meizu/widget/RecipientEdit;->mViewSelected:Landroid/view/View;

    if-eqz v5, :cond_6

    .line 743
    iget-object v5, p0, Lcom/meizu/widget/RecipientEdit;->mViewSelected:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setSelected(Z)V

    .line 744
    iput-object v6, p0, Lcom/meizu/widget/RecipientEdit;->mViewSelected:Landroid/view/View;

    .line 745
    iget-object v5, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v5, v8}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->setCursorVisible(Z)V

    .line 748
    :cond_6
    iget-object v5, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v5}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->requestFocus()Z

    .line 750
    iget-object v5, p0, Lcom/meizu/widget/RecipientEdit;->mContext:Landroid/content/Context;

    const-string v6, "input_method"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 752
    .restart local v0       #imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v5, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v0, v5, v8}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 753
    iget-object v5, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v5}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->isPopupShowing()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 754
    iget-object v5, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v5, v8}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->ensureImeVisible(Z)V

    goto/16 :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .parameter "newConfig"

    .prologue
    .line 383
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 384
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/meizu/widget/RecipientEdit;->mIsFirstLayout:Z

    .line 386
    const v1, 0x10203a5

    invoke-virtual {p0, v1}, Lcom/meizu/widget/RecipientEdit;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 387
    .local v0, root:Landroid/view/View;
    invoke-virtual {p0}, Lcom/meizu/widget/RecipientEdit;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050061

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/meizu/widget/RecipientEdit;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1050062

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 393
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v1}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->isPopupShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 394
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->dismiss(Z)V

    .line 395
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v1}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->showDropDown()V

    .line 397
    :cond_0
    return-void
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 4
    .parameter "outAttrs"

    .prologue
    .line 303
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v1}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->getImeOptions()I

    move-result v1

    and-int/lit16 v0, v1, -0x100

    .line 304
    .local v0, imeOptions:I
    invoke-direct {p0}, Lcom/meizu/widget/RecipientEdit;->isDefaultInputMethod()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 305
    const/16 v1, 0x82

    invoke-virtual {p0, v1}, Lcom/meizu/widget/RecipientEdit;->focusSearch(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 306
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    or-int/lit8 v2, v0, 0x5

    invoke-virtual {v1, v2}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->setImeOptions(I)V

    .line 317
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    return-object v1

    .line 308
    :cond_0
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    or-int/lit8 v2, v0, 0x6

    invoke-virtual {v1, v2}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->setImeOptions(I)V

    goto :goto_0

    .line 311
    :cond_1
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    or-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->setImeOptions(I)V

    .line 312
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {p0}, Lcom/meizu/widget/RecipientEdit;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1040577

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->setImeActionLabel(Ljava/lang/CharSequence;I)V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 340
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 342
    sget-object v0, Lcom/meizu/widget/RecipientEdit;->sRecipientWorker:Lcom/meizu/widget/RecipientEdit$RecipientWorker;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/meizu/widget/RecipientEdit;->sRecipientWorker:Lcom/meizu/widget/RecipientEdit$RecipientWorker;

    invoke-static {v0}, Lcom/meizu/widget/RecipientEdit$RecipientWorker;->access$106(Lcom/meizu/widget/RecipientEdit$RecipientWorker;)I

    move-result v0

    if-nez v0, :cond_0

    .line 343
    sget-object v0, Lcom/meizu/widget/RecipientEdit;->sRecipientWorker:Lcom/meizu/widget/RecipientEdit$RecipientWorker;

    invoke-virtual {v0}, Lcom/meizu/widget/RecipientEdit$RecipientWorker;->quit()V

    .line 344
    sput-object v2, Lcom/meizu/widget/RecipientEdit;->sRecipientWorker:Lcom/meizu/widget/RecipientEdit$RecipientWorker;

    .line 347
    :cond_0
    sget-object v0, Lcom/meizu/widget/RecipientEdit;->sHistoryWorker:Lcom/meizu/widget/RecipientEdit$RecipientWorker;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/meizu/widget/RecipientEdit;->sHistoryWorker:Lcom/meizu/widget/RecipientEdit$RecipientWorker;

    invoke-static {v0}, Lcom/meizu/widget/RecipientEdit$RecipientWorker;->access$106(Lcom/meizu/widget/RecipientEdit$RecipientWorker;)I

    move-result v0

    if-nez v0, :cond_1

    .line 348
    sget-object v0, Lcom/meizu/widget/RecipientEdit;->sHistoryWorker:Lcom/meizu/widget/RecipientEdit$RecipientWorker;

    invoke-virtual {v0}, Lcom/meizu/widget/RecipientEdit$RecipientWorker;->quit()V

    .line 349
    sput-object v2, Lcom/meizu/widget/RecipientEdit;->sHistoryWorker:Lcom/meizu/widget/RecipientEdit$RecipientWorker;

    .line 352
    :cond_1
    sget-object v0, Lcom/meizu/widget/RecipientEdit;->sContentWorker:Lcom/meizu/widget/RecipientEdit$RecipientWorker;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/meizu/widget/RecipientEdit;->sContentWorker:Lcom/meizu/widget/RecipientEdit$RecipientWorker;

    invoke-static {v0}, Lcom/meizu/widget/RecipientEdit$RecipientWorker;->access$106(Lcom/meizu/widget/RecipientEdit$RecipientWorker;)I

    move-result v0

    if-nez v0, :cond_2

    .line 353
    sget-object v0, Lcom/meizu/widget/RecipientEdit;->sContentWorker:Lcom/meizu/widget/RecipientEdit$RecipientWorker;

    invoke-virtual {v0}, Lcom/meizu/widget/RecipientEdit$RecipientWorker;->quit()V

    .line 354
    sput-object v2, Lcom/meizu/widget/RecipientEdit;->sContentWorker:Lcom/meizu/widget/RecipientEdit$RecipientWorker;

    .line 357
    :cond_2
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 358
    return-void
.end method

.method public onDragEvent(Landroid/view/DragEvent;)Z
    .locals 21
    .parameter "event"

    .prologue
    .line 484
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v10

    .line 485
    .local v10, localState:Ljava/lang/Object;
    instance-of v0, v10, Lcom/meizu/widget/RecipientEdit$DragInfo;

    move/from16 v19, v0

    if-nez v19, :cond_1

    .line 486
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->onDragEvent(Landroid/view/DragEvent;)Z

    move-result v14

    .line 590
    :cond_0
    :goto_0
    return v14

    .line 489
    :cond_1
    const/4 v14, 0x0

    .line 490
    .local v14, result:Z
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getX()F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v17, v0

    .line 491
    .local v17, x:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getY()F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v18, v0

    .local v18, y:I
    move-object v4, v10

    .line 492
    check-cast v4, Lcom/meizu/widget/RecipientEdit$DragInfo;

    .line 493
    .local v4, dragInfo:Lcom/meizu/widget/RecipientEdit$DragInfo;
    iget-object v6, v4, Lcom/meizu/widget/RecipientEdit$DragInfo;->mDragView:Lcom/meizu/widget/RecipientEdit$ItemView;

    .line 495
    .local v6, dragView:Lcom/meizu/widget/RecipientEdit$ItemView;
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getAction()I

    move-result v19

    packed-switch v19, :pswitch_data_0

    goto :goto_0

    .line 497
    :pswitch_0
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/meizu/widget/RecipientEdit;->mInDrag:Z

    .line 498
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/widget/RecipientEdit;->hasFocus()Z

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/meizu/widget/RecipientEdit;->refreshLayout(Z)V

    .line 499
    const/4 v14, 0x1

    .line 500
    goto :goto_0

    .line 503
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/RecipientEdit;->mRecipientLayout:Landroid/widget/AbsoluteLayout;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/widget/AbsoluteLayout;->removeView(Landroid/view/View;)V

    .line 504
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/widget/RecipientEdit;->hasFocus()Z

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/meizu/widget/RecipientEdit;->refreshLayout(Z)V

    .line 505
    const/4 v14, 0x1

    .line 506
    goto :goto_0

    .line 509
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/widget/RecipientEdit;->requestFocus()Z

    .line 510
    const/4 v14, 0x1

    .line 511
    goto :goto_0

    .line 514
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/RecipientEdit;->mRecipientLayout:Landroid/widget/AbsoluteLayout;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/widget/AbsoluteLayout;->indexOfChild(Landroid/view/View;)I

    move-result v9

    .line 515
    .local v9, lastPos:I
    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v4, v1, v2}, Lcom/meizu/widget/RecipientEdit;->changeViewPos(Lcom/meizu/widget/RecipientEdit$DragInfo;II)I

    move-result v12

    .line 516
    .local v12, pos:I
    if-eq v12, v9, :cond_2

    .line 517
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/widget/RecipientEdit;->hasFocus()Z

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/meizu/widget/RecipientEdit;->refreshLayout(Z)V

    .line 519
    :cond_2
    const/4 v14, 0x1

    .line 520
    goto :goto_0

    .line 523
    .end local v9           #lastPos:I
    .end local v12           #pos:I
    :pswitch_4
    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v4, v1, v2}, Lcom/meizu/widget/RecipientEdit;->changeViewPos(Lcom/meizu/widget/RecipientEdit$DragInfo;II)I

    move-result v5

    .line 524
    .local v5, dragPos:I
    if-lez v5, :cond_4

    .line 525
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/RecipientEdit;->mFirstDragPos:I

    move/from16 v19, v0

    if-lez v19, :cond_5

    .line 526
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/RecipientEdit;->mFirstDragPos:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-eq v5, v0, :cond_3

    .line 527
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/RecipientEdit;->mRecipientDataList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/RecipientEdit;->mFirstDragPos:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, -0x1

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 528
    .local v13, removeStr:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/RecipientEdit;->mRecipientDataList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    add-int/lit8 v20, v5, -0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v1, v13}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 531
    .end local v13           #removeStr:Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->setCursorVisible(Z)V

    .line 532
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/meizu/widget/RecipientEdit;->mViewSelected:Landroid/view/View;

    .line 533
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Lcom/meizu/widget/RecipientEdit$ItemView;->setVisibility(I)V

    .line 534
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/meizu/widget/RecipientEdit;->mFirstDragPos:I

    .line 558
    :cond_4
    :goto_1
    const/4 v14, 0x1

    .line 559
    goto/16 :goto_0

    .line 536
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    move-result-object v3

    .line 537
    .local v3, clipData:Landroid/content/ClipData;
    invoke-virtual {v3}, Landroid/content/ClipData;->getItemCount()I

    move-result v19

    if-lez v19, :cond_4

    .line 538
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v8

    .line 539
    .local v8, item:Landroid/content/ClipData$Item;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/RecipientEdit;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    .line 540
    .local v15, text:Ljava/lang/String;
    invoke-static {v15}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v16

    .line 541
    .local v16, token:[Landroid/text/util/Rfc822Token;
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v19, v0

    if-lez v19, :cond_4

    .line 542
    const/16 v19, 0x0

    aget-object v19, v16, v19

    invoke-virtual/range {v19 .. v19}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    aget-object v20, v16, v20

    invoke-virtual/range {v20 .. v20}, Landroid/text/util/Rfc822Token;->getName()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2, v5}, Lcom/meizu/widget/RecipientEdit;->addRecipientInternal(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v7

    .line 545
    .local v7, flag:Z
    if-eqz v7, :cond_6

    .line 546
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->setCursorVisible(Z)V

    .line 547
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/meizu/widget/RecipientEdit;->mViewSelected:Landroid/view/View;

    .line 548
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Lcom/meizu/widget/RecipientEdit$ItemView;->setVisibility(I)V

    goto :goto_1

    .line 551
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/RecipientEdit;->mRecipientLayout:Landroid/widget/AbsoluteLayout;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Landroid/widget/AbsoluteLayout;->removeViewAt(I)V

    .line 552
    const/16 v19, 0x8

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Lcom/meizu/widget/RecipientEdit$ItemView;->setVisibility(I)V

    goto :goto_1

    .line 562
    .end local v3           #clipData:Landroid/content/ClipData;
    .end local v5           #dragPos:I
    .end local v7           #flag:Z
    .end local v8           #item:Landroid/content/ClipData$Item;
    .end local v15           #text:Ljava/lang/String;
    .end local v16           #token:[Landroid/text/util/Rfc822Token;
    :pswitch_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/RecipientEdit;->mFirstDragPos:I

    move/from16 v19, v0

    if-lez v19, :cond_8

    .line 563
    invoke-virtual {v6}, Lcom/meizu/widget/RecipientEdit$ItemView;->getVisibility()I

    move-result v19

    const/16 v20, 0x4

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_9

    .line 564
    invoke-virtual {v6}, Lcom/meizu/widget/RecipientEdit$ItemView;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    check-cast v11, Landroid/view/ViewGroup;

    .line 565
    .local v11, oldParent:Landroid/view/ViewGroup;
    if-eqz v11, :cond_7

    .line 566
    invoke-virtual {v11, v6}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 569
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/RecipientEdit;->mRecipientLayout:Landroid/widget/AbsoluteLayout;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/RecipientEdit;->mFirstDragPos:I

    move/from16 v20, v0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v6, v1}, Landroid/widget/AbsoluteLayout;->addView(Landroid/view/View;I)V

    .line 570
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->setCursorVisible(Z)V

    .line 571
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/meizu/widget/RecipientEdit;->mViewSelected:Landroid/view/View;

    .line 572
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Lcom/meizu/widget/RecipientEdit$ItemView;->setVisibility(I)V

    .line 576
    .end local v11           #oldParent:Landroid/view/ViewGroup;
    :goto_2
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/meizu/widget/RecipientEdit;->mFirstDragPos:I

    .line 579
    :cond_8
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/meizu/widget/RecipientEdit;->mInDrag:Z

    .line 580
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/widget/RecipientEdit;->hasFocus()Z

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/meizu/widget/RecipientEdit;->refreshLayout(Z)V

    .line 581
    const/4 v14, 0x1

    .line 583
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/meizu/widget/RecipientEdit;->mStartDrag:Z

    move/from16 v19, v0

    if-eqz v19, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/RecipientEdit;->mDragWatcher:Lcom/meizu/widget/RecipientEdit$RecipientDragWatcher;

    move-object/from16 v19, v0

    if-eqz v19, :cond_0

    .line 584
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/RecipientEdit;->mDragWatcher:Lcom/meizu/widget/RecipientEdit$RecipientDragWatcher;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Lcom/meizu/widget/RecipientEdit$RecipientDragWatcher;->afterDragEnded(Landroid/view/View;)V

    .line 585
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/meizu/widget/RecipientEdit;->mStartDrag:Z

    goto/16 :goto_0

    .line 574
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/RecipientEdit;->mFirstDragPos:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/meizu/widget/RecipientEdit;->removeRecipientAt(IZ)Z

    goto :goto_2

    .line 495
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 400
    invoke-direct {p0}, Lcom/meizu/widget/RecipientEdit;->removeComposingSpan()V

    .line 401
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v1}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 402
    .local v0, text:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x10203a9

    if-ne v1, v2, :cond_0

    if-nez p2, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 404
    invoke-virtual {p0, v0}, Lcom/meizu/widget/RecipientEdit;->addRecipient(Ljava/lang/CharSequence;)Z

    .line 405
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 408
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/widget/RecipientEdit;->getOnFocusChangeListener()Landroid/view/View$OnFocusChangeListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 409
    invoke-virtual {p0}, Lcom/meizu/widget/RecipientEdit;->getOnFocusChangeListener()Landroid/view/View$OnFocusChangeListener;

    move-result-object v1

    invoke-interface {v1, p0, p2}, Landroid/view/View$OnFocusChangeListener;->onFocusChange(Landroid/view/View;Z)V

    .line 412
    :cond_1
    if-nez p2, :cond_2

    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mViewSelected:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 413
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mViewSelected:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 414
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mViewSelected:Landroid/view/View;

    .line 415
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->setCursorVisible(Z)V

    .line 418
    :cond_2
    invoke-direct {p0, p2}, Lcom/meizu/widget/RecipientEdit;->refreshLayout(Z)V

    .line 419
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 5
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v4, 0x0

    .line 1043
    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "default_input_method"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1046
    .local v1, inputMethod:Ljava/lang/String;
    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit;->mLastInputMethod:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1047
    iput-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mLastInputMethod:Ljava/lang/String;

    .line 1048
    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v2}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->getImeOptions()I

    move-result v2

    and-int/lit16 v0, v2, -0x100

    .line 1049
    .local v0, imeOptions:I
    invoke-direct {p0}, Lcom/meizu/widget/RecipientEdit;->isDefaultInputMethod()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v2}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1050
    const/16 v2, 0x82

    invoke-virtual {p0, v2}, Lcom/meizu/widget/RecipientEdit;->focusSearch(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1051
    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    or-int/lit8 v3, v0, 0x5

    invoke-virtual {v2, v3}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->setImeOptions(I)V

    .line 1052
    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    const/4 v3, 0x5

    invoke-virtual {v2, v4, v3}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->setImeActionLabel(Ljava/lang/CharSequence;I)V

    .line 1063
    :goto_0
    iget v2, p0, Lcom/meizu/widget/RecipientEdit;->mInputType:I

    invoke-virtual {p0, v2}, Lcom/meizu/widget/RecipientEdit;->setInputType(I)V

    .line 1066
    .end local v0           #imeOptions:I
    :cond_0
    iget-boolean v2, p0, Lcom/meizu/widget/RecipientEdit;->mIsFirstLayout:Z

    if-eqz v2, :cond_1

    .line 1067
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/meizu/widget/RecipientEdit;->mIsFirstLayout:Z

    .line 1068
    invoke-virtual {p0}, Lcom/meizu/widget/RecipientEdit;->hasFocus()Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/meizu/widget/RecipientEdit;->refreshLayout(Z)V

    .line 1071
    :cond_1
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 1072
    return-void

    .line 1054
    .restart local v0       #imeOptions:I
    :cond_2
    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    or-int/lit8 v3, v0, 0x6

    invoke-virtual {v2, v3}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->setImeOptions(I)V

    .line 1055
    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    const/4 v3, 0x6

    invoke-virtual {v2, v4, v3}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->setImeActionLabel(Ljava/lang/CharSequence;I)V

    goto :goto_0

    .line 1058
    :cond_3
    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    or-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->setImeOptions(I)V

    .line 1059
    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {p0}, Lcom/meizu/widget/RecipientEdit;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1040577

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->setImeActionLabel(Ljava/lang/CharSequence;I)V

    goto :goto_0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 11
    .parameter "v"

    .prologue
    const/4 v10, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 659
    iget-boolean v6, p0, Lcom/meizu/widget/RecipientEdit;->mEnabledDrag:Z

    if-eqz v6, :cond_5

    instance-of v6, p1, Lcom/meizu/widget/RecipientEdit$ItemView;

    if-eqz v6, :cond_5

    .line 661
    invoke-direct {p0}, Lcom/meizu/widget/RecipientEdit;->removeComposingSpan()V

    .line 662
    iget-object v6, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v6}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 663
    .local v4, text:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 664
    invoke-virtual {p0, v4}, Lcom/meizu/widget/RecipientEdit;->addRecipient(Ljava/lang/CharSequence;)Z

    .line 665
    iget-object v6, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    const-string v9, ""

    invoke-virtual {v6, v9}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 668
    :cond_0
    iget-object v6, p0, Lcom/meizu/widget/RecipientEdit;->mViewSelected:Landroid/view/View;

    if-eqz v6, :cond_1

    .line 669
    iget-object v6, p0, Lcom/meizu/widget/RecipientEdit;->mViewSelected:Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/view/View;->setSelected(Z)V

    .line 670
    iput-object v10, p0, Lcom/meizu/widget/RecipientEdit;->mViewSelected:Landroid/view/View;

    .line 671
    iget-object v6, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v6, v7}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->setCursorVisible(Z)V

    .line 674
    :cond_1
    invoke-virtual {p1, v7}, Landroid/view/View;->setSelected(Z)V

    .line 677
    iget-object v6, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientLayout:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v6, p1}, Landroid/widget/AbsoluteLayout;->indexOfChild(Landroid/view/View;)I

    move-result v6

    iput v6, p0, Lcom/meizu/widget/RecipientEdit;->mFirstDragPos:I

    .line 678
    iget-object v6, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientDataList:Ljava/util/ArrayList;

    iget v9, p0, Lcom/meizu/widget/RecipientEdit;->mFirstDragPos:I

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 679
    .local v3, phoneOrEmail:Ljava/lang/String;
    iget-object v6, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientMap:Ljava/util/HashMap;

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 680
    .local v2, name:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 681
    move-object v2, v3

    .line 683
    :cond_2
    new-instance v5, Landroid/text/util/Rfc822Token;

    invoke-direct {v5, v2, v3, v10}, Landroid/text/util/Rfc822Token;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    .local v5, token:Landroid/text/util/Rfc822Token;
    invoke-virtual {v5}, Landroid/text/util/Rfc822Token;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    .line 686
    .local v0, data:Landroid/content/ClipData;
    iget-object v6, p0, Lcom/meizu/widget/RecipientEdit;->mDragInfo:Lcom/meizu/widget/RecipientEdit$DragInfo;

    if-nez v6, :cond_3

    .line 687
    new-instance v6, Lcom/meizu/widget/RecipientEdit$DragInfo;

    invoke-direct {v6}, Lcom/meizu/widget/RecipientEdit$DragInfo;-><init>()V

    iput-object v6, p0, Lcom/meizu/widget/RecipientEdit;->mDragInfo:Lcom/meizu/widget/RecipientEdit$DragInfo;

    .line 689
    :cond_3
    iget-object v9, p0, Lcom/meizu/widget/RecipientEdit;->mDragInfo:Lcom/meizu/widget/RecipientEdit$DragInfo;

    move-object v6, p1

    check-cast v6, Lcom/meizu/widget/RecipientEdit$ItemView;

    iput-object v6, v9, Lcom/meizu/widget/RecipientEdit$DragInfo;->mDragView:Lcom/meizu/widget/RecipientEdit$ItemView;

    .line 691
    new-instance v6, Lcom/meizu/widget/RecipientEdit$RecipientDragShadowBuilder;

    invoke-direct {v6, p0, p1}, Lcom/meizu/widget/RecipientEdit$RecipientDragShadowBuilder;-><init>(Lcom/meizu/widget/RecipientEdit;Landroid/view/View;)V

    iget-object v9, p0, Lcom/meizu/widget/RecipientEdit;->mDragInfo:Lcom/meizu/widget/RecipientEdit$DragInfo;

    invoke-virtual {p1, v0, v6, v9, v8}, Landroid/view/View;->startDrag(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    move-result v1

    .line 692
    .local v1, flag:Z
    if-eqz v1, :cond_4

    .line 693
    const/4 v6, 0x4

    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 694
    iget-object v6, p0, Lcom/meizu/widget/RecipientEdit;->mDragWatcher:Lcom/meizu/widget/RecipientEdit$RecipientDragWatcher;

    if-eqz v6, :cond_4

    .line 695
    iget-object v6, p0, Lcom/meizu/widget/RecipientEdit;->mDragWatcher:Lcom/meizu/widget/RecipientEdit$RecipientDragWatcher;

    invoke-interface {v6, p0}, Lcom/meizu/widget/RecipientEdit$RecipientDragWatcher;->beforeDragStarted(Landroid/view/View;)V

    .line 696
    iput-boolean v7, p0, Lcom/meizu/widget/RecipientEdit;->mStartDrag:Z

    :cond_4
    move v6, v7

    .line 703
    .end local v0           #data:Landroid/content/ClipData;
    .end local v1           #flag:Z
    .end local v2           #name:Ljava/lang/String;
    .end local v3           #phoneOrEmail:Ljava/lang/String;
    .end local v4           #text:Ljava/lang/String;
    .end local v5           #token:Landroid/text/util/Rfc822Token;
    :goto_0
    return v6

    :cond_5
    move v6, v8

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 5
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/16 v3, 0x8

    const/4 v4, 0x0

    .line 1004
    iget-boolean v2, p0, Lcom/meizu/widget/RecipientEdit;->mIsFirstLayout:Z

    if-eqz v2, :cond_0

    .line 1005
    invoke-virtual {p0}, Lcom/meizu/widget/RecipientEdit;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1006
    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v2, v4}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 1007
    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit;->mAddContactsBtn:Landroid/widget/ImageButton;

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1008
    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit;->mHintView2:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1009
    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit;->mDisplayNameView:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1010
    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit;->mCountView:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1021
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v2, v4, v4}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->measure(II)V

    .line 1022
    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v2}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v2

    iget-object v3, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v3}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->getTotalPaddingLeft()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v3}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->getTotalPaddingRight()I

    move-result v3

    int-to-float v3, v3

    add-float v1, v2, v3

    .line 1025
    .local v1, textWidth:F
    iget v2, p0, Lcom/meizu/widget/RecipientEdit;->mEditMaxWidth:I

    int-to-float v2, v2

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_1

    iget v2, p0, Lcom/meizu/widget/RecipientEdit;->mEditMaxWidth:I

    iget-object v3, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientLayout:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v3}, Landroid/widget/AbsoluteLayout;->getWidth()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientLayout:Landroid/widget/AbsoluteLayout;

    iget-object v3, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v2, v3}, Landroid/widget/AbsoluteLayout;->indexOfChild(Landroid/view/View;)I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    .line 1028
    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v2}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    .line 1030
    .local v0, lp:Landroid/widget/AbsoluteLayout$LayoutParams;
    if-eqz v0, :cond_1

    .line 1031
    iput v4, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    .line 1032
    iget v2, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    iget-object v3, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v3}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    .line 1033
    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientLayout:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v2}, Landroid/widget/AbsoluteLayout;->getWidth()I

    move-result v2

    iput v2, p0, Lcom/meizu/widget/RecipientEdit;->mEditMaxWidth:I

    .line 1034
    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    iget v3, p0, Lcom/meizu/widget/RecipientEdit;->mEditMaxWidth:I

    invoke-virtual {v2, v3}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->setWidth(I)V

    .line 1038
    .end local v0           #lp:Landroid/widget/AbsoluteLayout$LayoutParams;
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 1039
    return-void

    .line 1012
    .end local v1           #textWidth:F
    :cond_2
    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v2, v3}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 1013
    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit;->mAddContactsBtn:Landroid/widget/ImageButton;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1014
    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit;->mHintView2:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1015
    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit;->mDisplayNameView:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1016
    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit;->mCountView:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public openGlobalAddressBook(Z)V
    .locals 0
    .parameter "open"

    .prologue
    .line 2343
    iput-boolean p1, p0, Lcom/meizu/widget/RecipientEdit;->mOpenGlobalAddressBook:Z

    .line 2344
    return-void
.end method

.method public openHistory()V
    .locals 3

    .prologue
    .line 2147
    iget v0, p0, Lcom/meizu/widget/RecipientEdit;->mInputType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 2157
    :goto_0
    return-void

    .line 2151
    :cond_0
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mDbLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2152
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/meizu/widget/RecipientEdit;->mIsSaveHistory:Z

    .line 2153
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit;->mDbHelper:Lcom/meizu/widget/RecipientDbHelper;

    if-nez v0, :cond_1

    .line 2154
    new-instance v0, Lcom/meizu/widget/RecipientDbHelper;

    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/meizu/widget/RecipientDbHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/meizu/widget/RecipientEdit;->mDbHelper:Lcom/meizu/widget/RecipientDbHelper;

    .line 2156
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeAll()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1628
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1629
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/meizu/widget/RecipientEdit;->mHasEmail:Z

    .line 1630
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientLayout:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v1}, Landroid/widget/AbsoluteLayout;->getChildCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x2

    .line 1631
    .local v0, num:I
    if-lez v0, :cond_2

    .line 1632
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientHandler:Lcom/meizu/widget/RecipientEdit$RecipientHandler;

    if-eqz v1, :cond_0

    .line 1633
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientHandler:Lcom/meizu/widget/RecipientEdit$RecipientHandler;

    invoke-virtual {v1, v3}, Lcom/meizu/widget/RecipientEdit$RecipientHandler;->removeMessages(I)V

    .line 1635
    :cond_0
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientDataList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1636
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 1637
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientState:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 1638
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mSipVersion:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 1639
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mCheckingRecipient:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1640
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientNotSip:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1641
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientLayout:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v1, v3, v0}, Landroid/widget/AbsoluteLayout;->removeViews(II)V

    .line 1643
    invoke-direct {p0}, Lcom/meizu/widget/RecipientEdit;->endCheck()V

    .line 1644
    invoke-virtual {p0}, Lcom/meizu/widget/RecipientEdit;->hasFocus()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/meizu/widget/RecipientEdit;->refreshLayout(Z)V

    .line 1646
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mOnSipStateChangedListener:Lcom/meizu/widget/RecipientStateInfo$OnSipStateChangedListener;

    if-eqz v1, :cond_1

    .line 1647
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mOnSipStateChangedListener:Lcom/meizu/widget/RecipientStateInfo$OnSipStateChangedListener;

    sget-object v2, Lcom/meizu/widget/RecipientStateInfo$SipState;->SIP_NO:Lcom/meizu/widget/RecipientStateInfo$SipState;

    invoke-interface {v1, p0, v2}, Lcom/meizu/widget/RecipientStateInfo$OnSipStateChangedListener;->onSipStateChanged(Landroid/view/View;Lcom/meizu/widget/RecipientStateInfo$SipState;)V

    .line 1650
    :cond_1
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mOnRecipientChangedListener:Lcom/meizu/widget/RecipientEdit$OnRecipientChangedListener;

    if-eqz v1, :cond_2

    .line 1651
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mOnRecipientChangedListener:Lcom/meizu/widget/RecipientEdit$OnRecipientChangedListener;

    invoke-interface {v1}, Lcom/meizu/widget/RecipientEdit$OnRecipientChangedListener;->OnRecipientChanged()V

    .line 1654
    :cond_2
    return-void
.end method

.method public removeEmailWhenGroup()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 1727
    iget-object v8, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientDataList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1728
    .local v0, count:I
    iget-object v8, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v8}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/meizu/widget/RecipientEdit;->removeSpecialCharacter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1729
    .local v3, input:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-static {v3}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    if-lez v0, :cond_0

    .line 1730
    iget-object v8, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    const-string v9, ""

    invoke-virtual {v8, v9}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1733
    :cond_0
    iget-boolean v8, p0, Lcom/meizu/widget/RecipientEdit;->mHasEmail:Z

    if-eqz v8, :cond_a

    if-le v0, v10, :cond_a

    .line 1734
    iget-object v8, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientDataList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 1735
    .local v4, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 1736
    .local v6, refreshSipState:Z
    add-int/lit8 v2, v0, -0x1

    .local v2, index:I
    :goto_0
    if-lez v2, :cond_5

    .line 1737
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1738
    .local v5, number:Ljava/lang/String;
    invoke-static {v5}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1739
    iget-object v8, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientHandler:Lcom/meizu/widget/RecipientEdit$RecipientHandler;

    if-eqz v8, :cond_1

    .line 1740
    iget-object v8, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientHandler:Lcom/meizu/widget/RecipientEdit$RecipientHandler;

    invoke-virtual {v8, v10, v5}, Lcom/meizu/widget/RecipientEdit$RecipientHandler;->removeMessages(ILjava/lang/Object;)V

    .line 1743
    :cond_1
    iget-object v8, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientDataList:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1744
    iget-object v8, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientMap:Ljava/util/HashMap;

    invoke-virtual {v8, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1745
    iget-object v8, p0, Lcom/meizu/widget/RecipientEdit;->mCheckingRecipient:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1746
    iget-object v8, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientState:Ljava/util/HashMap;

    invoke-virtual {v8, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1747
    iget-object v8, p0, Lcom/meizu/widget/RecipientEdit;->mSipVersion:Ljava/util/HashMap;

    invoke-virtual {v8, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1748
    iget-object v8, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientNotSip:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v6

    .line 1749
    iget-object v8, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientLayout:Landroid/widget/AbsoluteLayout;

    add-int/lit8 v9, v2, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/AbsoluteLayout;->removeViewAt(I)V

    .line 1736
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1750
    :cond_3
    if-ne v2, v10, :cond_2

    .line 1751
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1752
    iget-object v8, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientDataList:Ljava/util/ArrayList;

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1753
    .local v7, removeStr:Ljava/lang/String;
    iget-object v8, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientHandler:Lcom/meizu/widget/RecipientEdit$RecipientHandler;

    if-eqz v8, :cond_4

    .line 1754
    iget-object v8, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientHandler:Lcom/meizu/widget/RecipientEdit$RecipientHandler;

    invoke-virtual {v8, v10, v7}, Lcom/meizu/widget/RecipientEdit$RecipientHandler;->removeMessages(ILjava/lang/Object;)V

    .line 1757
    :cond_4
    iget-object v8, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientMap:Ljava/util/HashMap;

    invoke-virtual {v8, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1758
    iget-object v8, p0, Lcom/meizu/widget/RecipientEdit;->mCheckingRecipient:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1759
    iget-object v8, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientState:Ljava/util/HashMap;

    invoke-virtual {v8, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1760
    iget-object v8, p0, Lcom/meizu/widget/RecipientEdit;->mSipVersion:Ljava/util/HashMap;

    invoke-virtual {v8, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1761
    iget-object v8, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientNotSip:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v6

    .line 1762
    iget-object v8, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientLayout:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v8, v10}, Landroid/widget/AbsoluteLayout;->removeViewAt(I)V

    goto :goto_1

    .line 1767
    .end local v5           #number:Ljava/lang/String;
    .end local v7           #removeStr:Ljava/lang/String;
    :cond_5
    iget-object v8, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientDataList:Ljava/util/ArrayList;

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 1768
    iput-boolean v11, p0, Lcom/meizu/widget/RecipientEdit;->mHasEmail:Z

    .line 1771
    :cond_6
    if-eqz v6, :cond_8

    .line 1772
    iget-boolean v8, p0, Lcom/meizu/widget/RecipientEdit;->mCheckSipDestAddr:Z

    if-eqz v8, :cond_8

    iget-object v8, p0, Lcom/meizu/widget/RecipientEdit;->mSipDestChecker:Lcom/meizu/widget/RecipientStateInfo$SipDestChecker;

    if-eqz v8, :cond_8

    iget-object v8, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientNotSip:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 1773
    iget-object v8, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientState:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_7
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1774
    .restart local v5       #number:Ljava/lang/String;
    iget-object v8, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientState:Ljava/util/HashMap;

    invoke-virtual {v8, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    sget-object v9, Lcom/meizu/widget/RecipientStateInfo$SipState;->SIP_UNCHECK:Lcom/meizu/widget/RecipientStateInfo$SipState;

    if-ne v8, v9, :cond_7

    iget-object v8, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientNotSip:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 1776
    iget-object v8, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientState:Ljava/util/HashMap;

    sget-object v9, Lcom/meizu/widget/RecipientStateInfo$SipState;->SIP_CHECKING:Lcom/meizu/widget/RecipientStateInfo$SipState;

    invoke-virtual {v8, v5, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1777
    iget-object v8, p0, Lcom/meizu/widget/RecipientEdit;->mCheckingRecipient:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1778
    iget-object v8, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientHandler:Lcom/meizu/widget/RecipientEdit$RecipientHandler;

    invoke-virtual {v8, v10, v5}, Lcom/meizu/widget/RecipientEdit$RecipientHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    .line 1779
    invoke-direct {p0}, Lcom/meizu/widget/RecipientEdit;->beginCheck()V

    goto :goto_2

    .line 1784
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v5           #number:Ljava/lang/String;
    :cond_8
    invoke-direct {p0}, Lcom/meizu/widget/RecipientEdit;->endCheck()V

    .line 1785
    invoke-virtual {p0}, Lcom/meizu/widget/RecipientEdit;->hasFocus()Z

    move-result v8

    invoke-direct {p0, v8}, Lcom/meizu/widget/RecipientEdit;->refreshLayout(Z)V

    .line 1787
    iget-object v8, p0, Lcom/meizu/widget/RecipientEdit;->mOnSipStateChangedListener:Lcom/meizu/widget/RecipientStateInfo$OnSipStateChangedListener;

    if-eqz v8, :cond_9

    .line 1788
    iget-object v8, p0, Lcom/meizu/widget/RecipientEdit;->mOnSipStateChangedListener:Lcom/meizu/widget/RecipientStateInfo$OnSipStateChangedListener;

    invoke-virtual {p0}, Lcom/meizu/widget/RecipientEdit;->getSipState()Lcom/meizu/widget/RecipientStateInfo$SipState;

    move-result-object v9

    invoke-interface {v8, p0, v9}, Lcom/meizu/widget/RecipientStateInfo$OnSipStateChangedListener;->onSipStateChanged(Landroid/view/View;Lcom/meizu/widget/RecipientStateInfo$SipState;)V

    .line 1791
    :cond_9
    iget-object v8, p0, Lcom/meizu/widget/RecipientEdit;->mOnRecipientChangedListener:Lcom/meizu/widget/RecipientEdit$OnRecipientChangedListener;

    if-eqz v8, :cond_a

    .line 1792
    iget-object v8, p0, Lcom/meizu/widget/RecipientEdit;->mOnRecipientChangedListener:Lcom/meizu/widget/RecipientEdit$OnRecipientChangedListener;

    invoke-interface {v8}, Lcom/meizu/widget/RecipientEdit$OnRecipientChangedListener;->OnRecipientChanged()V

    .line 1795
    .end local v2           #index:I
    .end local v4           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6           #refreshSipState:Z
    :cond_a
    return-void
.end method

.method public removeRecipient(Ljava/lang/CharSequence;)Z
    .locals 3
    .parameter "number"

    .prologue
    .line 1662
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/meizu/widget/RecipientEdit;->removeSpecialCharacter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1663
    .local v0, dstNumber:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1664
    const/4 v2, 0x0

    .line 1668
    :goto_0
    return v2

    .line 1667
    :cond_0
    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientDataList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 1668
    .local v1, index:I
    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/meizu/widget/RecipientEdit;->removeRecipientAt(IZ)Z

    move-result v2

    goto :goto_0
.end method

.method public requestFocus(ILandroid/graphics/Rect;)Z
    .locals 1
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 983
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v0, p1, p2}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public setAccount(Landroid/accounts/Account;)V
    .locals 1
    .parameter "account"

    .prologue
    .line 2351
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v0}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;

    invoke-virtual {v0, p1}, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->setAccount(Landroid/accounts/Account;)V

    .line 2352
    return-void
.end method

.method public setButtonClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 2080
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit;->mAddContactsBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2081
    return-void
.end method

.method public setButtonVisibility(Z)V
    .locals 2
    .parameter "visibility"

    .prologue
    .line 2084
    iput-boolean p1, p0, Lcom/meizu/widget/RecipientEdit;->mBtnVisibility:Z

    .line 2086
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mAddContactsBtn:Landroid/widget/ImageButton;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 2087
    return-void

    .line 2086
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setDragWatcher(Lcom/meizu/widget/RecipientEdit$RecipientDragWatcher;)V
    .locals 0
    .parameter "dragWatcher"

    .prologue
    .line 2053
    iput-object p1, p0, Lcom/meizu/widget/RecipientEdit;->mDragWatcher:Lcom/meizu/widget/RecipientEdit$RecipientDragWatcher;

    .line 2054
    return-void
.end method

.method public setEnabledDrag(Z)V
    .locals 0
    .parameter "enabledDrag"

    .prologue
    .line 2049
    iput-boolean p1, p0, Lcom/meizu/widget/RecipientEdit;->mEnabledDrag:Z

    .line 2050
    return-void
.end method

.method public setFocusable(Z)V
    .locals 1
    .parameter "focusable"

    .prologue
    .line 988
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v0, p1}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->setFocusable(Z)V

    .line 989
    return-void
.end method

.method public setFocusableInTouchMode(Z)V
    .locals 1
    .parameter "focusableInTouchMode"

    .prologue
    .line 993
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v0, p1}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->setFocusableInTouchMode(Z)V

    .line 994
    return-void
.end method

.method public setHint(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "hint"

    .prologue
    .line 2062
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit;->mHintView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2063
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit;->mHintView2:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2064
    return-void
.end method

.method public setImeOptions(I)V
    .locals 3
    .parameter "imeOptions"

    .prologue
    .line 2129
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v1}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->getImeOptions()I

    move-result v1

    and-int/lit16 v0, v1, 0xff

    .line 2130
    .local v0, oldImeOptions:I
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    or-int v2, p1, v0

    invoke-virtual {v1, v2}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->setImeOptions(I)V

    .line 2131
    return-void
.end method

.method public setInputType(I)V
    .locals 2
    .parameter "inputType"

    .prologue
    const/4 v1, 0x2

    .line 2098
    iget v0, p0, Lcom/meizu/widget/RecipientEdit;->mInputType:I

    if-eq v0, p1, :cond_0

    .line 2099
    if-ne p1, v1, :cond_1

    .line 2100
    const v0, 0x1080629

    invoke-virtual {p0, v0}, Lcom/meizu/widget/RecipientEdit;->setBackgroundResource(I)V

    .line 2106
    :cond_0
    :goto_0
    iput p1, p0, Lcom/meizu/widget/RecipientEdit;->mInputType:I

    .line 2108
    iget v0, p0, Lcom/meizu/widget/RecipientEdit;->mInputType:I

    if-ne v0, v1, :cond_2

    .line 2109
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->setInputType(I)V

    .line 2115
    :goto_1
    return-void

    .line 2102
    :cond_1
    const v0, 0x108062a

    invoke-virtual {p0, v0}, Lcom/meizu/widget/RecipientEdit;->setBackgroundResource(I)V

    goto :goto_0

    .line 2112
    :cond_2
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    const/16 v1, 0xb1

    invoke-virtual {v0, v1}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->setInputType(I)V

    goto :goto_1
.end method

.method public setMaxHeight(I)V
    .locals 0
    .parameter "maxHeight"

    .prologue
    .line 2067
    iput p1, p0, Lcom/meizu/widget/RecipientEdit;->mMaxHeight:I

    .line 2068
    return-void
.end method

.method public setOnDragListener(Landroid/view/View$OnDragListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 2058
    iput-object p1, p0, Lcom/meizu/widget/RecipientEdit;->mOnDragListener:Landroid/view/View$OnDragListener;

    .line 2059
    return-void
.end method

.method public setOnDropDownListener(Lcom/meizu/widget/RecipientEdit$OnDropDownListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 2336
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v0, p0, p1}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->setOnPopupListener(Landroid/view/View;Lcom/meizu/widget/RecipientEdit$OnDropDownListener;)V

    .line 2337
    return-void
.end method

.method public setOnEmailAddWhenGroupListener(Lcom/meizu/widget/RecipientEdit$OnEmailAddWhenGroupListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 2329
    iput-object p1, p0, Lcom/meizu/widget/RecipientEdit;->mOnEmailAddWhenGroupListener:Lcom/meizu/widget/RecipientEdit$OnEmailAddWhenGroupListener;

    .line 2330
    return-void
.end method

.method public setOnKeyPreImeListener(Landroid/widget/EditText$OnKeyPreImeListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 2301
    iput-object p1, p0, Lcom/meizu/widget/RecipientEdit;->mOnKeyPreImeListener:Landroid/widget/EditText$OnKeyPreImeListener;

    .line 2302
    return-void
.end method

.method public setOnRecipientChangedListener(Lcom/meizu/widget/RecipientEdit$OnRecipientChangedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 2315
    iput-object p1, p0, Lcom/meizu/widget/RecipientEdit;->mOnRecipientChangedListener:Lcom/meizu/widget/RecipientEdit$OnRecipientChangedListener;

    .line 2316
    return-void
.end method

.method public setOnRecipientFirstAddListener(Lcom/meizu/widget/RecipientEdit$OnRecipientFirstAddListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 2322
    iput-object p1, p0, Lcom/meizu/widget/RecipientEdit;->mOnRecipientFirstAddListener:Lcom/meizu/widget/RecipientEdit$OnRecipientFirstAddListener;

    .line 2323
    return-void
.end method

.method public setOnSipCheckerBehaviorListener(Lcom/meizu/widget/RecipientStateInfo$OnSipCheckerBehaviorListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 2297
    iput-object p1, p0, Lcom/meizu/widget/RecipientEdit;->mOnSipCheckerBehaviorListener:Lcom/meizu/widget/RecipientStateInfo$OnSipCheckerBehaviorListener;

    .line 2298
    return-void
.end method

.method public setOnSipStateChangedListener(Lcom/meizu/widget/RecipientStateInfo$OnSipStateChangedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 2290
    iput-object p1, p0, Lcom/meizu/widget/RecipientEdit;->mOnSipStateChangedListener:Lcom/meizu/widget/RecipientStateInfo$OnSipStateChangedListener;

    .line 2291
    return-void
.end method

.method public setOnTextChangedListener(Lcom/meizu/widget/RecipientEdit$OnTextChangedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 2308
    iput-object p1, p0, Lcom/meizu/widget/RecipientEdit;->mOnTextChangedListener:Lcom/meizu/widget/RecipientEdit$OnTextChangedListener;

    .line 2309
    return-void
.end method

.method public setSipDestChecker(Lcom/meizu/widget/RecipientStateInfo$SipDestChecker;)V
    .locals 4
    .parameter "checker"

    .prologue
    const/4 v3, 0x1

    .line 2273
    invoke-virtual {p0, v3}, Lcom/meizu/widget/RecipientEdit;->checkSipDestAddress(Z)V

    .line 2274
    iput-object p1, p0, Lcom/meizu/widget/RecipientEdit;->mSipDestChecker:Lcom/meizu/widget/RecipientStateInfo$SipDestChecker;

    .line 2276
    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit;->mSipDestChecker:Lcom/meizu/widget/RecipientStateInfo$SipDestChecker;

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit;->mCheckingRecipient:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2277
    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientHandler:Lcom/meizu/widget/RecipientEdit$RecipientHandler;

    invoke-virtual {v2, v3}, Lcom/meizu/widget/RecipientEdit$RecipientHandler;->removeMessages(I)V

    .line 2278
    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit;->mCheckingRecipient:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2279
    .local v1, num:Ljava/lang/String;
    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientState:Ljava/util/HashMap;

    sget-object v3, Lcom/meizu/widget/RecipientStateInfo$SipState;->SIP_UNCHECK:Lcom/meizu/widget/RecipientStateInfo$SipState;

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2281
    .end local v1           #num:Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit;->mCheckingRecipient:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 2282
    invoke-direct {p0}, Lcom/meizu/widget/RecipientEdit;->endCheck()V

    .line 2284
    .end local v0           #i$:Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public setSipDestState(Ljava/lang/String;Lcom/meizu/widget/RecipientStateInfo$SipState;I)V
    .locals 4
    .parameter "number"
    .parameter "state"
    .parameter "sipVersion"

    .prologue
    .line 2217
    invoke-direct {p0, p1}, Lcom/meizu/widget/RecipientEdit;->removeSpecialCharacter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2218
    .local v0, dstNum:Ljava/lang/String;
    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit;->mCheckingRecipient:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2219
    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v2}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/meizu/widget/RecipientEdit;->removeSpecialCharacter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2220
    .local v1, input:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientDataList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2235
    :cond_0
    :goto_0
    return-void

    .line 2225
    :cond_1
    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientState:Ljava/util/HashMap;

    invoke-virtual {v2, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2226
    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit;->mSipVersion:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2227
    sget-object v2, Lcom/meizu/widget/RecipientStateInfo$SipState;->SIP_NO:Lcom/meizu/widget/RecipientStateInfo$SipState;

    if-ne p2, v2, :cond_2

    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientNotSip:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2228
    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientNotSip:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2231
    :cond_2
    invoke-direct {p0}, Lcom/meizu/widget/RecipientEdit;->endCheck()V

    .line 2232
    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit;->mOnSipStateChangedListener:Lcom/meizu/widget/RecipientStateInfo$OnSipStateChangedListener;

    if-eqz v2, :cond_0

    .line 2233
    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit;->mOnSipStateChangedListener:Lcom/meizu/widget/RecipientStateInfo$OnSipStateChangedListener;

    invoke-virtual {p0}, Lcom/meizu/widget/RecipientEdit;->getSipState()Lcom/meizu/widget/RecipientStateInfo$SipState;

    move-result-object v3

    invoke-interface {v2, p0, v3}, Lcom/meizu/widget/RecipientStateInfo$OnSipStateChangedListener;->onSipStateChanged(Landroid/view/View;Lcom/meizu/widget/RecipientStateInfo$SipState;)V

    goto :goto_0
.end method
