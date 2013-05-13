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
    .line 1558
    const-string v0, "(\\+[0-9]+[\\- \\.]*)?(\\([0-9]+\\)[\\- \\.]*)?([0-9][0-9\\- \\.]*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/meizu/widget/RecipientEdit;->PHONE:Ljava/util/regex/Pattern;

    .line 3105
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
    .line 219
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/meizu/widget/RecipientEdit;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 220
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 223
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/widget/RecipientEdit;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 224
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

    .line 227
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 172
    iput-boolean v2, p0, Lcom/meizu/widget/RecipientEdit;->mCheckSipDestAddr:Z

    .line 177
    iput-boolean v3, p0, Lcom/meizu/widget/RecipientEdit;->mOpenGlobalAddressBook:Z

    .line 196
    new-instance v1, Ljava/lang/Object;

    invoke-direct/range {v1 .. v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mDbLock:Ljava/lang/Object;

    .line 855
    new-instance v1, Lcom/meizu/widget/RecipientEdit$2;

    invoke-direct {v1, p0}, Lcom/meizu/widget/RecipientEdit$2;-><init>(Lcom/meizu/widget/RecipientEdit;)V

    iput-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mWatcher:Landroid/text/TextWatcher;

    .line 926
    new-instance v1, Lcom/meizu/widget/RecipientEdit$3;

    invoke-direct {v1, p0}, Lcom/meizu/widget/RecipientEdit$3;-><init>(Lcom/meizu/widget/RecipientEdit;)V

    iput-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mRunnable:Ljava/lang/Runnable;

    .line 950
    new-instance v1, Lcom/meizu/widget/RecipientEdit$4;

    invoke-direct {v1, p0}, Lcom/meizu/widget/RecipientEdit$4;-><init>(Lcom/meizu/widget/RecipientEdit;)V

    iput-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 229
    sget-object v1, Lcom/android/internal/R$styleable;->RecipientEdit:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 231
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/meizu/widget/RecipientEdit;->mInputType:I

    .line 232
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mHintStr:Ljava/lang/String;

    .line 233
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/meizu/widget/RecipientEdit;->mMaxHeight:I

    .line 234
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 236
    invoke-direct {p0}, Lcom/meizu/widget/RecipientEdit;->initRecipientEdit()V

    .line 237
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/widget/RecipientEdit;)Landroid/widget/EditText$OnKeyPreImeListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit;->mOnKeyPreImeListener:Landroid/widget/EditText$OnKeyPreImeListener;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/meizu/widget/RecipientEdit;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientNotSip:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/meizu/widget/RecipientEdit;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/meizu/widget/RecipientEdit;->refreshSipDestState()V

    return-void
.end method

.method static synthetic access$1200(Lcom/meizu/widget/RecipientEdit;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/meizu/widget/RecipientEdit;->endCheck()V

    return-void
.end method

.method static synthetic access$1300(Lcom/meizu/widget/RecipientEdit;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit;->mViewSelected:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/meizu/widget/RecipientEdit;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    iput-object p1, p0, Lcom/meizu/widget/RecipientEdit;->mViewSelected:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/meizu/widget/RecipientEdit;)Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/meizu/widget/RecipientEdit;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/meizu/widget/RecipientEdit;->isDefaultInputMethod()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/meizu/widget/RecipientEdit;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget v0, p0, Lcom/meizu/widget/RecipientEdit;->mInputType:I

    return v0
.end method

.method static synthetic access$1700(Lcom/meizu/widget/RecipientEdit;)Lcom/meizu/widget/RecipientEdit$OnRecipientChangedListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit;->mOnRecipientChangedListener:Lcom/meizu/widget/RecipientEdit$OnRecipientChangedListener;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/meizu/widget/RecipientEdit;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/meizu/widget/RecipientEdit;->removeSpecialCharacter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lcom/meizu/widget/RecipientEdit;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/meizu/widget/RecipientEdit;->isValidRecipient(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/meizu/widget/RecipientEdit;)Lcom/meizu/widget/RecipientEdit$OnTextChangedListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit;->mOnTextChangedListener:Lcom/meizu/widget/RecipientEdit$OnTextChangedListener;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/meizu/widget/RecipientEdit;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/meizu/widget/RecipientEdit;->mCheckSipDestAddr:Z

    return v0
.end method

.method static synthetic access$2100(Lcom/meizu/widget/RecipientEdit;)Lcom/meizu/widget/RecipientStateInfo$SipDestChecker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit;->mSipDestChecker:Lcom/meizu/widget/RecipientStateInfo$SipDestChecker;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/meizu/widget/RecipientEdit;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/meizu/widget/RecipientEdit;->beginCheck()V

    return-void
.end method

.method static synthetic access$2300(Lcom/meizu/widget/RecipientEdit;J)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    invoke-direct {p0, p1, p2}, Lcom/meizu/widget/RecipientEdit;->addGroupData(J)I

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lcom/meizu/widget/RecipientEdit;)Lcom/meizu/widget/RecipientEdit$OnRecipientFirstAddListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit;->mOnRecipientFirstAddListener:Lcom/meizu/widget/RecipientEdit$OnRecipientFirstAddListener;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/meizu/widget/RecipientEdit;)Lcom/meizu/widget/RecipientEdit$DragInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit;->mDragInfo:Lcom/meizu/widget/RecipientEdit$DragInfo;

    return-object v0
.end method

.method static synthetic access$300(Lcom/meizu/widget/RecipientEdit;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit;->mRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/meizu/widget/RecipientEdit;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3300()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    sget-object v0, Lcom/meizu/widget/RecipientEdit;->PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/meizu/widget/RecipientEdit;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit;->mDbLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/meizu/widget/RecipientEdit;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/meizu/widget/RecipientEdit;->mIsSaveHistory:Z

    return v0
.end method

.method static synthetic access$3600(Lcom/meizu/widget/RecipientEdit;)Lcom/meizu/widget/RecipientDbHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit;->mDbHelper:Lcom/meizu/widget/RecipientDbHelper;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/meizu/widget/RecipientEdit;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/meizu/widget/RecipientEdit;->mOpenGlobalAddressBook:Z

    return v0
.end method

.method static synthetic access$3800(Lcom/meizu/widget/RecipientEdit;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/meizu/widget/RecipientEdit;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/meizu/widget/RecipientEdit;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit;->mCheckingRecipient:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/meizu/widget/RecipientEdit;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/meizu/widget/RecipientEdit;->queryDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4100(Lcom/meizu/widget/RecipientEdit;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/meizu/widget/RecipientEdit;)Landroid/widget/AbsoluteLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientLayout:Landroid/widget/AbsoluteLayout;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/meizu/widget/RecipientEdit;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/meizu/widget/RecipientEdit;->refreshLayout(Z)V

    return-void
.end method

.method static synthetic access$4400(Lcom/meizu/widget/RecipientEdit;)Lcom/meizu/widget/RecipientEdit$HistoryHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit;->mHistoryHandler:Lcom/meizu/widget/RecipientEdit$HistoryHandler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/meizu/widget/RecipientEdit;)Lcom/meizu/widget/RecipientStateInfo$OnSipStateChangedListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit;->mOnSipStateChangedListener:Lcom/meizu/widget/RecipientStateInfo$OnSipStateChangedListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/meizu/widget/RecipientEdit;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientDataList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$700(Lcom/meizu/widget/RecipientEdit;)Lcom/meizu/widget/RecipientEdit$RecipientHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientHandler:Lcom/meizu/widget/RecipientEdit$RecipientHandler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/meizu/widget/RecipientEdit;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientState:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$900(Lcom/meizu/widget/RecipientEdit;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit;->mSipVersion:Ljava/util/HashMap;

    return-object v0
.end method

.method private addGroupData(J)I
    .locals 13
    .parameter "groupId"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v4, 0x0

    .line 1290
    const/4 v6, 0x0

    .line 1291
    .local v6, dataCursor:Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 1292
    .local v1, uri:Landroid/net/Uri;
    iget v0, p0, Lcom/meizu/widget/RecipientEdit;->mInputType:I

    packed-switch v0, :pswitch_data_0

    .line 1315
    :goto_0
    if-eqz v6, :cond_5

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_5

    .line 1316
    const/4 v9, 0x0

    .line 1318
    .local v9, result:I
    const/4 v0, -0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1319
    :cond_0
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1320
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1321
    .local v8, number:Ljava/lang/String;
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1322
    .local v7, name:Ljava/lang/String;
    invoke-direct {p0, v8, v7}, Lcom/meizu/widget/RecipientEdit;->addRecipientInternal(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    .line 1323
    .local v10, ret:Z
    if-eqz v10, :cond_0

    .line 1324
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 1295
    .end local v7           #name:Ljava/lang/String;
    .end local v8           #number:Ljava/lang/String;
    .end local v9           #result:I
    .end local v10           #ret:Z
    :pswitch_0
    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_GROUP_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 1296
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/meizu/widget/RecipientEdit;->PROJECTION:[Ljava/lang/String;

    const-string v3, "is_primary = 1"

    const-string v5, "sort_key"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1300
    goto :goto_0

    .line 1303
    :pswitch_1
    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_GROUP_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 1304
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/meizu/widget/RecipientEdit;->PROJECTION:[Ljava/lang/String;

    const-string v5, "sort_key"

    move-object v3, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1308
    goto :goto_0

    .line 1328
    .restart local v9       #result:I
    :cond_1
    if-lez v9, :cond_4

    .line 1329
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit;->mOnRecipientChangedListener:Lcom/meizu/widget/RecipientEdit$OnRecipientChangedListener;

    if-eqz v0, :cond_2

    .line 1330
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit;->mOnRecipientChangedListener:Lcom/meizu/widget/RecipientEdit$OnRecipientChangedListener;

    invoke-interface {v0}, Lcom/meizu/widget/RecipientEdit$OnRecipientChangedListener;->OnRecipientChanged()V

    .line 1333
    :cond_2
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v12, :cond_3

    iget-boolean v0, p0, Lcom/meizu/widget/RecipientEdit;->mHasEmail:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit;->mOnEmailAddWhenGroupListener:Lcom/meizu/widget/RecipientEdit$OnEmailAddWhenGroupListener;

    if-eqz v0, :cond_3

    .line 1335
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit;->mOnEmailAddWhenGroupListener:Lcom/meizu/widget/RecipientEdit$OnEmailAddWhenGroupListener;

    invoke-interface {v0}, Lcom/meizu/widget/RecipientEdit$OnEmailAddWhenGroupListener;->OnEmailAddWhenGroup()V

    .line 1338
    :cond_3
    iget-boolean v0, p0, Lcom/meizu/widget/RecipientEdit;->mIsFirstLayout:Z

    if-nez v0, :cond_4

    .line 1339
    invoke-virtual {p0}, Lcom/meizu/widget/RecipientEdit;->hasFocus()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/meizu/widget/RecipientEdit;->refreshLayout(Z)V

    .line 1343
    :cond_4
    invoke-direct {p0}, Lcom/meizu/widget/RecipientEdit;->saveHistory()V

    .line 1350
    .end local v9           #result:I
    :goto_2
    return v9

    .line 1347
    :cond_5
    if-eqz v6, :cond_6

    .line 1348
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_6
    move v9, v11

    .line 1350
    goto :goto_2

    .line 1292
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

    .line 1487
    iget-object v3, p0, Lcom/meizu/widget/RecipientEdit;->mContext:Landroid/content/Context;

    const v4, 0x10900c8

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/meizu/widget/RecipientEdit;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/meizu/widget/RecipientEdit$ItemView;

    .line 1488
    .local v1, item:Lcom/meizu/widget/RecipientEdit$ItemView;
    invoke-virtual {v1}, Lcom/meizu/widget/RecipientEdit$ItemView;->getView()Landroid/widget/TextView;

    move-result-object v2

    .line 1489
    .local v2, tv:Landroid/widget/TextView;
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1490
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setEllipsisSmall(Z)V

    .line 1492
    invoke-virtual {v1, v6}, Lcom/meizu/widget/RecipientEdit$ItemView;->setClickable(Z)V

    .line 1493
    invoke-virtual {v1, p0}, Lcom/meizu/widget/RecipientEdit$ItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1494
    invoke-virtual {v1, v6}, Lcom/meizu/widget/RecipientEdit$ItemView;->setLongClickable(Z)V

    .line 1495
    invoke-virtual {v1, p0}, Lcom/meizu/widget/RecipientEdit$ItemView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1496
    invoke-virtual {v1, v7}, Lcom/meizu/widget/RecipientEdit$ItemView;->setFocusable(Z)V

    .line 1497
    invoke-virtual {v1, v7}, Lcom/meizu/widget/RecipientEdit$ItemView;->setFocusableInTouchMode(Z)V

    .line 1498
    iget-object v3, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientLayout:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v3}, Landroid/widget/AbsoluteLayout;->getChildCount()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .line 1499
    .local v0, index:I
    iget-object v3, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientLayout:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v3, v1, v0}, Landroid/widget/AbsoluteLayout;->addView(Landroid/view/View;I)V

    .line 1500
    return v0
.end method

.method private addRecipientInternal(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "number"
    .parameter "contactName"

    .prologue
    .line 1354
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

    .line 1358
    invoke-direct {p0, p1}, Lcom/meizu/widget/RecipientEdit;->removeSpecialCharacter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1360
    .local v1, dstNumber:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1421
    :cond_0
    :goto_0
    return v6

    .line 1364
    :cond_1
    iget-object v8, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientDataList:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 1368
    iget-boolean v6, p0, Lcom/meizu/widget/RecipientEdit;->mHasEmail:Z

    if-nez v6, :cond_2

    invoke-static {v1}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1369
    iput-boolean v7, p0, Lcom/meizu/widget/RecipientEdit;->mHasEmail:Z

    .line 1372
    :cond_2
    move-object v0, p2

    .line 1373
    .local v0, displayName:Ljava/lang/String;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1374
    invoke-direct {p0, v1}, Lcom/meizu/widget/RecipientEdit;->queryDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1376
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 1377
    move-object v0, p2

    .line 1383
    :cond_3
    :goto_1
    invoke-direct {p0, v1}, Lcom/meizu/widget/RecipientEdit;->isValidRecipient(Ljava/lang/String;)Z

    move-result v5

    .line 1384
    .local v5, valid:Z
    move v2, p3

    .line 1385
    .local v2, index:I
    iget-object v6, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientLayout:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v6, v2}, Landroid/widget/AbsoluteLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1386
    .local v3, item:Landroid/view/View;
    if-eqz v3, :cond_7

    .line 1387
    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1388
    invoke-virtual {v3, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1395
    :cond_4
    :goto_2
    iget-object v6, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientDataList:Ljava/util/ArrayList;

    add-int/lit8 v8, v2, -0x1

    invoke-virtual {v6, v8, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1396
    iget-object v6, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientMap:Ljava/util/HashMap;

    invoke-virtual {v6, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1399
    iget-object v6, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientState:Ljava/util/HashMap;

    invoke-virtual {v6, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/meizu/widget/RecipientStateInfo$SipState;

    .line 1400
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

    .line 1403
    goto :goto_0

    .line 1379
    .end local v2           #index:I
    .end local v3           #item:Landroid/view/View;
    .end local v4           #state:Lcom/meizu/widget/RecipientStateInfo$SipState;
    .end local v5           #valid:Z
    :cond_6
    move-object v0, v1

    goto :goto_1

    .line 1390
    .restart local v2       #index:I
    .restart local v3       #item:Landroid/view/View;
    .restart local v5       #valid:Z
    :cond_7
    invoke-direct {p0, v0}, Lcom/meizu/widget/RecipientEdit;->addItemView(Ljava/lang/CharSequence;)I

    move-result v2

    .line 1391
    iget-boolean v6, p0, Lcom/meizu/widget/RecipientEdit;->mIsSaveHistory:Z

    if-eqz v6, :cond_4

    if-eqz v5, :cond_4

    .line 1392
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

    .line 1406
    .restart local v4       #state:Lcom/meizu/widget/RecipientStateInfo$SipState;
    :cond_8
    if-eqz v5, :cond_b

    .line 1407
    iget-boolean v6, p0, Lcom/meizu/widget/RecipientEdit;->mCheckSipDestAddr:Z

    if-eqz v6, :cond_a

    iget-object v6, p0, Lcom/meizu/widget/RecipientEdit;->mSipDestChecker:Lcom/meizu/widget/RecipientStateInfo$SipDestChecker;

    if-eqz v6, :cond_a

    iget-object v6, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientNotSip:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 1408
    iget-object v6, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientState:Ljava/util/HashMap;

    sget-object v8, Lcom/meizu/widget/RecipientStateInfo$SipState;->SIP_CHECKING:Lcom/meizu/widget/RecipientStateInfo$SipState;

    invoke-virtual {v6, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1409
    iget-object v6, p0, Lcom/meizu/widget/RecipientEdit;->mCheckingRecipient:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1410
    iget-object v6, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientHandler:Lcom/meizu/widget/RecipientEdit$RecipientHandler;

    invoke-virtual {v6, v7, v1}, Lcom/meizu/widget/RecipientEdit$RecipientHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 1411
    invoke-direct {p0}, Lcom/meizu/widget/RecipientEdit;->beginCheck()V

    :cond_9
    :goto_3
    move v6, v7

    .line 1421
    goto/16 :goto_0

    .line 1413
    :cond_a
    iget-object v6, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientState:Ljava/util/HashMap;

    sget-object v8, Lcom/meizu/widget/RecipientStateInfo$SipState;->SIP_UNCHECK:Lcom/meizu/widget/RecipientStateInfo$SipState;

    invoke-virtual {v6, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 1416
    :cond_b
    iget-object v6, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientNotSip:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1417
    iget-object v6, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientNotSip:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ne v6, v7, :cond_9

    iget-object v6, p0, Lcom/meizu/widget/RecipientEdit;->mOnSipStateChangedListener:Lcom/meizu/widget/RecipientStateInfo$OnSipStateChangedListener;

    if-eqz v6, :cond_9

    .line 1418
    iget-object v6, p0, Lcom/meizu/widget/RecipientEdit;->mOnSipStateChangedListener:Lcom/meizu/widget/RecipientStateInfo$OnSipStateChangedListener;

    sget-object v8, Lcom/meizu/widget/RecipientStateInfo$SipState;->SIP_NO:Lcom/meizu/widget/RecipientStateInfo$SipState;

    invoke-interface {v6, p0, v8}, Lcom/meizu/widget/RecipientStateInfo$OnSipStateChangedListener;->onSipStateChanged(Landroid/view/View;Lcom/meizu/widget/RecipientStateInfo$SipState;)V

    goto :goto_3
.end method

.method private beginCheck()V
    .locals 1

    .prologue
    .line 2256
    iget-boolean v0, p0, Lcom/meizu/widget/RecipientEdit;->mBeginSipCheck:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit;->mOnSipCheckerBehaviorListener:Lcom/meizu/widget/RecipientStateInfo$OnSipCheckerBehaviorListener;

    if-eqz v0, :cond_0

    .line 2257
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/widget/RecipientEdit;->mBeginSipCheck:Z

    .line 2258
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit;->mOnSipCheckerBehaviorListener:Lcom/meizu/widget/RecipientStateInfo$OnSipCheckerBehaviorListener;

    invoke-interface {v0, p0}, Lcom/meizu/widget/RecipientStateInfo$OnSipCheckerBehaviorListener;->beginCheck(Landroid/view/View;)V

    .line 2260
    :cond_0
    return-void
.end method

.method private changeViewPos(Lcom/meizu/widget/RecipientEdit$DragInfo;II)I
    .locals 19
    .parameter "dragInfo"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 607
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/RecipientEdit;->mRecipientScrollView:Landroid/widget/ScrollView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/ScrollView;->getLeft()I

    move-result v17

    sub-int p2, p2, v17

    .line 608
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/RecipientEdit;->mRecipientScrollView:Landroid/widget/ScrollView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/ScrollView;->getTop()I

    move-result v17

    sub-int p3, p3, v17

    .line 610
    move-object/from16 v0, p1

    iget v0, v0, Lcom/meizu/widget/RecipientEdit$DragInfo;->mOffSetX:I

    move/from16 v17, v0

    sub-int v10, p2, v17

    .line 611
    .local v10, left:I
    move-object/from16 v0, p1

    iget v0, v0, Lcom/meizu/widget/RecipientEdit$DragInfo;->mOffSetY:I

    move/from16 v17, v0

    sub-int v15, p3, v17

    .line 612
    .local v15, top:I
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/meizu/widget/RecipientEdit$DragInfo;->mDragView:Lcom/meizu/widget/RecipientEdit$ItemView;

    move-object/from16 v16, v0

    .line 613
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

    .line 614
    .local v14, shadowFrame:Landroid/graphics/Rect;
    invoke-virtual {v14}, Landroid/graphics/Rect;->centerX()I

    move-result v12

    .line 615
    .local v12, shadowCenterX:I
    invoke-virtual {v14}, Landroid/graphics/Rect;->centerY()I

    move-result v13

    .line 617
    .local v13, shadowCenterY:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/RecipientEdit;->mRecipientLayout:Landroid/widget/AbsoluteLayout;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/AbsoluteLayout;->indexOfChild(Landroid/view/View;)I

    move-result v9

    .line 618
    .local v9, lastIndex:I
    const/4 v8, -0x1

    .line 619
    .local v8, index:I
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 620
    .local v6, frame:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/RecipientEdit;->mRecipientLayout:Landroid/widget/AbsoluteLayout;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/AbsoluteLayout;->getChildCount()I

    move-result v5

    .line 621
    .local v5, count:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    if-ge v7, v5, :cond_1

    .line 622
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/RecipientEdit;->mRecipientLayout:Landroid/widget/AbsoluteLayout;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Landroid/widget/AbsoluteLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 623
    .local v4, child:Landroid/view/View;
    invoke-virtual {v4, v6}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 624
    invoke-virtual {v6}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    .line 625
    .local v2, centerX:I
    invoke-virtual {v6}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    .line 626
    .local v3, centerY:I
    invoke-virtual {v6, v12, v13}, Landroid/graphics/Rect;->contains(II)Z

    move-result v17

    if-nez v17, :cond_0

    invoke-virtual {v14, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 628
    :cond_0
    if-ge v2, v12, :cond_6

    .line 629
    add-int/lit8 v8, v7, 0x1

    .line 643
    .end local v2           #centerX:I
    .end local v3           #centerY:I
    .end local v4           #child:Landroid/view/View;
    :cond_1
    :goto_1
    if-nez v8, :cond_a

    .line 644
    const/4 v8, 0x1

    .line 649
    :cond_2
    :goto_2
    if-lez v9, :cond_3

    if-ge v9, v8, :cond_3

    .line 650
    add-int/lit8 v8, v8, -0x1

    .line 653
    :cond_3
    if-gez v9, :cond_4

    if-gez v8, :cond_4

    .line 654
    add-int/lit8 v8, v5, -0x1

    .line 657
    :cond_4
    if-lez v8, :cond_b

    if-eq v8, v9, :cond_b

    .line 658
    invoke-virtual/range {v16 .. v16}, Lcom/meizu/widget/RecipientEdit$ItemView;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    check-cast v11, Landroid/view/ViewGroup;

    .line 659
    .local v11, oldParent:Landroid/view/ViewGroup;
    if-eqz v11, :cond_5

    .line 660
    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 663
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/RecipientEdit;->mRecipientLayout:Landroid/widget/AbsoluteLayout;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v8}, Landroid/widget/AbsoluteLayout;->addView(Landroid/view/View;I)V

    .line 667
    .end local v8           #index:I
    .end local v11           #oldParent:Landroid/view/ViewGroup;
    :goto_3
    return v8

    .line 631
    .restart local v2       #centerX:I
    .restart local v3       #centerY:I
    .restart local v4       #child:Landroid/view/View;
    .restart local v8       #index:I
    :cond_6
    move v8, v7

    .line 633
    goto :goto_1

    .line 634
    :cond_7
    iget v0, v6, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v14, v0, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 635
    move v8, v7

    .line 636
    goto :goto_1

    .line 637
    :cond_8
    iget v0, v6, Landroid/graphics/Rect;->right:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v14, v0, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v17

    if-eqz v17, :cond_9

    .line 638
    add-int/lit8 v8, v7, 0x1

    .line 639
    goto :goto_1

    .line 621
    :cond_9
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 645
    .end local v2           #centerX:I
    .end local v3           #centerY:I
    .end local v4           #child:Landroid/view/View;
    :cond_a
    if-ne v8, v5, :cond_2

    .line 646
    add-int/lit8 v8, v5, -0x1

    goto :goto_2

    :cond_b
    move v8, v9

    .line 667
    goto :goto_3
.end method

.method private endCheck()V
    .locals 1

    .prologue
    .line 2263
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit;->mCheckingRecipient:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/meizu/widget/RecipientEdit;->mBeginSipCheck:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit;->mOnSipCheckerBehaviorListener:Lcom/meizu/widget/RecipientStateInfo$OnSipCheckerBehaviorListener;

    if-eqz v0, :cond_0

    .line 2265
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/widget/RecipientEdit;->mBeginSipCheck:Z

    .line 2266
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit;->mOnSipCheckerBehaviorListener:Lcom/meizu/widget/RecipientStateInfo$OnSipCheckerBehaviorListener;

    invoke-interface {v0, p0}, Lcom/meizu/widget/RecipientStateInfo$OnSipCheckerBehaviorListener;->endCheck(Landroid/view/View;)V

    .line 2268
    :cond_0
    return-void
.end method

.method private goContactDetail(Ljava/lang/String;Ljava/lang/String;)V
    .locals 16
    .parameter "phoneOrEmail"
    .parameter "displayName"

    .prologue
    .line 773
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/widget/RecipientEdit;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 774
    .local v1, resolver:Landroid/content/ContentResolver;
    sget-object v3, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 776
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

    .line 779
    .local v12, cursor:Landroid/database/Cursor;
    if-eqz v12, :cond_0

    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_2

    .line 780
    :cond_0
    if-eqz v12, :cond_1

    .line 781
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 782
    const/4 v12, 0x0

    .line 785
    :cond_1
    sget-object v3, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 787
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

    .line 792
    .end local v4           #uriE:Landroid/net/Uri;
    :cond_2
    const/4 v15, 0x0

    .line 793
    .local v15, lookupUri:Landroid/net/Uri;
    if-eqz v12, :cond_5

    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 794
    const/4 v3, 0x0

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 795
    .local v10, contactId:J
    const/4 v3, 0x1

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 797
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

    .line 798
    :cond_3
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 799
    const/4 v3, 0x2

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 800
    const/4 v3, 0x0

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 801
    const/4 v3, 0x1

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 807
    :cond_4
    invoke-static {v10, v11, v14}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    .line 810
    .end local v10           #contactId:J
    .end local v14           #lookupKey:Ljava/lang/String;
    :cond_5
    if-eqz v12, :cond_6

    .line 811
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 814
    :cond_6
    const/4 v13, 0x0

    .line 815
    .local v13, intent:Landroid/content/Intent;
    if-eqz v15, :cond_8

    .line 817
    new-instance v13, Landroid/content/Intent;

    .end local v13           #intent:Landroid/content/Intent;
    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v13, v3, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 828
    .restart local v13       #intent:Landroid/content/Intent;
    :goto_0
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 829
    .local v9, bundle:Landroid/os/Bundle;
    invoke-direct/range {p0 .. p1}, Lcom/meizu/widget/RecipientEdit;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 831
    const-string v3, "phone"

    move-object/from16 v0, p1

    invoke-virtual {v9, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 832
    const-string v3, "data"

    move-object/from16 v0, p2

    invoke-virtual {v9, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 833
    const-string v3, "android.intent.action.INSERT"

    const-string v5, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v9, v3, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 841
    :goto_1
    const-string v3, "com.android.contacts.extra.SUB_TITLE_EXTRA"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/meizu/widget/RecipientEdit;->mContext:Landroid/content/Context;

    const v6, 0x1040581

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v3, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 842
    const-string v5, "com.android.contacts.extra.TITLE_EXTRA"

    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/widget/RecipientEdit;->mInputType:I

    const/4 v6, 0x2

    if-ne v3, v6, :cond_b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/widget/RecipientEdit;->mContext:Landroid/content/Context;

    const v6, 0x1040580

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_2
    invoke-virtual {v9, v5, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 846
    invoke-virtual {v13, v9}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 848
    const/high16 v3, 0x8

    invoke-virtual {v13, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 849
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/widget/RecipientEdit;->mContext:Landroid/content/Context;

    instance-of v3, v3, Landroid/app/Activity;

    if-nez v3, :cond_7

    .line 850
    const/high16 v3, 0x5000

    invoke-virtual {v13, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 852
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/widget/RecipientEdit;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v13}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 853
    return-void

    .line 820
    .end local v9           #bundle:Landroid/os/Bundle;
    :cond_8
    new-instance v13, Landroid/content/Intent;

    .end local v13           #intent:Landroid/content/Intent;
    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v13, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 821
    .restart local v13       #intent:Landroid/content/Intent;
    invoke-direct/range {p0 .. p1}, Lcom/meizu/widget/RecipientEdit;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 822
    const-string v3, "vnd.android.cursor.item/phone_contact"

    invoke-virtual {v13, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 824
    :cond_9
    const-string v3, "vnd.android.cursor.item/email_contact"

    invoke-virtual {v13, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 836
    .restart local v9       #bundle:Landroid/os/Bundle;
    :cond_a
    const-string v3, "email"

    move-object/from16 v0, p1

    invoke-virtual {v9, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 837
    const-string v3, "data"

    move-object/from16 v0, p2

    invoke-virtual {v9, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 838
    const-string v3, "android.intent.action.INSERT"

    const-string v5, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v9, v3, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 842
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/widget/RecipientEdit;->mContext:Landroid/content/Context;

    const v6, 0x104057f

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_2
.end method

.method private initRecipientEdit()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 240
    iput-boolean v3, p0, Lcom/meizu/widget/RecipientEdit;->mBtnVisibility:Z

    .line 241
    iput-boolean v3, p0, Lcom/meizu/widget/RecipientEdit;->mIsFirstLayout:Z

    .line 242
    iput-boolean v4, p0, Lcom/meizu/widget/RecipientEdit;->mIsSaveHistory:Z

    .line 243
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientDataList:Ljava/util/ArrayList;

    .line 244
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientMap:Ljava/util/HashMap;

    .line 245
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientState:Ljava/util/HashMap;

    .line 246
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mSipVersion:Ljava/util/HashMap;

    .line 247
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientNotSip:Ljava/util/ArrayList;

    .line 248
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mCheckingRecipient:Ljava/util/ArrayList;

    .line 249
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mHistoryEntries:Ljava/util/ArrayList;

    .line 251
    invoke-virtual {p0, p0}, Lcom/meizu/widget/RecipientEdit;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 252
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mContext:Landroid/content/Context;

    const v2, 0x10900c7

    invoke-static {v1, v2, p0}, Lcom/meizu/widget/RecipientEdit;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 254
    const v1, 0x10203a6

    invoke-virtual {p0, v1}, Lcom/meizu/widget/RecipientEdit;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    iput-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientScrollView:Landroid/widget/ScrollView;

    .line 255
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v1, v3}, Landroid/widget/ScrollView;->setOverScrollMode(I)V

    .line 256
    const v1, 0x10203a7

    invoke-virtual {p0, v1}, Lcom/meizu/widget/RecipientEdit;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/AbsoluteLayout;

    iput-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientLayout:Landroid/widget/AbsoluteLayout;

    .line 257
    const v1, 0x10203a8

    invoke-virtual {p0, v1}, Lcom/meizu/widget/RecipientEdit;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mHintView:Landroid/widget/TextView;

    .line 258
    const v1, 0x10203a9

    invoke-virtual {p0, v1}, Lcom/meizu/widget/RecipientEdit;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    iput-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    .line 259
    const v1, 0x10203aa

    invoke-virtual {p0, v1}, Lcom/meizu/widget/RecipientEdit;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mAddContactsBtn:Landroid/widget/ImageButton;

    .line 260
    const v1, 0x10203ab

    invoke-virtual {p0, v1}, Lcom/meizu/widget/RecipientEdit;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mHintView2:Landroid/widget/TextView;

    .line 261
    const v1, 0x10203ac

    invoke-virtual {p0, v1}, Lcom/meizu/widget/RecipientEdit;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mDisplayNameView:Landroid/widget/TextView;

    .line 262
    const v1, 0x10203ad

    invoke-virtual {p0, v1}, Lcom/meizu/widget/RecipientEdit;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mCountView:Landroid/widget/TextView;

    .line 264
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientLayout:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v1, v3}, Landroid/widget/AbsoluteLayout;->setClickable(Z)V

    .line 265
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientLayout:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v1, p0}, Landroid/widget/AbsoluteLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 266
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mDisplayNameView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEllipsisSmall(Z)V

    .line 268
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mHintStr:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 269
    invoke-virtual {p0}, Lcom/meizu/widget/RecipientEdit;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x104057b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mHintStr:Ljava/lang/String;

    .line 271
    :cond_0
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mHintView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit;->mHintStr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 272
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mHintView2:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit;->mHintStr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 274
    new-instance v0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;

    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;-><init>(Lcom/meizu/widget/RecipientEdit;Landroid/content/Context;)V

    .line 275
    .local v0, adapter:Lcom/meizu/widget/RecipientEdit$RecipientAdapter;
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v1, v0}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 276
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {p0}, Lcom/meizu/widget/RecipientEdit;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->setDropDownAnchor(I)V

    .line 277
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v1, v4}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->setDropDownAnimationStyle(I)V

    .line 278
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    const v2, 0x108050d

    invoke-virtual {v1, v2}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->setDropDownBackgroundResource(I)V

    .line 279
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v1, v3}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->keepInputMethodNeeded(Z)V

    .line 280
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v2}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 281
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit;->mWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v1, v2}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 282
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v1, p0}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 283
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v1, p0}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 284
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v1, v3}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->setForceIgnoreOutsideTouch(Z)V

    .line 285
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    new-instance v2, Lcom/meizu/widget/RecipientEdit$1;

    invoke-direct {v2, p0}, Lcom/meizu/widget/RecipientEdit$1;-><init>(Lcom/meizu/widget/RecipientEdit;)V

    invoke-virtual {v1, v2}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->setOnKeyPreImeListener(Landroid/widget/EditText$OnKeyPreImeListener;)V

    .line 294
    iget v1, p0, Lcom/meizu/widget/RecipientEdit;->mInputType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 295
    const v1, 0x108064d

    invoke-virtual {p0, v1}, Lcom/meizu/widget/RecipientEdit;->setBackgroundResource(I)V

    .line 296
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    const/16 v2, 0x21

    invoke-virtual {v1, v2}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->setInputType(I)V

    .line 304
    :goto_0
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "default_input_method"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mLastInputMethod:Ljava/lang/String;

    .line 308
    invoke-super {p0, v4}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 309
    invoke-super {p0, v4}, Landroid/widget/FrameLayout;->setFocusableInTouchMode(Z)V

    .line 310
    invoke-virtual {p0, v3}, Lcom/meizu/widget/RecipientEdit;->setFocusable(Z)V

    .line 311
    invoke-virtual {p0, v3}, Lcom/meizu/widget/RecipientEdit;->setFocusableInTouchMode(Z)V

    .line 312
    return-void

    .line 299
    :cond_1
    const v1, 0x108064e

    invoke-virtual {p0, v1}, Lcom/meizu/widget/RecipientEdit;->setBackgroundResource(I)V

    .line 300
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    const/16 v2, 0xb1

    invoke-virtual {v1, v2}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->setInputType(I)V

    goto :goto_0
.end method

.method private isDefaultInputMethod()Z
    .locals 3

    .prologue
    .line 375
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "default_input_method"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 378
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
    .line 1565
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1566
    const/4 v1, 0x0

    .line 1570
    :goto_0
    return v1

    .line 1569
    :cond_0
    sget-object v1, Lcom/meizu/widget/RecipientEdit;->PHONE:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1570
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

    .line 1544
    iget v1, p0, Lcom/meizu/widget/RecipientEdit;->mInputType:I

    packed-switch v1, :pswitch_data_0

    .line 1555
    :cond_0
    :goto_0
    return v0

    .line 1546
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

    .line 1549
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/meizu/widget/RecipientEdit;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 1552
    :pswitch_2
    invoke-static {p1}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 1544
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
    .line 1101
    iget-object v13, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientLayout:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v13}, Landroid/widget/AbsoluteLayout;->getMeasuredWidth()I

    move-result v13

    if-nez v13, :cond_0

    .line 1102
    invoke-virtual {p0}, Lcom/meizu/widget/RecipientEdit;->getMeasuredWidth()I

    move-result v13

    const/high16 v14, 0x4000

    invoke-static {v13, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 1104
    .local v10, widthMeasureSpec:I
    invoke-virtual {p0}, Lcom/meizu/widget/RecipientEdit;->getMeasuredHeight()I

    move-result v13

    const/high16 v14, 0x4000

    invoke-static {v13, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 1106
    .local v2, heightMeasureSpec:I
    invoke-virtual {p0, v10, v2}, Lcom/meizu/widget/RecipientEdit;->measure(II)V

    .line 1109
    .end local v2           #heightMeasureSpec:I
    .end local v10           #widthMeasureSpec:I
    :cond_0
    const/4 v11, 0x0

    .line 1110
    .local v11, x:I
    const/4 v12, 0x0

    .line 1111
    .local v12, y:I
    const/16 v8, 0x3c

    .line 1113
    .local v8, minLen:I
    iget-object v13, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientLayout:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v13}, Landroid/widget/AbsoluteLayout;->getChildCount()I

    move-result v1

    .line 1114
    .local v1, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_5

    .line 1115
    iget-object v13, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientLayout:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v13, v3}, Landroid/widget/AbsoluteLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1116
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v13

    const/16 v14, 0x8

    if-ne v13, v14, :cond_1

    .line 1114
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1120
    :cond_1
    const/4 v13, 0x1

    if-ne v3, v13, :cond_2

    const/4 v13, 0x2

    if-le v1, v13, :cond_2

    .line 1121
    iget-object v13, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientLayout:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v13}, Landroid/widget/AbsoluteLayout;->getMeasuredWidth()I

    move-result v13

    sub-int v7, v13, v11

    .line 1122
    .local v7, max:I
    instance-of v13, v0, Lcom/meizu/widget/RecipientEdit$ItemView;

    if-eqz v13, :cond_2

    move-object v13, v0

    .line 1123
    check-cast v13, Lcom/meizu/widget/RecipientEdit$ItemView;

    invoke-virtual {v13}, Lcom/meizu/widget/RecipientEdit$ItemView;->getView()Landroid/widget/TextView;

    move-result-object v13

    invoke-virtual {v13, v7}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 1127
    .end local v7           #max:I
    :cond_2
    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v0, v13, v14}, Landroid/view/View;->measure(II)V

    .line 1129
    add-int/lit8 v13, v1, -0x1

    if-ne v3, v13, :cond_4

    .line 1130
    add-int v9, v11, v8

    .line 1135
    .local v9, width:I
    :goto_2
    iget-object v13, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientLayout:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v13}, Landroid/widget/AbsoluteLayout;->getMeasuredWidth()I

    move-result v13

    if-le v9, v13, :cond_3

    const/4 v13, 0x1

    if-le v3, v13, :cond_3

    .line 1136
    const/4 v11, 0x0

    .line 1137
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    add-int/2addr v12, v13

    .line 1140
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/AbsoluteLayout$LayoutParams;

    .line 1141
    .local v5, lp:Landroid/widget/AbsoluteLayout$LayoutParams;
    iput v11, v5, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    .line 1142
    iput v12, v5, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    .line 1145
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    add-int/2addr v11, v13

    goto :goto_1

    .line 1132
    .end local v5           #lp:Landroid/widget/AbsoluteLayout$LayoutParams;
    .end local v9           #width:I
    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    add-int v9, v11, v13

    .restart local v9       #width:I
    goto :goto_2

    .line 1148
    .end local v0           #child:Landroid/view/View;
    .end local v9           #width:I
    :cond_5
    iget-object v13, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v13}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/AbsoluteLayout$LayoutParams;

    .line 1150
    .local v6, lpEditText:Landroid/widget/AbsoluteLayout$LayoutParams;
    iget-object v13, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientLayout:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v13}, Landroid/widget/AbsoluteLayout;->getMeasuredWidth()I

    move-result v13

    iget v14, v6, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    sub-int/2addr v13, v14

    iput v13, p0, Lcom/meizu/widget/RecipientEdit;->mEditMaxWidth:I

    .line 1151
    iget v13, p0, Lcom/meizu/widget/RecipientEdit;->mEditMaxWidth:I

    if-lez v13, :cond_6

    iget v8, p0, Lcom/meizu/widget/RecipientEdit;->mEditMaxWidth:I

    .end local v8           #minLen:I
    :cond_6
    iput v8, p0, Lcom/meizu/widget/RecipientEdit;->mEditMaxWidth:I

    .line 1152
    iget-object v13, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    iget v14, p0, Lcom/meizu/widget/RecipientEdit;->mEditMaxWidth:I

    invoke-virtual {v13, v14}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->setWidth(I)V

    .line 1154
    invoke-virtual {p0}, Lcom/meizu/widget/RecipientEdit;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 1155
    .local v4, layoutParams:Landroid/view/ViewGroup$LayoutParams;
    iget-boolean v13, p0, Lcom/meizu/widget/RecipientEdit;->mInDrag:Z

    if-eqz v13, :cond_8

    .line 1156
    const/4 v13, -0x2

    iput v13, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1171
    :cond_7
    :goto_3
    return-void

    .line 1157
    :cond_8
    iget v13, p0, Lcom/meizu/widget/RecipientEdit;->mMaxHeight:I

    if-lez v13, :cond_7

    .line 1158
    invoke-virtual {p0}, Lcom/meizu/widget/RecipientEdit;->getMeasuredWidth()I

    move-result v13

    const/high16 v14, 0x4000

    invoke-static {v13, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 1160
    .restart local v10       #widthMeasureSpec:I
    const/4 v13, -0x2

    const/high16 v14, 0x4000

    invoke-static {v13, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 1162
    .restart local v2       #heightMeasureSpec:I
    invoke-virtual {p0, v10, v2}, Lcom/meizu/widget/RecipientEdit;->measure(II)V

    .line 1164
    invoke-virtual {p0}, Lcom/meizu/widget/RecipientEdit;->getMeasuredHeight()I

    move-result v13

    iget v14, p0, Lcom/meizu/widget/RecipientEdit;->mMaxHeight:I

    if-lt v13, v14, :cond_9

    .line 1165
    iget v13, p0, Lcom/meizu/widget/RecipientEdit;->mMaxHeight:I

    iput v13, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_3

    .line 1167
    :cond_9
    const/4 v13, -0x2

    iput v13, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_3
.end method

.method private queryDisplayName(Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .parameter "number"

    .prologue
    .line 1425
    const-string v13, ""

    .line 1426
    .local v13, displayName:Ljava/lang/String;
    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1427
    .local v0, resolver:Landroid/content/ContentResolver;
    const/4 v12, 0x0

    .line 1429
    .local v12, cursor:Landroid/database/Cursor;
    iget v2, p0, Lcom/meizu/widget/RecipientEdit;->mInputType:I

    packed-switch v2, :pswitch_data_0

    .line 1467
    :cond_0
    :goto_0
    if-eqz v12, :cond_2

    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1468
    const/4 v2, 0x0

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 1469
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

    .line 1470
    :cond_1
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1471
    const/4 v2, 0x1

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1472
    const/4 v2, 0x0

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 1479
    :cond_2
    if-eqz v12, :cond_3

    .line 1480
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 1483
    :cond_3
    return-object v13

    .line 1431
    :pswitch_0
    sget-object v2, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1433
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

    .line 1436
    if-eqz v12, :cond_4

    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_0

    .line 1437
    :cond_4
    if-eqz v12, :cond_5

    .line 1438
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 1439
    const/4 v12, 0x0

    .line 1442
    :cond_5
    sget-object v2, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1444
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

    .line 1447
    goto/16 :goto_0

    .line 1451
    .end local v1           #uriP:Landroid/net/Uri;
    .end local v3           #uriE:Landroid/net/Uri;
    :pswitch_1
    sget-object v2, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 1453
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

    .line 1456
    goto/16 :goto_0

    .line 1459
    .end local v5           #uriPhone:Landroid/net/Uri;
    :pswitch_2
    sget-object v2, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 1461
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

    .line 1429
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

    .line 435
    if-nez p1, :cond_0

    iget-boolean v7, p0, Lcom/meizu/widget/RecipientEdit;->mInDrag:Z

    if-eqz v7, :cond_1

    .line 436
    :cond_0
    iget-object v7, p0, Lcom/meizu/widget/RecipientEdit;->mAddContactsBtn:Landroid/widget/ImageButton;

    invoke-virtual {v7, v10}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 437
    iget-object v7, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v7, v10}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 438
    iget-object v7, p0, Lcom/meizu/widget/RecipientEdit;->mHintView2:Landroid/widget/TextView;

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 439
    iget-object v7, p0, Lcom/meizu/widget/RecipientEdit;->mDisplayNameView:Landroid/widget/TextView;

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 440
    iget-object v7, p0, Lcom/meizu/widget/RecipientEdit;->mCountView:Landroid/widget/TextView;

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 441
    invoke-direct {p0}, Lcom/meizu/widget/RecipientEdit;->layoutChildren()V

    .line 483
    :goto_0
    return-void

    .line 443
    :cond_1
    invoke-virtual {p0}, Lcom/meizu/widget/RecipientEdit;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 444
    .local v4, layoutParams:Landroid/view/ViewGroup$LayoutParams;
    iget v7, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v7, v8, :cond_2

    .line 445
    iput v8, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 446
    invoke-virtual {p0, v4}, Lcom/meizu/widget/RecipientEdit;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 449
    :cond_2
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 450
    .local v1, displayNames:Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .line 451
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

    .line 452
    .local v6, number:Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    .line 453
    iget-object v7, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientMap:Ljava/util/HashMap;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 454
    .local v5, name:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 455
    move-object v5, v6

    .line 457
    :cond_4
    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 458
    const/16 v7, 0x14

    if-lt v2, v7, :cond_3

    .line 463
    .end local v5           #name:Ljava/lang/String;
    .end local v6           #number:Ljava/lang/String;
    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    if-lez v7, :cond_6

    .line 464
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x2

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 467
    :cond_6
    iget-object v7, p0, Lcom/meizu/widget/RecipientEdit;->mDisplayNameView:Landroid/widget/TextView;

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 468
    iget-object v7, p0, Lcom/meizu/widget/RecipientEdit;->mDisplayNameView:Landroid/widget/TextView;

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 469
    iget-object v7, p0, Lcom/meizu/widget/RecipientEdit;->mHintView2:Landroid/widget/TextView;

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 471
    invoke-virtual {p0}, Lcom/meizu/widget/RecipientEdit;->getRecipientCount()I

    move-result v0

    .line 472
    .local v0, count:I
    const/4 v7, 0x1

    if-le v0, v7, :cond_7

    .line 473
    iget-object v7, p0, Lcom/meizu/widget/RecipientEdit;->mCountView:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 474
    iget-object v7, p0, Lcom/meizu/widget/RecipientEdit;->mCountView:Landroid/widget/TextView;

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 480
    :goto_1
    iget-object v7, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v7, v9}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 481
    iget-object v7, p0, Lcom/meizu/widget/RecipientEdit;->mAddContactsBtn:Landroid/widget/ImageButton;

    invoke-virtual {v7, v9}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/16 :goto_0

    .line 476
    :cond_7
    iget-object v7, p0, Lcom/meizu/widget/RecipientEdit;->mCountView:Landroid/widget/TextView;

    const-string v8, ""

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 477
    iget-object v7, p0, Lcom/meizu/widget/RecipientEdit;->mCountView:Landroid/widget/TextView;

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method private refreshSipDestState()V
    .locals 4

    .prologue
    .line 2271
    iget-boolean v2, p0, Lcom/meizu/widget/RecipientEdit;->mCheckSipDestAddr:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit;->mSipDestChecker:Lcom/meizu/widget/RecipientStateInfo$SipDestChecker;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientNotSip:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2272
    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientState:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2273
    .local v1, number:Ljava/lang/String;
    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientState:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/meizu/widget/RecipientStateInfo$SipState;->SIP_UNCHECK:Lcom/meizu/widget/RecipientStateInfo$SipState;

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientNotSip:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2275
    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientState:Ljava/util/HashMap;

    sget-object v3, Lcom/meizu/widget/RecipientStateInfo$SipState;->SIP_CHECKING:Lcom/meizu/widget/RecipientStateInfo$SipState;

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2276
    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit;->mCheckingRecipient:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2277
    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientHandler:Lcom/meizu/widget/RecipientEdit$RecipientHandler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v1}, Lcom/meizu/widget/RecipientEdit$RecipientHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 2278
    invoke-direct {p0}, Lcom/meizu/widget/RecipientEdit;->beginCheck()V

    goto :goto_0

    .line 2282
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #number:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private removeComposingSpan()V
    .locals 6

    .prologue
    .line 382
    iget-object v4, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v4}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v4

    instance-of v4, v4, Landroid/text/Spannable;

    if-eqz v4, :cond_0

    .line 383
    iget-object v4, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v4}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v3

    .line 384
    .local v3, sp:Landroid/text/Spannable;
    invoke-static {v3}, Lcom/android/internal/widget/EditableInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v1

    .line 385
    .local v1, candStart:I
    invoke-static {v3}, Lcom/android/internal/widget/EditableInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v0

    .line 386
    .local v0, candEnd:I
    if-ltz v1, :cond_0

    if-ltz v0, :cond_0

    .line 387
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

    .line 389
    .local v2, dstr:Ljava/lang/String;
    iget-object v4, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v4, v2}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 392
    .end local v0           #candEnd:I
    .end local v1           #candStart:I
    .end local v2           #dstr:Ljava/lang/String;
    .end local v3           #sp:Landroid/text/Spannable;
    :cond_0
    return-void
.end method

.method private removeRecipientAt(IZ)Z
    .locals 5
    .parameter "index"
    .parameter "removeView"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1700
    iget-object v4, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientDataList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1701
    .local v1, size:I
    const/4 v4, -0x1

    if-le p1, v4, :cond_6

    if-ge p1, v1, :cond_6

    .line 1702
    iget-object v4, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientDataList:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1703
    .local v0, removeStr:Ljava/lang/String;
    iget-object v4, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientHandler:Lcom/meizu/widget/RecipientEdit$RecipientHandler;

    if-eqz v4, :cond_0

    .line 1704
    iget-object v4, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientHandler:Lcom/meizu/widget/RecipientEdit$RecipientHandler;

    invoke-virtual {v4, v2, v0}, Lcom/meizu/widget/RecipientEdit$RecipientHandler;->removeMessages(ILjava/lang/Object;)V

    .line 1706
    :cond_0
    iget-object v4, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientMap:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1707
    iget-object v4, p0, Lcom/meizu/widget/RecipientEdit;->mCheckingRecipient:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1708
    iget-object v4, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientState:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1709
    iget-object v4, p0, Lcom/meizu/widget/RecipientEdit;->mSipVersion:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1711
    iget-object v4, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientNotSip:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1712
    invoke-direct {p0}, Lcom/meizu/widget/RecipientEdit;->refreshSipDestState()V

    .line 1715
    :cond_1
    invoke-static {v0}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1716
    iput-boolean v3, p0, Lcom/meizu/widget/RecipientEdit;->mHasEmail:Z

    .line 1719
    :cond_2
    invoke-direct {p0}, Lcom/meizu/widget/RecipientEdit;->endCheck()V

    .line 1720
    if-eqz p2, :cond_3

    .line 1721
    iget-object v3, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientLayout:Landroid/widget/AbsoluteLayout;

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/AbsoluteLayout;->removeViewAt(I)V

    .line 1722
    invoke-virtual {p0}, Lcom/meizu/widget/RecipientEdit;->hasFocus()Z

    move-result v3

    invoke-direct {p0, v3}, Lcom/meizu/widget/RecipientEdit;->refreshLayout(Z)V

    .line 1725
    :cond_3
    iget-object v3, p0, Lcom/meizu/widget/RecipientEdit;->mOnSipStateChangedListener:Lcom/meizu/widget/RecipientStateInfo$OnSipStateChangedListener;

    if-eqz v3, :cond_4

    .line 1726
    iget-object v3, p0, Lcom/meizu/widget/RecipientEdit;->mOnSipStateChangedListener:Lcom/meizu/widget/RecipientStateInfo$OnSipStateChangedListener;

    invoke-virtual {p0}, Lcom/meizu/widget/RecipientEdit;->getSipState()Lcom/meizu/widget/RecipientStateInfo$SipState;

    move-result-object v4

    invoke-interface {v3, p0, v4}, Lcom/meizu/widget/RecipientStateInfo$OnSipStateChangedListener;->onSipStateChanged(Landroid/view/View;Lcom/meizu/widget/RecipientStateInfo$SipState;)V

    .line 1729
    :cond_4
    iget-object v3, p0, Lcom/meizu/widget/RecipientEdit;->mOnRecipientChangedListener:Lcom/meizu/widget/RecipientEdit$OnRecipientChangedListener;

    if-eqz v3, :cond_5

    .line 1730
    iget-object v3, p0, Lcom/meizu/widget/RecipientEdit;->mOnRecipientChangedListener:Lcom/meizu/widget/RecipientEdit$OnRecipientChangedListener;

    invoke-interface {v3}, Lcom/meizu/widget/RecipientEdit$OnRecipientChangedListener;->OnRecipientChanged()V

    .line 1735
    .end local v0           #removeStr:Ljava/lang/String;
    :cond_5
    :goto_0
    return v2

    :cond_6
    move v2, v3

    goto :goto_0
.end method

.method private removeSpecialCharacter(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "cons"

    .prologue
    .line 1504
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1505
    const-string v4, ""

    .line 1540
    :cond_0
    :goto_0
    return-object v4

    .line 1508
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 1510
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

    .line 1512
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    .line 1513
    .local v2, len:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1515
    .local v3, ret:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_5

    .line 1516
    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1517
    .local v0, c:C
    const/16 v6, 0x20

    if-ne v0, v6, :cond_4

    .line 1515
    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1519
    :cond_4
    const/16 v6, 0x2e

    if-eq v0, v6, :cond_3

    .line 1521
    const/16 v6, 0x2d

    if-eq v0, v6, :cond_3

    .line 1523
    const/16 v6, 0x28

    if-eq v0, v6, :cond_3

    .line 1525
    const/16 v6, 0x29

    if-eq v0, v6, :cond_3

    .line 1528
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1532
    .end local v0           #c:C
    :cond_5
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1533
    goto :goto_0

    .line 1534
    .end local v1           #i:I
    .end local v2           #len:I
    .end local v3           #ret:Ljava/lang/StringBuilder;
    :cond_6
    invoke-static {v4}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v5

    .line 1535
    .local v5, token:[Landroid/text/util/Rfc822Token;
    array-length v6, v5

    if-lez v6, :cond_0

    .line 1536
    const/4 v6, 0x0

    aget-object v6, v5, v6

    invoke-virtual {v6}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private saveHistory()V
    .locals 3

    .prologue
    .line 2195
    iget-boolean v1, p0, Lcom/meizu/widget/RecipientEdit;->mIsSaveHistory:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mHistoryEntries:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 2196
    sget-object v1, Lcom/meizu/widget/RecipientEdit;->sHistoryWorker:Lcom/meizu/widget/RecipientEdit$RecipientWorker;

    if-nez v1, :cond_0

    .line 2197
    new-instance v1, Lcom/meizu/widget/RecipientEdit$RecipientWorker;

    const-string v2, "mz_recipient_history"

    invoke-direct {v1, v2}, Lcom/meizu/widget/RecipientEdit$RecipientWorker;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/meizu/widget/RecipientEdit;->sHistoryWorker:Lcom/meizu/widget/RecipientEdit$RecipientWorker;

    .line 2200
    :cond_0
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mHistoryHandler:Lcom/meizu/widget/RecipientEdit$HistoryHandler;

    if-nez v1, :cond_1

    .line 2201
    sget-object v1, Lcom/meizu/widget/RecipientEdit;->sHistoryWorker:Lcom/meizu/widget/RecipientEdit$RecipientWorker;

    invoke-static {v1}, Lcom/meizu/widget/RecipientEdit$RecipientWorker;->access$104(Lcom/meizu/widget/RecipientEdit$RecipientWorker;)I

    .line 2202
    new-instance v1, Lcom/meizu/widget/RecipientEdit$HistoryHandler;

    sget-object v2, Lcom/meizu/widget/RecipientEdit;->sHistoryWorker:Lcom/meizu/widget/RecipientEdit$RecipientWorker;

    invoke-virtual {v2}, Lcom/meizu/widget/RecipientEdit$RecipientWorker;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/meizu/widget/RecipientEdit$HistoryHandler;-><init>(Lcom/meizu/widget/RecipientEdit;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mHistoryHandler:Lcom/meizu/widget/RecipientEdit$HistoryHandler;

    .line 2205
    :cond_1
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mHistoryHandler:Lcom/meizu/widget/RecipientEdit$HistoryHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/meizu/widget/RecipientEdit$HistoryHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2206
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mHistoryEntries:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit;->mHistoryEntries:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2207
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mHistoryHandler:Lcom/meizu/widget/RecipientEdit$HistoryHandler;

    invoke-virtual {v1, v0}, Lcom/meizu/widget/RecipientEdit$HistoryHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2210
    .end local v0           #msg:Landroid/os/Message;
    :cond_2
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mHistoryEntries:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2211
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

    .line 1244
    if-nez p1, :cond_0

    move v2, v6

    .line 1281
    :goto_0
    return v2

    .line 1248
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1249
    .local v0, count:I
    const/4 v2, 0x0

    .line 1250
    .local v2, result:I
    const/4 v3, 0x0

    .line 1251
    .local v3, ret:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_4

    .line 1252
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v7, ";"

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1254
    .local v4, str:[Ljava/lang/String;
    array-length v5, v4

    if-le v5, v8, :cond_3

    .line 1255
    aget-object v5, v4, v6

    aget-object v7, v4, v8

    invoke-direct {p0, v5, v7}, Lcom/meizu/widget/RecipientEdit;->addRecipientInternal(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 1260
    :cond_1
    :goto_2
    if-eqz v3, :cond_2

    .line 1261
    add-int/lit8 v2, v2, 0x1

    .line 1251
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1256
    :cond_3
    array-length v5, v4

    if-ne v5, v8, :cond_1

    .line 1257
    aget-object v5, v4, v6

    const/4 v7, 0x0

    invoke-direct {p0, v5, v7}, Lcom/meizu/widget/RecipientEdit;->addRecipientInternal(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    goto :goto_2

    .line 1265
    .end local v4           #str:[Ljava/lang/String;
    :cond_4
    if-lez v2, :cond_7

    .line 1266
    iget-object v5, p0, Lcom/meizu/widget/RecipientEdit;->mOnRecipientChangedListener:Lcom/meizu/widget/RecipientEdit$OnRecipientChangedListener;

    if-eqz v5, :cond_5

    .line 1267
    iget-object v5, p0, Lcom/meizu/widget/RecipientEdit;->mOnRecipientChangedListener:Lcom/meizu/widget/RecipientEdit$OnRecipientChangedListener;

    invoke-interface {v5}, Lcom/meizu/widget/RecipientEdit$OnRecipientChangedListener;->OnRecipientChanged()V

    .line 1270
    :cond_5
    iget-object v5, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientDataList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, v8, :cond_6

    iget-boolean v5, p0, Lcom/meizu/widget/RecipientEdit;->mHasEmail:Z

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/meizu/widget/RecipientEdit;->mOnEmailAddWhenGroupListener:Lcom/meizu/widget/RecipientEdit$OnEmailAddWhenGroupListener;

    if-eqz v5, :cond_6

    .line 1272
    iget-object v5, p0, Lcom/meizu/widget/RecipientEdit;->mOnEmailAddWhenGroupListener:Lcom/meizu/widget/RecipientEdit$OnEmailAddWhenGroupListener;

    invoke-interface {v5}, Lcom/meizu/widget/RecipientEdit$OnEmailAddWhenGroupListener;->OnEmailAddWhenGroup()V

    .line 1275
    :cond_6
    iget-boolean v5, p0, Lcom/meizu/widget/RecipientEdit;->mIsFirstLayout:Z

    if-nez v5, :cond_7

    .line 1276
    invoke-virtual {p0}, Lcom/meizu/widget/RecipientEdit;->hasFocus()Z

    move-result v5

    invoke-direct {p0, v5}, Lcom/meizu/widget/RecipientEdit;->refreshLayout(Z)V

    .line 1280
    :cond_7
    invoke-direct {p0}, Lcom/meizu/widget/RecipientEdit;->saveHistory()V

    goto :goto_0
.end method

.method public addRecipient(Ljava/lang/CharSequence;)Z
    .locals 7
    .parameter "number"

    .prologue
    const/4 v4, 0x0

    .line 1191
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1208
    :cond_0
    :goto_0
    return v4

    .line 1195
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, ";|, "

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1196
    .local v2, numbers:[Ljava/lang/String;
    const/4 v3, 0x0

    .line 1197
    .local v3, ret:I
    array-length v5, v2

    if-lez v5, :cond_3

    .line 1198
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1199
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v5, v2

    if-ge v0, v5, :cond_2

    .line 1200
    aget-object v5, v2, v0

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1199
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1202
    :cond_2
    invoke-virtual {p0, v1}, Lcom/meizu/widget/RecipientEdit;->addRecipient(Ljava/util/ArrayList;)I

    move-result v3

    .line 1205
    .end local v0           #i:I
    .end local v1           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    if-lez v3, :cond_0

    .line 1206
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public addRecipient(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 5
    .parameter "number"
    .parameter "contactName"

    .prologue
    const/4 v2, 0x0

    .line 1219
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1234
    :cond_0
    :goto_0
    return v2

    .line 1223
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1224
    .local v0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1225
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1230
    :goto_1
    invoke-virtual {p0, v0}, Lcom/meizu/widget/RecipientEdit;->addRecipient(Ljava/util/ArrayList;)I

    move-result v1

    .line 1231
    .local v1, ret:I
    if-lez v1, :cond_0

    .line 1232
    const/4 v2, 0x1

    goto :goto_0

    .line 1227
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
    .line 2217
    iput-boolean p1, p0, Lcom/meizu/widget/RecipientEdit;->mCheckSipDestAddr:Z

    .line 2219
    iget-boolean v0, p0, Lcom/meizu/widget/RecipientEdit;->mCheckSipDestAddr:Z

    if-eqz v0, :cond_1

    .line 2220
    sget-object v0, Lcom/meizu/widget/RecipientEdit;->sRecipientWorker:Lcom/meizu/widget/RecipientEdit$RecipientWorker;

    if-nez v0, :cond_0

    .line 2221
    new-instance v0, Lcom/meizu/widget/RecipientEdit$RecipientWorker;

    const-string v1, "mz_recipient_worker"

    invoke-direct {v0, v1}, Lcom/meizu/widget/RecipientEdit$RecipientWorker;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/meizu/widget/RecipientEdit;->sRecipientWorker:Lcom/meizu/widget/RecipientEdit$RecipientWorker;

    .line 2224
    :cond_0
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientHandler:Lcom/meizu/widget/RecipientEdit$RecipientHandler;

    if-nez v0, :cond_1

    .line 2225
    sget-object v0, Lcom/meizu/widget/RecipientEdit;->sRecipientWorker:Lcom/meizu/widget/RecipientEdit$RecipientWorker;

    invoke-static {v0}, Lcom/meizu/widget/RecipientEdit$RecipientWorker;->access$104(Lcom/meizu/widget/RecipientEdit$RecipientWorker;)I

    .line 2226
    new-instance v0, Lcom/meizu/widget/RecipientEdit$RecipientHandler;

    sget-object v1, Lcom/meizu/widget/RecipientEdit;->sRecipientWorker:Lcom/meizu/widget/RecipientEdit$RecipientWorker;

    invoke-virtual {v1}, Lcom/meizu/widget/RecipientEdit$RecipientWorker;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/meizu/widget/RecipientEdit$RecipientHandler;-><init>(Lcom/meizu/widget/RecipientEdit;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientHandler:Lcom/meizu/widget/RecipientEdit$RecipientHandler;

    .line 2229
    :cond_1
    return-void
.end method

.method public closeHistory()V
    .locals 2

    .prologue
    .line 2181
    iget v0, p0, Lcom/meizu/widget/RecipientEdit;->mInputType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 2192
    :goto_0
    return-void

    .line 2185
    :cond_0
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mDbLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2186
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/meizu/widget/RecipientEdit;->mIsSaveHistory:Z

    .line 2187
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit;->mDbHelper:Lcom/meizu/widget/RecipientDbHelper;

    if-eqz v0, :cond_1

    .line 2188
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit;->mDbHelper:Lcom/meizu/widget/RecipientDbHelper;

    invoke-virtual {v0}, Lcom/meizu/widget/RecipientDbHelper;->close()V

    .line 2189
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/widget/RecipientEdit;->mDbHelper:Lcom/meizu/widget/RecipientDbHelper;

    .line 2191
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
    .line 1177
    invoke-direct {p0}, Lcom/meizu/widget/RecipientEdit;->removeComposingSpan()V

    .line 1178
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v1}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1179
    .local v0, text:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1180
    invoke-virtual {p0, v0}, Lcom/meizu/widget/RecipientEdit;->addRecipient(Ljava/lang/CharSequence;)Z

    .line 1181
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1183
    :cond_0
    return-void
.end method

.method public containsEmail()Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 1609
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

    .line 1610
    .local v2, number:Ljava/lang/String;
    invoke-static {v2}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1620
    .end local v2           #number:Ljava/lang/String;
    :cond_1
    :goto_0
    return v3

    .line 1615
    :cond_2
    iget-object v4, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v4}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/meizu/widget/RecipientEdit;->removeSpecialCharacter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1616
    .local v1, input:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {v1}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1620
    :cond_3
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public dispatchDragEvent(Landroid/view/DragEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 487
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit;->mOnDragListener:Landroid/view/View$OnDragListener;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/meizu/widget/RecipientEdit;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit;->mOnDragListener:Landroid/view/View$OnDragListener;

    invoke-interface {v0, p0, p1}, Landroid/view/View$OnDragListener;->onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 489
    const/4 v0, 0x1

    .line 492
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

    .line 975
    iget-object v3, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v3}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 976
    .local v1, inputText:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/16 v4, 0x42

    if-ne v3, v4, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 978
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-ne v3, v2, :cond_0

    .line 979
    invoke-virtual {p0, v1}, Lcom/meizu/widget/RecipientEdit;->addRecipient(Ljava/lang/CharSequence;)Z

    .line 980
    iget-object v3, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1003
    :cond_0
    :goto_0
    return v2

    .line 985
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/16 v4, 0x43

    if-ne v3, v4, :cond_3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_3

    .line 987
    iget-object v3, p0, Lcom/meizu/widget/RecipientEdit;->mViewSelected:Landroid/view/View;

    if-eqz v3, :cond_2

    .line 988
    iget-object v3, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientLayout:Landroid/widget/AbsoluteLayout;

    iget-object v4, p0, Lcom/meizu/widget/RecipientEdit;->mViewSelected:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/widget/AbsoluteLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 989
    .local v0, index:I
    add-int/lit8 v3, v0, -0x1

    invoke-direct {p0, v3, v2}, Lcom/meizu/widget/RecipientEdit;->removeRecipientAt(IZ)Z

    .line 990
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/meizu/widget/RecipientEdit;->mViewSelected:Landroid/view/View;

    .line 991
    iget-object v3, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v3, v2}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->setCursorVisible(Z)V

    .line 992
    iget-object v3, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientScrollView:Landroid/widget/ScrollView;

    iget-object v4, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientLayout:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v4}, Landroid/widget/AbsoluteLayout;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v3, v5, v4}, Landroid/widget/ScrollView;->scrollTo(II)V

    goto :goto_0

    .line 994
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

    .line 996
    iget-object v3, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientLayout:Landroid/widget/AbsoluteLayout;

    iget-object v4, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientLayout:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v4}, Landroid/widget/AbsoluteLayout;->getChildCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {v3, v4}, Landroid/widget/AbsoluteLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/meizu/widget/RecipientEdit;->mViewSelected:Landroid/view/View;

    .line 997
    iget-object v3, p0, Lcom/meizu/widget/RecipientEdit;->mViewSelected:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setSelected(Z)V

    .line 998
    iget-object v3, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v3, v5}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->setCursorVisible(Z)V

    goto :goto_0

    .line 1003
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_0
.end method

.method public formatInvalidNumbers()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1627
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1628
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

    .line 1629
    .local v2, number:Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/meizu/widget/RecipientEdit;->isValidRecipient(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1630
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-eqz v4, :cond_1

    .line 1631
    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1633
    :cond_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1637
    .end local v2           #number:Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v4}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/meizu/widget/RecipientEdit;->removeSpecialCharacter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1638
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

    .line 1640
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-eqz v4, :cond_3

    .line 1641
    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1643
    :cond_3
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1646
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
    .line 1806
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1807
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientDataList:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientDataList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 1808
    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientDataList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    check-cast v1, Ljava/util/ArrayList;

    .line 1811
    .restart local v1       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v2}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/meizu/widget/RecipientEdit;->removeSpecialCharacter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1812
    .local v0, input:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientDataList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1813
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1816
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 1819
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
    .line 1827
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1828
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

    .line 1829
    .local v4, number:Ljava/lang/String;
    iget-object v5, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientMap:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1830
    .local v3, name:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1831
    move-object v3, v4

    .line 1833
    :cond_0
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1836
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

    .line 1837
    .local v1, input:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientDataList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 1838
    invoke-direct {p0, v1}, Lcom/meizu/widget/RecipientEdit;->queryDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1839
    .restart local v3       #name:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1840
    move-object v3, v1

    .line 1842
    :cond_2
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1845
    .end local v3           #name:Ljava/lang/String;
    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_4

    .line 1848
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
    .line 2108
    iget-boolean v0, p0, Lcom/meizu/widget/RecipientEdit;->mBtnVisibility:Z

    return v0
.end method

.method public getImeOptions()I
    .locals 1

    .prologue
    .line 2158
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v0}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->getImeOptions()I

    move-result v0

    and-int/lit16 v0, v0, -0x100

    return v0
.end method

.method public getInputType()I
    .locals 1

    .prologue
    .line 2136
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
    .line 1970
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1971
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

    .line 1972
    .local v3, number:Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/meizu/widget/RecipientEdit;->isValidRecipient(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1973
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1977
    .end local v3           #number:Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v4}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/meizu/widget/RecipientEdit;->removeSpecialCharacter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1978
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

    .line 1980
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1983
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 1986
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
    .line 1994
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1995
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

    .line 1996
    .local v4, number:Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/meizu/widget/RecipientEdit;->isValidRecipient(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1997
    iget-object v5, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientMap:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1998
    .local v3, name:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1999
    move-object v3, v4

    .line 2001
    :cond_1
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2005
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

    .line 2006
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

    .line 2008
    invoke-direct {p0, v1}, Lcom/meizu/widget/RecipientEdit;->queryDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2009
    .restart local v3       #name:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2010
    move-object v3, v1

    .line 2012
    :cond_3
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2015
    .end local v3           #name:Ljava/lang/String;
    :cond_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_5

    .line 2018
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
    .line 2089
    iget v0, p0, Lcom/meizu/widget/RecipientEdit;->mMaxHeight:I

    return v0
.end method

.method public getRecipientCount()I
    .locals 3

    .prologue
    .line 2057
    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientDataList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2058
    .local v0, count:I
    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v2}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/meizu/widget/RecipientEdit;->removeSpecialCharacter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2059
    .local v1, input:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientDataList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2060
    add-int/lit8 v0, v0, 0x1

    .line 2063
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
    .line 2028
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2029
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

    .line 2030
    .local v4, number:Ljava/lang/String;
    iget-object v5, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientMap:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2031
    .local v3, name:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2032
    move-object v3, v4

    .line 2034
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

    .line 2037
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

    .line 2038
    .local v1, input:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientDataList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 2039
    invoke-direct {p0, v1}, Lcom/meizu/widget/RecipientEdit;->queryDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2040
    .restart local v3       #name:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2041
    move-object v3, v1

    .line 2043
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

    .line 2046
    .end local v3           #name:Ljava/lang/String;
    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_4

    .line 2049
    .end local v2           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    return-object v2

    .restart local v2       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getSipState()Lcom/meizu/widget/RecipientStateInfo$SipState;
    .locals 6

    .prologue
    .line 1856
    iget-object v5, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientDataList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_0

    .line 1857
    sget-object v5, Lcom/meizu/widget/RecipientStateInfo$SipState;->SIP_NO:Lcom/meizu/widget/RecipientStateInfo$SipState;

    .line 1891
    :goto_0
    return-object v5

    .line 1860
    :cond_0
    iget-object v5, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientNotSip:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-gtz v5, :cond_1

    iget-object v5, p0, Lcom/meizu/widget/RecipientEdit;->mCheckingRecipient:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 1861
    :cond_1
    sget-object v5, Lcom/meizu/widget/RecipientStateInfo$SipState;->SIP_NO:Lcom/meizu/widget/RecipientStateInfo$SipState;

    goto :goto_0

    .line 1864
    :cond_2
    const/4 v3, 0x0

    .line 1865
    .local v3, offline:Z
    iget-object v5, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientDataList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1866
    .local v2, number:Ljava/lang/String;
    iget-object v5, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientState:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/meizu/widget/RecipientStateInfo$SipState;

    .line 1867
    .local v4, state:Lcom/meizu/widget/RecipientStateInfo$SipState;
    if-eqz v4, :cond_4

    sget-object v5, Lcom/meizu/widget/RecipientStateInfo$SipState;->SIP_YES:Lcom/meizu/widget/RecipientStateInfo$SipState;

    if-eq v4, v5, :cond_5

    sget-object v5, Lcom/meizu/widget/RecipientStateInfo$SipState;->SIP_OFFLINE:Lcom/meizu/widget/RecipientStateInfo$SipState;

    if-eq v4, v5, :cond_5

    .line 1868
    :cond_4
    sget-object v5, Lcom/meizu/widget/RecipientStateInfo$SipState;->SIP_NO:Lcom/meizu/widget/RecipientStateInfo$SipState;

    goto :goto_0

    .line 1871
    :cond_5
    sget-object v5, Lcom/meizu/widget/RecipientStateInfo$SipState;->SIP_OFFLINE:Lcom/meizu/widget/RecipientStateInfo$SipState;

    if-ne v4, v5, :cond_3

    .line 1872
    const/4 v3, 0x1

    goto :goto_1

    .line 1876
    .end local v2           #number:Ljava/lang/String;
    .end local v4           #state:Lcom/meizu/widget/RecipientStateInfo$SipState;
    :cond_6
    iget-object v5, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v5}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/meizu/widget/RecipientEdit;->removeSpecialCharacter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1877
    .local v1, input:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_9

    iget-object v5, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientDataList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 1878
    iget-object v5, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientState:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/meizu/widget/RecipientStateInfo$SipState;

    .line 1879
    .restart local v4       #state:Lcom/meizu/widget/RecipientStateInfo$SipState;
    if-eqz v4, :cond_7

    sget-object v5, Lcom/meizu/widget/RecipientStateInfo$SipState;->SIP_YES:Lcom/meizu/widget/RecipientStateInfo$SipState;

    if-eq v4, v5, :cond_8

    sget-object v5, Lcom/meizu/widget/RecipientStateInfo$SipState;->SIP_OFFLINE:Lcom/meizu/widget/RecipientStateInfo$SipState;

    if-eq v4, v5, :cond_8

    .line 1880
    :cond_7
    sget-object v5, Lcom/meizu/widget/RecipientStateInfo$SipState;->SIP_NO:Lcom/meizu/widget/RecipientStateInfo$SipState;

    goto :goto_0

    .line 1883
    :cond_8
    sget-object v5, Lcom/meizu/widget/RecipientStateInfo$SipState;->SIP_OFFLINE:Lcom/meizu/widget/RecipientStateInfo$SipState;

    if-ne v4, v5, :cond_9

    .line 1884
    const/4 v3, 0x1

    .line 1888
    .end local v4           #state:Lcom/meizu/widget/RecipientStateInfo$SipState;
    :cond_9
    if-eqz v3, :cond_a

    .line 1889
    sget-object v5, Lcom/meizu/widget/RecipientStateInfo$SipState;->SIP_OFFLINE:Lcom/meizu/widget/RecipientStateInfo$SipState;

    goto :goto_0

    .line 1891
    :cond_a
    sget-object v5, Lcom/meizu/widget/RecipientStateInfo$SipState;->SIP_YES:Lcom/meizu/widget/RecipientStateInfo$SipState;

    goto :goto_0
.end method

.method public getSipVersion()I
    .locals 4

    .prologue
    .line 1899
    const v1, 0x7fffffff

    .line 1900
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

    .line 1901
    .local v2, version:I
    if-ge v2, v1, :cond_0

    .line 1902
    move v1, v2

    goto :goto_0

    .line 1906
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
    .line 1914
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1915
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

    .line 1916
    .local v3, number:Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/meizu/widget/RecipientEdit;->isValidRecipient(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1917
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1921
    .end local v3           #number:Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v4}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/meizu/widget/RecipientEdit;->removeSpecialCharacter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1922
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

    .line 1924
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1927
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 1930
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
    .line 1938
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1939
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

    .line 1940
    .local v4, number:Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/meizu/widget/RecipientEdit;->isValidRecipient(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1941
    iget-object v5, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientMap:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1942
    .local v3, name:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1943
    move-object v3, v4

    .line 1945
    :cond_1
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1949
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

    .line 1950
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

    .line 1952
    invoke-direct {p0, v1}, Lcom/meizu/widget/RecipientEdit;->queryDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1953
    .restart local v3       #name:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1954
    move-object v3, v1

    .line 1956
    :cond_3
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1959
    .end local v3           #name:Ljava/lang/String;
    :cond_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_5

    .line 1962
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

    .line 1579
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

    .line 1580
    .local v2, number:Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/meizu/widget/RecipientEdit;->isValidRecipient(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1590
    .end local v2           #number:Ljava/lang/String;
    :cond_1
    :goto_0
    return v3

    .line 1585
    :cond_2
    iget-object v4, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v4}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/meizu/widget/RecipientEdit;->removeSpecialCharacter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1586
    .local v1, input:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-direct {p0, v1}, Lcom/meizu/widget/RecipientEdit;->isValidRecipient(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1590
    :cond_3
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public hasValidRecipient()Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 1594
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

    .line 1595
    .local v2, number:Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/meizu/widget/RecipientEdit;->isValidRecipient(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1605
    .end local v2           #number:Ljava/lang/String;
    :cond_1
    :goto_0
    return v3

    .line 1600
    :cond_2
    iget-object v4, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v4}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/meizu/widget/RecipientEdit;->removeSpecialCharacter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1601
    .local v1, input:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-direct {p0, v1}, Lcom/meizu/widget/RecipientEdit;->isValidRecipient(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1605
    :cond_3
    const/4 v3, 0x0

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .prologue
    .line 335
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 337
    sget-object v0, Lcom/meizu/widget/RecipientEdit;->sContentWorker:Lcom/meizu/widget/RecipientEdit$RecipientWorker;

    if-nez v0, :cond_0

    .line 338
    new-instance v0, Lcom/meizu/widget/RecipientEdit$RecipientWorker;

    const-string v1, "mz_recipient_content"

    invoke-direct {v0, v1}, Lcom/meizu/widget/RecipientEdit$RecipientWorker;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/meizu/widget/RecipientEdit;->sContentWorker:Lcom/meizu/widget/RecipientEdit$RecipientWorker;

    .line 341
    :cond_0
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit;->mContentHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 342
    sget-object v0, Lcom/meizu/widget/RecipientEdit;->sContentWorker:Lcom/meizu/widget/RecipientEdit$RecipientWorker;

    invoke-static {v0}, Lcom/meizu/widget/RecipientEdit$RecipientWorker;->access$104(Lcom/meizu/widget/RecipientEdit$RecipientWorker;)I

    .line 343
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/meizu/widget/RecipientEdit;->sContentWorker:Lcom/meizu/widget/RecipientEdit$RecipientWorker;

    invoke-virtual {v1}, Lcom/meizu/widget/RecipientEdit$RecipientWorker;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/meizu/widget/RecipientEdit;->mContentHandler:Landroid/os/Handler;

    .line 346
    :cond_1
    new-instance v0, Lcom/meizu/widget/RecipientEdit$RecipientObserver;

    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mContentHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/meizu/widget/RecipientEdit$RecipientObserver;-><init>(Lcom/meizu/widget/RecipientEdit;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/meizu/widget/RecipientEdit;->mObserver:Landroid/database/ContentObserver;

    .line 347
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/meizu/widget/RecipientEdit;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 349
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9
    .parameter "view"

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 720
    instance-of v5, p1, Landroid/widget/AutoCompleteTextView;

    if-eqz v5, :cond_1

    .line 721
    iget-object v5, p0, Lcom/meizu/widget/RecipientEdit;->mViewSelected:Landroid/view/View;

    if-eqz v5, :cond_0

    .line 722
    iget-object v5, p0, Lcom/meizu/widget/RecipientEdit;->mViewSelected:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setSelected(Z)V

    .line 723
    iput-object v6, p0, Lcom/meizu/widget/RecipientEdit;->mViewSelected:Landroid/view/View;

    .line 724
    iget-object v5, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v5, v8}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->setCursorVisible(Z)V

    .line 770
    :cond_0
    :goto_0
    return-void

    .line 726
    :cond_1
    instance-of v5, p1, Lcom/meizu/widget/RecipientEdit$ItemView;

    if-eqz v5, :cond_5

    .line 727
    invoke-direct {p0}, Lcom/meizu/widget/RecipientEdit;->removeComposingSpan()V

    .line 728
    iget-object v5, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v5}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 729
    .local v4, text:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 730
    invoke-virtual {p0, v4}, Lcom/meizu/widget/RecipientEdit;->addRecipient(Ljava/lang/CharSequence;)Z

    .line 731
    iget-object v5, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    const-string v6, ""

    invoke-virtual {v5, v6}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 734
    :cond_2
    iget-object v5, p0, Lcom/meizu/widget/RecipientEdit;->mViewSelected:Landroid/view/View;

    if-eqz v5, :cond_4

    .line 735
    iget-object v5, p0, Lcom/meizu/widget/RecipientEdit;->mViewSelected:Landroid/view/View;

    if-ne p1, v5, :cond_3

    .line 736
    iget-object v5, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientLayout:Landroid/widget/AbsoluteLayout;

    iget-object v6, p0, Lcom/meizu/widget/RecipientEdit;->mViewSelected:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/widget/AbsoluteLayout;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 737
    .local v1, index:I
    iget-object v5, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientDataList:Ljava/util/ArrayList;

    add-int/lit8 v6, v1, -0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 738
    .local v3, phoneOrEmail:Ljava/lang/String;
    iget-object v5, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientMap:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 739
    .local v2, name:Ljava/lang/String;
    invoke-direct {p0, v3, v2}, Lcom/meizu/widget/RecipientEdit;->goContactDetail(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 742
    .end local v1           #index:I
    .end local v2           #name:Ljava/lang/String;
    .end local v3           #phoneOrEmail:Ljava/lang/String;
    :cond_3
    iget-object v5, p0, Lcom/meizu/widget/RecipientEdit;->mViewSelected:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setSelected(Z)V

    .line 748
    :goto_1
    iput-object p1, p0, Lcom/meizu/widget/RecipientEdit;->mViewSelected:Landroid/view/View;

    .line 749
    invoke-virtual {p1, v8}, Landroid/view/View;->setSelected(Z)V

    .line 751
    iget-object v5, p0, Lcom/meizu/widget/RecipientEdit;->mContext:Landroid/content/Context;

    const-string v6, "input_method"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 753
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v5, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v0, v5, v7}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_0

    .line 745
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_4
    iget-object v5, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v5, v7}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->setCursorVisible(Z)V

    goto :goto_1

    .line 755
    .end local v4           #text:Ljava/lang/String;
    :cond_5
    iget-object v5, p0, Lcom/meizu/widget/RecipientEdit;->mViewSelected:Landroid/view/View;

    if-eqz v5, :cond_6

    .line 756
    iget-object v5, p0, Lcom/meizu/widget/RecipientEdit;->mViewSelected:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setSelected(Z)V

    .line 757
    iput-object v6, p0, Lcom/meizu/widget/RecipientEdit;->mViewSelected:Landroid/view/View;

    .line 758
    iget-object v5, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v5, v8}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->setCursorVisible(Z)V

    .line 761
    :cond_6
    iget-object v5, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v5}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->requestFocus()Z

    .line 763
    iget-object v5, p0, Lcom/meizu/widget/RecipientEdit;->mContext:Landroid/content/Context;

    const-string v6, "input_method"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 765
    .restart local v0       #imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v5, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v0, v5, v8}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 766
    iget-object v5, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v5}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->isPopupShowing()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 767
    iget-object v5, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v5, v8}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->ensureImeVisible(Z)V

    goto/16 :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .parameter "newConfig"

    .prologue
    .line 396
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 397
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/meizu/widget/RecipientEdit;->mIsFirstLayout:Z

    .line 399
    const v1, 0x10203a5

    invoke-virtual {p0, v1}, Lcom/meizu/widget/RecipientEdit;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 400
    .local v0, root:Landroid/view/View;
    invoke-virtual {p0}, Lcom/meizu/widget/RecipientEdit;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x105006a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/meizu/widget/RecipientEdit;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x105006b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 406
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v1}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->isPopupShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 407
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->dismiss(Z)V

    .line 408
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v1}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->showDropDown()V

    .line 410
    :cond_0
    return-void
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 4
    .parameter "outAttrs"

    .prologue
    .line 316
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v1}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->getImeOptions()I

    move-result v1

    and-int/lit16 v0, v1, -0x100

    .line 317
    .local v0, imeOptions:I
    invoke-direct {p0}, Lcom/meizu/widget/RecipientEdit;->isDefaultInputMethod()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 318
    const/16 v1, 0x82

    invoke-virtual {p0, v1}, Lcom/meizu/widget/RecipientEdit;->focusSearch(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 319
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    or-int/lit8 v2, v0, 0x5

    invoke-virtual {v1, v2}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->setImeOptions(I)V

    .line 330
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    return-object v1

    .line 321
    :cond_0
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    or-int/lit8 v2, v0, 0x6

    invoke-virtual {v1, v2}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->setImeOptions(I)V

    goto :goto_0

    .line 324
    :cond_1
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    or-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->setImeOptions(I)V

    .line 325
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {p0}, Lcom/meizu/widget/RecipientEdit;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x104057d

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

    .line 353
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 355
    sget-object v0, Lcom/meizu/widget/RecipientEdit;->sRecipientWorker:Lcom/meizu/widget/RecipientEdit$RecipientWorker;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/meizu/widget/RecipientEdit;->sRecipientWorker:Lcom/meizu/widget/RecipientEdit$RecipientWorker;

    invoke-static {v0}, Lcom/meizu/widget/RecipientEdit$RecipientWorker;->access$106(Lcom/meizu/widget/RecipientEdit$RecipientWorker;)I

    move-result v0

    if-nez v0, :cond_0

    .line 356
    sget-object v0, Lcom/meizu/widget/RecipientEdit;->sRecipientWorker:Lcom/meizu/widget/RecipientEdit$RecipientWorker;

    invoke-virtual {v0}, Lcom/meizu/widget/RecipientEdit$RecipientWorker;->quit()V

    .line 357
    sput-object v2, Lcom/meizu/widget/RecipientEdit;->sRecipientWorker:Lcom/meizu/widget/RecipientEdit$RecipientWorker;

    .line 360
    :cond_0
    sget-object v0, Lcom/meizu/widget/RecipientEdit;->sHistoryWorker:Lcom/meizu/widget/RecipientEdit$RecipientWorker;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/meizu/widget/RecipientEdit;->sHistoryWorker:Lcom/meizu/widget/RecipientEdit$RecipientWorker;

    invoke-static {v0}, Lcom/meizu/widget/RecipientEdit$RecipientWorker;->access$106(Lcom/meizu/widget/RecipientEdit$RecipientWorker;)I

    move-result v0

    if-nez v0, :cond_1

    .line 361
    sget-object v0, Lcom/meizu/widget/RecipientEdit;->sHistoryWorker:Lcom/meizu/widget/RecipientEdit$RecipientWorker;

    invoke-virtual {v0}, Lcom/meizu/widget/RecipientEdit$RecipientWorker;->quit()V

    .line 362
    sput-object v2, Lcom/meizu/widget/RecipientEdit;->sHistoryWorker:Lcom/meizu/widget/RecipientEdit$RecipientWorker;

    .line 365
    :cond_1
    sget-object v0, Lcom/meizu/widget/RecipientEdit;->sContentWorker:Lcom/meizu/widget/RecipientEdit$RecipientWorker;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/meizu/widget/RecipientEdit;->sContentWorker:Lcom/meizu/widget/RecipientEdit$RecipientWorker;

    invoke-static {v0}, Lcom/meizu/widget/RecipientEdit$RecipientWorker;->access$106(Lcom/meizu/widget/RecipientEdit$RecipientWorker;)I

    move-result v0

    if-nez v0, :cond_2

    .line 366
    sget-object v0, Lcom/meizu/widget/RecipientEdit;->sContentWorker:Lcom/meizu/widget/RecipientEdit$RecipientWorker;

    invoke-virtual {v0}, Lcom/meizu/widget/RecipientEdit$RecipientWorker;->quit()V

    .line 367
    sput-object v2, Lcom/meizu/widget/RecipientEdit;->sContentWorker:Lcom/meizu/widget/RecipientEdit$RecipientWorker;

    .line 370
    :cond_2
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 371
    return-void
.end method

.method public onDragEvent(Landroid/view/DragEvent;)Z
    .locals 21
    .parameter "event"

    .prologue
    .line 497
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v10

    .line 498
    .local v10, localState:Ljava/lang/Object;
    instance-of v0, v10, Lcom/meizu/widget/RecipientEdit$DragInfo;

    move/from16 v19, v0

    if-nez v19, :cond_1

    .line 499
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->onDragEvent(Landroid/view/DragEvent;)Z

    move-result v14

    .line 603
    :cond_0
    :goto_0
    return v14

    .line 502
    :cond_1
    const/4 v14, 0x0

    .line 503
    .local v14, result:Z
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getX()F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v17, v0

    .line 504
    .local v17, x:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getY()F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v18, v0

    .local v18, y:I
    move-object v4, v10

    .line 505
    check-cast v4, Lcom/meizu/widget/RecipientEdit$DragInfo;

    .line 506
    .local v4, dragInfo:Lcom/meizu/widget/RecipientEdit$DragInfo;
    iget-object v6, v4, Lcom/meizu/widget/RecipientEdit$DragInfo;->mDragView:Lcom/meizu/widget/RecipientEdit$ItemView;

    .line 508
    .local v6, dragView:Lcom/meizu/widget/RecipientEdit$ItemView;
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getAction()I

    move-result v19

    packed-switch v19, :pswitch_data_0

    goto :goto_0

    .line 510
    :pswitch_0
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/meizu/widget/RecipientEdit;->mInDrag:Z

    .line 511
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/widget/RecipientEdit;->hasFocus()Z

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/meizu/widget/RecipientEdit;->refreshLayout(Z)V

    .line 512
    const/4 v14, 0x1

    .line 513
    goto :goto_0

    .line 516
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/RecipientEdit;->mRecipientLayout:Landroid/widget/AbsoluteLayout;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/widget/AbsoluteLayout;->removeView(Landroid/view/View;)V

    .line 517
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/widget/RecipientEdit;->hasFocus()Z

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/meizu/widget/RecipientEdit;->refreshLayout(Z)V

    .line 518
    const/4 v14, 0x1

    .line 519
    goto :goto_0

    .line 522
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/widget/RecipientEdit;->requestFocus()Z

    .line 523
    const/4 v14, 0x1

    .line 524
    goto :goto_0

    .line 527
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/RecipientEdit;->mRecipientLayout:Landroid/widget/AbsoluteLayout;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/widget/AbsoluteLayout;->indexOfChild(Landroid/view/View;)I

    move-result v9

    .line 528
    .local v9, lastPos:I
    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v4, v1, v2}, Lcom/meizu/widget/RecipientEdit;->changeViewPos(Lcom/meizu/widget/RecipientEdit$DragInfo;II)I

    move-result v12

    .line 529
    .local v12, pos:I
    if-eq v12, v9, :cond_2

    .line 530
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/widget/RecipientEdit;->hasFocus()Z

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/meizu/widget/RecipientEdit;->refreshLayout(Z)V

    .line 532
    :cond_2
    const/4 v14, 0x1

    .line 533
    goto :goto_0

    .line 536
    .end local v9           #lastPos:I
    .end local v12           #pos:I
    :pswitch_4
    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v4, v1, v2}, Lcom/meizu/widget/RecipientEdit;->changeViewPos(Lcom/meizu/widget/RecipientEdit$DragInfo;II)I

    move-result v5

    .line 537
    .local v5, dragPos:I
    if-lez v5, :cond_4

    .line 538
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/RecipientEdit;->mFirstDragPos:I

    move/from16 v19, v0

    if-lez v19, :cond_5

    .line 539
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/RecipientEdit;->mFirstDragPos:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-eq v5, v0, :cond_3

    .line 540
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

    .line 541
    .local v13, removeStr:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/RecipientEdit;->mRecipientDataList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    add-int/lit8 v20, v5, -0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v1, v13}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 544
    .end local v13           #removeStr:Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->setCursorVisible(Z)V

    .line 545
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/meizu/widget/RecipientEdit;->mViewSelected:Landroid/view/View;

    .line 546
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Lcom/meizu/widget/RecipientEdit$ItemView;->setVisibility(I)V

    .line 547
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/meizu/widget/RecipientEdit;->mFirstDragPos:I

    .line 571
    :cond_4
    :goto_1
    const/4 v14, 0x1

    .line 572
    goto/16 :goto_0

    .line 549
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    move-result-object v3

    .line 550
    .local v3, clipData:Landroid/content/ClipData;
    invoke-virtual {v3}, Landroid/content/ClipData;->getItemCount()I

    move-result v19

    if-lez v19, :cond_4

    .line 551
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v8

    .line 552
    .local v8, item:Landroid/content/ClipData$Item;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/RecipientEdit;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    .line 553
    .local v15, text:Ljava/lang/String;
    invoke-static {v15}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v16

    .line 554
    .local v16, token:[Landroid/text/util/Rfc822Token;
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v19, v0

    if-lez v19, :cond_4

    .line 555
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

    .line 558
    .local v7, flag:Z
    if-eqz v7, :cond_6

    .line 559
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->setCursorVisible(Z)V

    .line 560
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/meizu/widget/RecipientEdit;->mViewSelected:Landroid/view/View;

    .line 561
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Lcom/meizu/widget/RecipientEdit$ItemView;->setVisibility(I)V

    goto :goto_1

    .line 564
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/RecipientEdit;->mRecipientLayout:Landroid/widget/AbsoluteLayout;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Landroid/widget/AbsoluteLayout;->removeViewAt(I)V

    .line 565
    const/16 v19, 0x8

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Lcom/meizu/widget/RecipientEdit$ItemView;->setVisibility(I)V

    goto :goto_1

    .line 575
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

    .line 576
    invoke-virtual {v6}, Lcom/meizu/widget/RecipientEdit$ItemView;->getVisibility()I

    move-result v19

    const/16 v20, 0x4

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_9

    .line 577
    invoke-virtual {v6}, Lcom/meizu/widget/RecipientEdit$ItemView;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    check-cast v11, Landroid/view/ViewGroup;

    .line 578
    .local v11, oldParent:Landroid/view/ViewGroup;
    if-eqz v11, :cond_7

    .line 579
    invoke-virtual {v11, v6}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 582
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

    .line 583
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->setCursorVisible(Z)V

    .line 584
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/meizu/widget/RecipientEdit;->mViewSelected:Landroid/view/View;

    .line 585
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Lcom/meizu/widget/RecipientEdit$ItemView;->setVisibility(I)V

    .line 589
    .end local v11           #oldParent:Landroid/view/ViewGroup;
    :goto_2
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/meizu/widget/RecipientEdit;->mFirstDragPos:I

    .line 592
    :cond_8
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/meizu/widget/RecipientEdit;->mInDrag:Z

    .line 593
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/widget/RecipientEdit;->hasFocus()Z

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/meizu/widget/RecipientEdit;->refreshLayout(Z)V

    .line 594
    const/4 v14, 0x1

    .line 596
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/meizu/widget/RecipientEdit;->mStartDrag:Z

    move/from16 v19, v0

    if-eqz v19, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/RecipientEdit;->mDragWatcher:Lcom/meizu/widget/RecipientEdit$RecipientDragWatcher;

    move-object/from16 v19, v0

    if-eqz v19, :cond_0

    .line 597
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/RecipientEdit;->mDragWatcher:Lcom/meizu/widget/RecipientEdit$RecipientDragWatcher;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Lcom/meizu/widget/RecipientEdit$RecipientDragWatcher;->afterDragEnded(Landroid/view/View;)V

    .line 598
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/meizu/widget/RecipientEdit;->mStartDrag:Z

    goto/16 :goto_0

    .line 587
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

    .line 508
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
    .line 413
    invoke-direct {p0}, Lcom/meizu/widget/RecipientEdit;->removeComposingSpan()V

    .line 414
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v1}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 415
    .local v0, text:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x10203a9

    if-ne v1, v2, :cond_0

    if-nez p2, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 417
    invoke-virtual {p0, v0}, Lcom/meizu/widget/RecipientEdit;->addRecipient(Ljava/lang/CharSequence;)Z

    .line 418
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 421
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/widget/RecipientEdit;->getOnFocusChangeListener()Landroid/view/View$OnFocusChangeListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 422
    invoke-virtual {p0}, Lcom/meizu/widget/RecipientEdit;->getOnFocusChangeListener()Landroid/view/View$OnFocusChangeListener;

    move-result-object v1

    invoke-interface {v1, p0, p2}, Landroid/view/View$OnFocusChangeListener;->onFocusChange(Landroid/view/View;Z)V

    .line 425
    :cond_1
    if-nez p2, :cond_2

    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mViewSelected:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 426
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mViewSelected:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 427
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mViewSelected:Landroid/view/View;

    .line 428
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->setCursorVisible(Z)V

    .line 431
    :cond_2
    invoke-direct {p0, p2}, Lcom/meizu/widget/RecipientEdit;->refreshLayout(Z)V

    .line 432
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

    .line 1068
    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "default_input_method"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1071
    .local v1, inputMethod:Ljava/lang/String;
    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit;->mLastInputMethod:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1072
    iput-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mLastInputMethod:Ljava/lang/String;

    .line 1073
    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v2}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->getImeOptions()I

    move-result v2

    and-int/lit16 v0, v2, -0x100

    .line 1074
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

    .line 1075
    const/16 v2, 0x82

    invoke-virtual {p0, v2}, Lcom/meizu/widget/RecipientEdit;->focusSearch(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1076
    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    or-int/lit8 v3, v0, 0x5

    invoke-virtual {v2, v3}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->setImeOptions(I)V

    .line 1077
    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    const/4 v3, 0x5

    invoke-virtual {v2, v4, v3}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->setImeActionLabel(Ljava/lang/CharSequence;I)V

    .line 1088
    :goto_0
    iget v2, p0, Lcom/meizu/widget/RecipientEdit;->mInputType:I

    invoke-virtual {p0, v2}, Lcom/meizu/widget/RecipientEdit;->setInputType(I)V

    .line 1091
    .end local v0           #imeOptions:I
    :cond_0
    iget-boolean v2, p0, Lcom/meizu/widget/RecipientEdit;->mIsFirstLayout:Z

    if-eqz v2, :cond_1

    .line 1092
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/meizu/widget/RecipientEdit;->mIsFirstLayout:Z

    .line 1093
    invoke-virtual {p0}, Lcom/meizu/widget/RecipientEdit;->hasFocus()Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/meizu/widget/RecipientEdit;->refreshLayout(Z)V

    .line 1096
    :cond_1
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 1097
    return-void

    .line 1079
    .restart local v0       #imeOptions:I
    :cond_2
    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    or-int/lit8 v3, v0, 0x6

    invoke-virtual {v2, v3}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->setImeOptions(I)V

    .line 1080
    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    const/4 v3, 0x6

    invoke-virtual {v2, v4, v3}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->setImeActionLabel(Ljava/lang/CharSequence;I)V

    goto :goto_0

    .line 1083
    :cond_3
    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    or-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->setImeOptions(I)V

    .line 1084
    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {p0}, Lcom/meizu/widget/RecipientEdit;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x104057d

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

    .line 672
    iget-boolean v6, p0, Lcom/meizu/widget/RecipientEdit;->mEnabledDrag:Z

    if-eqz v6, :cond_5

    instance-of v6, p1, Lcom/meizu/widget/RecipientEdit$ItemView;

    if-eqz v6, :cond_5

    .line 674
    invoke-direct {p0}, Lcom/meizu/widget/RecipientEdit;->removeComposingSpan()V

    .line 675
    iget-object v6, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v6}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 676
    .local v4, text:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 677
    invoke-virtual {p0, v4}, Lcom/meizu/widget/RecipientEdit;->addRecipient(Ljava/lang/CharSequence;)Z

    .line 678
    iget-object v6, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    const-string v9, ""

    invoke-virtual {v6, v9}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 681
    :cond_0
    iget-object v6, p0, Lcom/meizu/widget/RecipientEdit;->mViewSelected:Landroid/view/View;

    if-eqz v6, :cond_1

    .line 682
    iget-object v6, p0, Lcom/meizu/widget/RecipientEdit;->mViewSelected:Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/view/View;->setSelected(Z)V

    .line 683
    iput-object v10, p0, Lcom/meizu/widget/RecipientEdit;->mViewSelected:Landroid/view/View;

    .line 684
    iget-object v6, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v6, v7}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->setCursorVisible(Z)V

    .line 687
    :cond_1
    invoke-virtual {p1, v7}, Landroid/view/View;->setSelected(Z)V

    .line 690
    iget-object v6, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientLayout:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v6, p1}, Landroid/widget/AbsoluteLayout;->indexOfChild(Landroid/view/View;)I

    move-result v6

    iput v6, p0, Lcom/meizu/widget/RecipientEdit;->mFirstDragPos:I

    .line 691
    iget-object v6, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientDataList:Ljava/util/ArrayList;

    iget v9, p0, Lcom/meizu/widget/RecipientEdit;->mFirstDragPos:I

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 692
    .local v3, phoneOrEmail:Ljava/lang/String;
    iget-object v6, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientMap:Ljava/util/HashMap;

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 693
    .local v2, name:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 694
    move-object v2, v3

    .line 696
    :cond_2
    new-instance v5, Landroid/text/util/Rfc822Token;

    invoke-direct {v5, v2, v3, v10}, Landroid/text/util/Rfc822Token;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 697
    .local v5, token:Landroid/text/util/Rfc822Token;
    invoke-virtual {v5}, Landroid/text/util/Rfc822Token;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    .line 699
    .local v0, data:Landroid/content/ClipData;
    iget-object v6, p0, Lcom/meizu/widget/RecipientEdit;->mDragInfo:Lcom/meizu/widget/RecipientEdit$DragInfo;

    if-nez v6, :cond_3

    .line 700
    new-instance v6, Lcom/meizu/widget/RecipientEdit$DragInfo;

    invoke-direct {v6}, Lcom/meizu/widget/RecipientEdit$DragInfo;-><init>()V

    iput-object v6, p0, Lcom/meizu/widget/RecipientEdit;->mDragInfo:Lcom/meizu/widget/RecipientEdit$DragInfo;

    .line 702
    :cond_3
    iget-object v9, p0, Lcom/meizu/widget/RecipientEdit;->mDragInfo:Lcom/meizu/widget/RecipientEdit$DragInfo;

    move-object v6, p1

    check-cast v6, Lcom/meizu/widget/RecipientEdit$ItemView;

    iput-object v6, v9, Lcom/meizu/widget/RecipientEdit$DragInfo;->mDragView:Lcom/meizu/widget/RecipientEdit$ItemView;

    .line 704
    new-instance v6, Lcom/meizu/widget/RecipientEdit$RecipientDragShadowBuilder;

    invoke-direct {v6, p0, p1}, Lcom/meizu/widget/RecipientEdit$RecipientDragShadowBuilder;-><init>(Lcom/meizu/widget/RecipientEdit;Landroid/view/View;)V

    iget-object v9, p0, Lcom/meizu/widget/RecipientEdit;->mDragInfo:Lcom/meizu/widget/RecipientEdit$DragInfo;

    invoke-virtual {p1, v0, v6, v9, v8}, Landroid/view/View;->startDrag(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    move-result v1

    .line 705
    .local v1, flag:Z
    if-eqz v1, :cond_4

    .line 706
    const/4 v6, 0x4

    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 707
    iget-object v6, p0, Lcom/meizu/widget/RecipientEdit;->mDragWatcher:Lcom/meizu/widget/RecipientEdit$RecipientDragWatcher;

    if-eqz v6, :cond_4

    .line 708
    iget-object v6, p0, Lcom/meizu/widget/RecipientEdit;->mDragWatcher:Lcom/meizu/widget/RecipientEdit$RecipientDragWatcher;

    invoke-interface {v6, p0}, Lcom/meizu/widget/RecipientEdit$RecipientDragWatcher;->beforeDragStarted(Landroid/view/View;)V

    .line 709
    iput-boolean v7, p0, Lcom/meizu/widget/RecipientEdit;->mStartDrag:Z

    :cond_4
    move v6, v7

    .line 716
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

    .line 1029
    iget-boolean v2, p0, Lcom/meizu/widget/RecipientEdit;->mIsFirstLayout:Z

    if-eqz v2, :cond_0

    .line 1030
    invoke-virtual {p0}, Lcom/meizu/widget/RecipientEdit;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1031
    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v2, v4}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 1032
    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit;->mAddContactsBtn:Landroid/widget/ImageButton;

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1033
    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit;->mHintView2:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1034
    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit;->mDisplayNameView:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1035
    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit;->mCountView:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1046
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v2, v4, v4}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->measure(II)V

    .line 1047
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

    .line 1050
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

    .line 1053
    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v2}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    .line 1055
    .local v0, lp:Landroid/widget/AbsoluteLayout$LayoutParams;
    if-eqz v0, :cond_1

    .line 1056
    iput v4, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    .line 1057
    iget v2, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    iget-object v3, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v3}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    .line 1058
    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientLayout:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v2}, Landroid/widget/AbsoluteLayout;->getWidth()I

    move-result v2

    iput v2, p0, Lcom/meizu/widget/RecipientEdit;->mEditMaxWidth:I

    .line 1059
    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    iget v3, p0, Lcom/meizu/widget/RecipientEdit;->mEditMaxWidth:I

    invoke-virtual {v2, v3}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->setWidth(I)V

    .line 1063
    .end local v0           #lp:Landroid/widget/AbsoluteLayout$LayoutParams;
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 1064
    return-void

    .line 1037
    .end local v1           #textWidth:F
    :cond_2
    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v2, v3}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 1038
    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit;->mAddContactsBtn:Landroid/widget/ImageButton;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1039
    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit;->mHintView2:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1040
    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit;->mDisplayNameView:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1041
    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit;->mCountView:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public openGlobalAddressBook(Z)V
    .locals 0
    .parameter "open"

    .prologue
    .line 2358
    iput-boolean p1, p0, Lcom/meizu/widget/RecipientEdit;->mOpenGlobalAddressBook:Z

    .line 2359
    return-void
.end method

.method public openHistory()V
    .locals 3

    .prologue
    .line 2165
    iget v0, p0, Lcom/meizu/widget/RecipientEdit;->mInputType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 2175
    :goto_0
    return-void

    .line 2169
    :cond_0
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mDbLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2170
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/meizu/widget/RecipientEdit;->mIsSaveHistory:Z

    .line 2171
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit;->mDbHelper:Lcom/meizu/widget/RecipientDbHelper;

    if-nez v0, :cond_1

    .line 2172
    new-instance v0, Lcom/meizu/widget/RecipientDbHelper;

    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/meizu/widget/RecipientDbHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/meizu/widget/RecipientEdit;->mDbHelper:Lcom/meizu/widget/RecipientDbHelper;

    .line 2174
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

    .line 1653
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1654
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/meizu/widget/RecipientEdit;->mHasEmail:Z

    .line 1655
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientLayout:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v1}, Landroid/widget/AbsoluteLayout;->getChildCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x2

    .line 1656
    .local v0, num:I
    if-lez v0, :cond_2

    .line 1657
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientHandler:Lcom/meizu/widget/RecipientEdit$RecipientHandler;

    if-eqz v1, :cond_0

    .line 1658
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientHandler:Lcom/meizu/widget/RecipientEdit$RecipientHandler;

    invoke-virtual {v1, v3}, Lcom/meizu/widget/RecipientEdit$RecipientHandler;->removeMessages(I)V

    .line 1660
    :cond_0
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientDataList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1661
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 1662
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientState:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 1663
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mSipVersion:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 1664
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mCheckingRecipient:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1665
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientNotSip:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1666
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientLayout:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v1, v3, v0}, Landroid/widget/AbsoluteLayout;->removeViews(II)V

    .line 1668
    invoke-direct {p0}, Lcom/meizu/widget/RecipientEdit;->endCheck()V

    .line 1669
    invoke-virtual {p0}, Lcom/meizu/widget/RecipientEdit;->hasFocus()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/meizu/widget/RecipientEdit;->refreshLayout(Z)V

    .line 1671
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mOnSipStateChangedListener:Lcom/meizu/widget/RecipientStateInfo$OnSipStateChangedListener;

    if-eqz v1, :cond_1

    .line 1672
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mOnSipStateChangedListener:Lcom/meizu/widget/RecipientStateInfo$OnSipStateChangedListener;

    sget-object v2, Lcom/meizu/widget/RecipientStateInfo$SipState;->SIP_NO:Lcom/meizu/widget/RecipientStateInfo$SipState;

    invoke-interface {v1, p0, v2}, Lcom/meizu/widget/RecipientStateInfo$OnSipStateChangedListener;->onSipStateChanged(Landroid/view/View;Lcom/meizu/widget/RecipientStateInfo$SipState;)V

    .line 1675
    :cond_1
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mOnRecipientChangedListener:Lcom/meizu/widget/RecipientEdit$OnRecipientChangedListener;

    if-eqz v1, :cond_2

    .line 1676
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mOnRecipientChangedListener:Lcom/meizu/widget/RecipientEdit$OnRecipientChangedListener;

    invoke-interface {v1}, Lcom/meizu/widget/RecipientEdit$OnRecipientChangedListener;->OnRecipientChanged()V

    .line 1679
    :cond_2
    return-void
.end method

.method public removeEmailWhenGroup()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 1742
    iget-object v7, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientDataList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1743
    .local v0, count:I
    iget-object v7, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v7}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/meizu/widget/RecipientEdit;->removeSpecialCharacter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1744
    .local v2, input:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-static {v2}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    if-lez v0, :cond_0

    .line 1745
    iget-object v7, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    const-string v8, ""

    invoke-virtual {v7, v8}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1748
    :cond_0
    iget-boolean v7, p0, Lcom/meizu/widget/RecipientEdit;->mHasEmail:Z

    if-eqz v7, :cond_9

    if-le v0, v9, :cond_9

    .line 1749
    iget-object v7, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientDataList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 1750
    .local v3, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 1751
    .local v5, refreshSipState:Z
    add-int/lit8 v1, v0, -0x1

    .local v1, index:I
    :goto_0
    if-lez v1, :cond_5

    .line 1752
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1753
    .local v4, number:Ljava/lang/String;
    invoke-static {v4}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1754
    iget-object v7, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientHandler:Lcom/meizu/widget/RecipientEdit$RecipientHandler;

    if-eqz v7, :cond_1

    .line 1755
    iget-object v7, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientHandler:Lcom/meizu/widget/RecipientEdit$RecipientHandler;

    invoke-virtual {v7, v9, v4}, Lcom/meizu/widget/RecipientEdit$RecipientHandler;->removeMessages(ILjava/lang/Object;)V

    .line 1758
    :cond_1
    iget-object v7, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientDataList:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1759
    iget-object v7, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientMap:Ljava/util/HashMap;

    invoke-virtual {v7, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1760
    iget-object v7, p0, Lcom/meizu/widget/RecipientEdit;->mCheckingRecipient:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1761
    iget-object v7, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientState:Ljava/util/HashMap;

    invoke-virtual {v7, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1762
    iget-object v7, p0, Lcom/meizu/widget/RecipientEdit;->mSipVersion:Ljava/util/HashMap;

    invoke-virtual {v7, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1763
    iget-object v7, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientNotSip:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v5

    .line 1764
    iget-object v7, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientLayout:Landroid/widget/AbsoluteLayout;

    add-int/lit8 v8, v1, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/AbsoluteLayout;->removeViewAt(I)V

    .line 1751
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1765
    :cond_3
    if-ne v1, v9, :cond_2

    .line 1766
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1767
    iget-object v7, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientDataList:Ljava/util/ArrayList;

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1768
    .local v6, removeStr:Ljava/lang/String;
    iget-object v7, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientHandler:Lcom/meizu/widget/RecipientEdit$RecipientHandler;

    if-eqz v7, :cond_4

    .line 1769
    iget-object v7, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientHandler:Lcom/meizu/widget/RecipientEdit$RecipientHandler;

    invoke-virtual {v7, v9, v6}, Lcom/meizu/widget/RecipientEdit$RecipientHandler;->removeMessages(ILjava/lang/Object;)V

    .line 1772
    :cond_4
    iget-object v7, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientMap:Ljava/util/HashMap;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1773
    iget-object v7, p0, Lcom/meizu/widget/RecipientEdit;->mCheckingRecipient:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1774
    iget-object v7, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientState:Ljava/util/HashMap;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1775
    iget-object v7, p0, Lcom/meizu/widget/RecipientEdit;->mSipVersion:Ljava/util/HashMap;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1776
    iget-object v7, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientNotSip:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v5

    .line 1777
    iget-object v7, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientLayout:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v7, v9}, Landroid/widget/AbsoluteLayout;->removeViewAt(I)V

    goto :goto_1

    .line 1782
    .end local v4           #number:Ljava/lang/String;
    .end local v6           #removeStr:Ljava/lang/String;
    :cond_5
    iget-object v7, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientDataList:Ljava/util/ArrayList;

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 1783
    iput-boolean v10, p0, Lcom/meizu/widget/RecipientEdit;->mHasEmail:Z

    .line 1786
    :cond_6
    if-eqz v5, :cond_7

    .line 1787
    invoke-direct {p0}, Lcom/meizu/widget/RecipientEdit;->refreshSipDestState()V

    .line 1789
    :cond_7
    invoke-direct {p0}, Lcom/meizu/widget/RecipientEdit;->endCheck()V

    .line 1790
    invoke-virtual {p0}, Lcom/meizu/widget/RecipientEdit;->hasFocus()Z

    move-result v7

    invoke-direct {p0, v7}, Lcom/meizu/widget/RecipientEdit;->refreshLayout(Z)V

    .line 1792
    iget-object v7, p0, Lcom/meizu/widget/RecipientEdit;->mOnSipStateChangedListener:Lcom/meizu/widget/RecipientStateInfo$OnSipStateChangedListener;

    if-eqz v7, :cond_8

    .line 1793
    iget-object v7, p0, Lcom/meizu/widget/RecipientEdit;->mOnSipStateChangedListener:Lcom/meizu/widget/RecipientStateInfo$OnSipStateChangedListener;

    invoke-virtual {p0}, Lcom/meizu/widget/RecipientEdit;->getSipState()Lcom/meizu/widget/RecipientStateInfo$SipState;

    move-result-object v8

    invoke-interface {v7, p0, v8}, Lcom/meizu/widget/RecipientStateInfo$OnSipStateChangedListener;->onSipStateChanged(Landroid/view/View;Lcom/meizu/widget/RecipientStateInfo$SipState;)V

    .line 1796
    :cond_8
    iget-object v7, p0, Lcom/meizu/widget/RecipientEdit;->mOnRecipientChangedListener:Lcom/meizu/widget/RecipientEdit$OnRecipientChangedListener;

    if-eqz v7, :cond_9

    .line 1797
    iget-object v7, p0, Lcom/meizu/widget/RecipientEdit;->mOnRecipientChangedListener:Lcom/meizu/widget/RecipientEdit$OnRecipientChangedListener;

    invoke-interface {v7}, Lcom/meizu/widget/RecipientEdit$OnRecipientChangedListener;->OnRecipientChanged()V

    .line 1800
    .end local v1           #index:I
    .end local v3           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5           #refreshSipState:Z
    :cond_9
    return-void
.end method

.method public removeRecipient(Ljava/lang/CharSequence;)Z
    .locals 3
    .parameter "number"

    .prologue
    .line 1687
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/meizu/widget/RecipientEdit;->removeSpecialCharacter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1688
    .local v0, dstNumber:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1689
    const/4 v2, 0x0

    .line 1693
    :goto_0
    return v2

    .line 1692
    :cond_0
    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientDataList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 1693
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
    .line 1008
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v0, p1, p2}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public setAccount(Landroid/accounts/Account;)V
    .locals 1
    .parameter "account"

    .prologue
    .line 2366
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v0}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;

    invoke-virtual {v0, p1}, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->setAccount(Landroid/accounts/Account;)V

    .line 2367
    return-void
.end method

.method public setButtonClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 2098
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit;->mAddContactsBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2099
    return-void
.end method

.method public setButtonVisibility(Z)V
    .locals 2
    .parameter "visibility"

    .prologue
    .line 2102
    iput-boolean p1, p0, Lcom/meizu/widget/RecipientEdit;->mBtnVisibility:Z

    .line 2104
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mAddContactsBtn:Landroid/widget/ImageButton;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 2105
    return-void

    .line 2104
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setDragWatcher(Lcom/meizu/widget/RecipientEdit$RecipientDragWatcher;)V
    .locals 0
    .parameter "dragWatcher"

    .prologue
    .line 2071
    iput-object p1, p0, Lcom/meizu/widget/RecipientEdit;->mDragWatcher:Lcom/meizu/widget/RecipientEdit$RecipientDragWatcher;

    .line 2072
    return-void
.end method

.method public setEnabledDrag(Z)V
    .locals 0
    .parameter "enabledDrag"

    .prologue
    .line 2067
    iput-boolean p1, p0, Lcom/meizu/widget/RecipientEdit;->mEnabledDrag:Z

    .line 2068
    return-void
.end method

.method public setFocusable(Z)V
    .locals 1
    .parameter "focusable"

    .prologue
    .line 1013
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v0, p1}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->setFocusable(Z)V

    .line 1014
    return-void
.end method

.method public setFocusableInTouchMode(Z)V
    .locals 1
    .parameter "focusableInTouchMode"

    .prologue
    .line 1018
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v0, p1}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->setFocusableInTouchMode(Z)V

    .line 1019
    return-void
.end method

.method public setHint(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "hint"

    .prologue
    .line 2080
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit;->mHintView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2081
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit;->mHintView2:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2082
    return-void
.end method

.method public setImeOptions(I)V
    .locals 3
    .parameter "imeOptions"

    .prologue
    .line 2147
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v1}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->getImeOptions()I

    move-result v1

    and-int/lit16 v0, v1, 0xff

    .line 2148
    .local v0, oldImeOptions:I
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    or-int v2, p1, v0

    invoke-virtual {v1, v2}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->setImeOptions(I)V

    .line 2149
    return-void
.end method

.method public setInputType(I)V
    .locals 2
    .parameter "inputType"

    .prologue
    const/4 v1, 0x2

    .line 2116
    iget v0, p0, Lcom/meizu/widget/RecipientEdit;->mInputType:I

    if-eq v0, p1, :cond_0

    .line 2117
    if-ne p1, v1, :cond_1

    .line 2118
    const v0, 0x108064d

    invoke-virtual {p0, v0}, Lcom/meizu/widget/RecipientEdit;->setBackgroundResource(I)V

    .line 2124
    :cond_0
    :goto_0
    iput p1, p0, Lcom/meizu/widget/RecipientEdit;->mInputType:I

    .line 2126
    iget v0, p0, Lcom/meizu/widget/RecipientEdit;->mInputType:I

    if-ne v0, v1, :cond_2

    .line 2127
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->setInputType(I)V

    .line 2133
    :goto_1
    return-void

    .line 2120
    :cond_1
    const v0, 0x108064e

    invoke-virtual {p0, v0}, Lcom/meizu/widget/RecipientEdit;->setBackgroundResource(I)V

    goto :goto_0

    .line 2130
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
    .line 2085
    iput p1, p0, Lcom/meizu/widget/RecipientEdit;->mMaxHeight:I

    .line 2086
    return-void
.end method

.method public setOnDragListener(Landroid/view/View$OnDragListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 2076
    iput-object p1, p0, Lcom/meizu/widget/RecipientEdit;->mOnDragListener:Landroid/view/View$OnDragListener;

    .line 2077
    return-void
.end method

.method public setOnDropDownListener(Lcom/meizu/widget/RecipientEdit$OnDropDownListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 2351
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v0, p0, p1}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->setOnPopupListener(Landroid/view/View;Lcom/meizu/widget/RecipientEdit$OnDropDownListener;)V

    .line 2352
    return-void
.end method

.method public setOnEmailAddWhenGroupListener(Lcom/meizu/widget/RecipientEdit$OnEmailAddWhenGroupListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 2344
    iput-object p1, p0, Lcom/meizu/widget/RecipientEdit;->mOnEmailAddWhenGroupListener:Lcom/meizu/widget/RecipientEdit$OnEmailAddWhenGroupListener;

    .line 2345
    return-void
.end method

.method public setOnKeyPreImeListener(Landroid/widget/EditText$OnKeyPreImeListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 2316
    iput-object p1, p0, Lcom/meizu/widget/RecipientEdit;->mOnKeyPreImeListener:Landroid/widget/EditText$OnKeyPreImeListener;

    .line 2317
    return-void
.end method

.method public setOnRecipientChangedListener(Lcom/meizu/widget/RecipientEdit$OnRecipientChangedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 2330
    iput-object p1, p0, Lcom/meizu/widget/RecipientEdit;->mOnRecipientChangedListener:Lcom/meizu/widget/RecipientEdit$OnRecipientChangedListener;

    .line 2331
    return-void
.end method

.method public setOnRecipientFirstAddListener(Lcom/meizu/widget/RecipientEdit$OnRecipientFirstAddListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 2337
    iput-object p1, p0, Lcom/meizu/widget/RecipientEdit;->mOnRecipientFirstAddListener:Lcom/meizu/widget/RecipientEdit$OnRecipientFirstAddListener;

    .line 2338
    return-void
.end method

.method public setOnSipCheckerBehaviorListener(Lcom/meizu/widget/RecipientStateInfo$OnSipCheckerBehaviorListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 2312
    iput-object p1, p0, Lcom/meizu/widget/RecipientEdit;->mOnSipCheckerBehaviorListener:Lcom/meizu/widget/RecipientStateInfo$OnSipCheckerBehaviorListener;

    .line 2313
    return-void
.end method

.method public setOnSipStateChangedListener(Lcom/meizu/widget/RecipientStateInfo$OnSipStateChangedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 2305
    iput-object p1, p0, Lcom/meizu/widget/RecipientEdit;->mOnSipStateChangedListener:Lcom/meizu/widget/RecipientStateInfo$OnSipStateChangedListener;

    .line 2306
    return-void
.end method

.method public setOnTextChangedListener(Lcom/meizu/widget/RecipientEdit$OnTextChangedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 2323
    iput-object p1, p0, Lcom/meizu/widget/RecipientEdit;->mOnTextChangedListener:Lcom/meizu/widget/RecipientEdit$OnTextChangedListener;

    .line 2324
    return-void
.end method

.method public setSipDestChecker(Lcom/meizu/widget/RecipientStateInfo$SipDestChecker;)V
    .locals 4
    .parameter "checker"

    .prologue
    const/4 v3, 0x1

    .line 2288
    invoke-virtual {p0, v3}, Lcom/meizu/widget/RecipientEdit;->checkSipDestAddress(Z)V

    .line 2289
    iput-object p1, p0, Lcom/meizu/widget/RecipientEdit;->mSipDestChecker:Lcom/meizu/widget/RecipientStateInfo$SipDestChecker;

    .line 2291
    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit;->mSipDestChecker:Lcom/meizu/widget/RecipientStateInfo$SipDestChecker;

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit;->mCheckingRecipient:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2292
    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientHandler:Lcom/meizu/widget/RecipientEdit$RecipientHandler;

    invoke-virtual {v2, v3}, Lcom/meizu/widget/RecipientEdit$RecipientHandler;->removeMessages(I)V

    .line 2293
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

    .line 2294
    .local v1, num:Ljava/lang/String;
    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientState:Ljava/util/HashMap;

    sget-object v3, Lcom/meizu/widget/RecipientStateInfo$SipState;->SIP_UNCHECK:Lcom/meizu/widget/RecipientStateInfo$SipState;

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2296
    .end local v1           #num:Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit;->mCheckingRecipient:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 2297
    invoke-direct {p0}, Lcom/meizu/widget/RecipientEdit;->endCheck()V

    .line 2299
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
    .line 2235
    invoke-direct {p0, p1}, Lcom/meizu/widget/RecipientEdit;->removeSpecialCharacter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2236
    .local v0, dstNum:Ljava/lang/String;
    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit;->mCheckingRecipient:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2237
    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    invoke-virtual {v2}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/meizu/widget/RecipientEdit;->removeSpecialCharacter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2238
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

    .line 2253
    :cond_0
    :goto_0
    return-void

    .line 2243
    :cond_1
    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientState:Ljava/util/HashMap;

    invoke-virtual {v2, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2244
    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit;->mSipVersion:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2245
    sget-object v2, Lcom/meizu/widget/RecipientStateInfo$SipState;->SIP_NO:Lcom/meizu/widget/RecipientStateInfo$SipState;

    if-ne p2, v2, :cond_2

    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientNotSip:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2246
    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit;->mRecipientNotSip:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2249
    :cond_2
    invoke-direct {p0}, Lcom/meizu/widget/RecipientEdit;->endCheck()V

    .line 2250
    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit;->mOnSipStateChangedListener:Lcom/meizu/widget/RecipientStateInfo$OnSipStateChangedListener;

    if-eqz v2, :cond_0

    .line 2251
    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit;->mOnSipStateChangedListener:Lcom/meizu/widget/RecipientStateInfo$OnSipStateChangedListener;

    invoke-virtual {p0}, Lcom/meizu/widget/RecipientEdit;->getSipState()Lcom/meizu/widget/RecipientStateInfo$SipState;

    move-result-object v3

    invoke-interface {v2, p0, v3}, Lcom/meizu/widget/RecipientStateInfo$OnSipStateChangedListener;->onSipStateChanged(Landroid/view/View;Lcom/meizu/widget/RecipientStateInfo$SipState;)V

    goto :goto_0
.end method
