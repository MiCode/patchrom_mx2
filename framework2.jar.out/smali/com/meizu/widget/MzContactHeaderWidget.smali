.class public Lcom/meizu/widget/MzContactHeaderWidget;
.super Landroid/widget/FrameLayout;
.source "MzContactHeaderWidget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/widget/MzContactHeaderWidget$ContactInfo;,
        Lcom/meizu/widget/MzContactHeaderWidget$MyHandler;,
        Lcom/meizu/widget/MzContactHeaderWidget$QueryHandler;,
        Lcom/meizu/widget/MzContactHeaderWidget$EmailLookupQuery;,
        Lcom/meizu/widget/MzContactHeaderWidget$PhoneLookupQuery;,
        Lcom/meizu/widget/MzContactHeaderWidget$ContactQuery;
    }
.end annotation


# static fields
.field public static final INVALID_CONTACT_ID:J = -0x1L

.field private static final MSG_PROG:I = 0x1

.field private static final MSG_STATE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "MzContactHeaderWidget"

.field private static final TOKEN_CONTACT_INFO:I = 0x0

.field private static final TOKEN_DISPLAYNAME_QUERY:I = 0x3

.field private static final TOKEN_EMAIL_LOOKUP:I = 0x2

.field private static final TOKEN_PHONE_LOOKUP:I = 0x1


# instance fields
.field private mAnchorView:Landroid/view/View;

.field private mCheckedNumber:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mClickToCall:Z

.field protected mContactUri:Landroid/net/Uri;

.field protected mContactsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/widget/MzContactHeaderWidget$ContactInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected mContentResolver:Landroid/content/ContentResolver;

.field private mCountView:Landroid/widget/TextView;

.field private mDefaultState:Lcom/meizu/widget/RecipientStateInfo$SipState;

.field private mDefaultVersion:I

.field private mDisablePhotoClick:Z

.field private mDisplayNameView:Landroid/widget/TextView;

.field private mEmailQuery:Z

.field private mFlymeOn:Z

.field private mFlymeView:Lcom/meizu/widget/FlymeButton;

.field private mHandler:Lcom/meizu/widget/MzContactHeaderWidget$MyHandler;

.field protected mOldRecipientState:Ljava/util/HashMap;
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

.field private mOldSipVersion:I

.field private mOnSipStateChangedListener:Lcom/meizu/widget/RecipientStateInfo$OnSipStateChangedListener;

.field private mOriginalList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/widget/MzContactHeaderWidget$ContactInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected mPhoneNumber:Ljava/lang/String;

.field private mPhoneOrEmailView:Landroid/widget/TextView;

.field private mPhoneOrEmailView1:Landroid/widget/TextView;

.field private mPhoneOrEmailView2:Landroid/widget/TextView;

.field private mPhotoBmp:Landroid/graphics/Bitmap;

.field private mPhotoView:Lcom/meizu/widget/RoundCornerContactBadge;

.field private mQueryHandler:Lcom/meizu/widget/MzContactHeaderWidget$QueryHandler;

.field protected mRecipientState:Ljava/util/HashMap;
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

.field private mShowDetail:Z

.field private mSipDestChecker:Lcom/meizu/widget/RecipientStateInfo$SipDestChecker;

.field private mSipVersion:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 152
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/meizu/widget/MzContactHeaderWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 153
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 156
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/widget/MzContactHeaderWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 157
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const v2, 0x7fffffff

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 160
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 64
    iput-boolean v0, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mShowDetail:Z

    .line 65
    iput-boolean v0, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mEmailQuery:Z

    .line 66
    iput-boolean v0, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mClickToCall:Z

    .line 67
    iput-boolean v0, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mDisablePhotoClick:Z

    .line 86
    iput-boolean v1, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mFlymeOn:Z

    .line 162
    iget-object v0, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mContentResolver:Landroid/content/ContentResolver;

    .line 164
    const v0, 0x109008b

    invoke-static {p1, v0, p0}, Lcom/meizu/widget/MzContactHeaderWidget;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 166
    const v0, 0x1020369

    invoke-virtual {p0, v0}, Lcom/meizu/widget/MzContactHeaderWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mDisplayNameView:Landroid/widget/TextView;

    .line 167
    const v0, 0x102036a

    invoke-virtual {p0, v0}, Lcom/meizu/widget/MzContactHeaderWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mPhoneOrEmailView1:Landroid/widget/TextView;

    .line 168
    const v0, 0x102036b

    invoke-virtual {p0, v0}, Lcom/meizu/widget/MzContactHeaderWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mPhoneOrEmailView2:Landroid/widget/TextView;

    .line 169
    const v0, 0x1020368

    invoke-virtual {p0, v0}, Lcom/meizu/widget/MzContactHeaderWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/widget/RoundCornerContactBadge;

    iput-object v0, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mPhotoView:Lcom/meizu/widget/RoundCornerContactBadge;

    .line 170
    const v0, 0x102036c

    invoke-virtual {p0, v0}, Lcom/meizu/widget/MzContactHeaderWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mCountView:Landroid/widget/TextView;

    .line 171
    const v0, 0x102036e

    invoke-virtual {p0, v0}, Lcom/meizu/widget/MzContactHeaderWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/widget/FlymeButton;

    iput-object v0, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mFlymeView:Lcom/meizu/widget/FlymeButton;

    .line 172
    const v0, 0x102036d

    invoke-virtual {p0, v0}, Lcom/meizu/widget/MzContactHeaderWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mAnchorView:Landroid/view/View;

    .line 174
    iget-object v0, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mPhoneOrEmailView2:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mPhoneOrEmailView:Landroid/widget/TextView;

    .line 175
    iget-object v0, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mDisplayNameView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsisSmall(Z)V

    .line 177
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mOriginalList:Ljava/util/ArrayList;

    .line 178
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mContactsList:Ljava/util/ArrayList;

    .line 179
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mRecipientState:Ljava/util/HashMap;

    .line 180
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mOldRecipientState:Ljava/util/HashMap;

    .line 181
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mCheckedNumber:Ljava/util/ArrayList;

    .line 182
    new-instance v0, Lcom/meizu/widget/MzContactHeaderWidget$MyHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/meizu/widget/MzContactHeaderWidget$MyHandler;-><init>(Lcom/meizu/widget/MzContactHeaderWidget;Lcom/meizu/widget/MzContactHeaderWidget$1;)V

    iput-object v0, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mHandler:Lcom/meizu/widget/MzContactHeaderWidget$MyHandler;

    .line 183
    invoke-direct {p0}, Lcom/meizu/widget/MzContactHeaderWidget;->resetAsyncQueryHandler()V

    .line 185
    iget-object v0, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mFlymeView:Lcom/meizu/widget/FlymeButton;

    new-instance v1, Lcom/meizu/widget/MzContactHeaderWidget$1;

    invoke-direct {v1, p0}, Lcom/meizu/widget/MzContactHeaderWidget$1;-><init>(Lcom/meizu/widget/MzContactHeaderWidget;)V

    invoke-virtual {v0, v1}, Lcom/meizu/widget/FlymeButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    iput v2, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mSipVersion:I

    .line 199
    iput v2, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mOldSipVersion:I

    .line 201
    invoke-virtual {p0}, Lcom/meizu/widget/MzContactHeaderWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/meizu/widget/MzContactHeaderWidget;->onOrientationChanged(Landroid/content/res/Configuration;)V

    .line 202
    return-void
.end method

.method static synthetic access$100(Lcom/meizu/widget/MzContactHeaderWidget;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mFlymeOn:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/meizu/widget/MzContactHeaderWidget;)Lcom/meizu/widget/RecipientStateInfo$SipDestChecker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mSipDestChecker:Lcom/meizu/widget/RecipientStateInfo$SipDestChecker;

    return-object v0
.end method

.method static synthetic access$102(Lcom/meizu/widget/MzContactHeaderWidget;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mFlymeOn:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/meizu/widget/MzContactHeaderWidget;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mCheckedNumber:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/meizu/widget/MzContactHeaderWidget;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget v0, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mSipVersion:I

    return v0
.end method

.method static synthetic access$1202(Lcom/meizu/widget/MzContactHeaderWidget;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput p1, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mSipVersion:I

    return p1
.end method

.method static synthetic access$200(Lcom/meizu/widget/MzContactHeaderWidget;)Lcom/meizu/widget/FlymeButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mFlymeView:Lcom/meizu/widget/FlymeButton;

    return-object v0
.end method

.method static synthetic access$300(Lcom/meizu/widget/MzContactHeaderWidget;)Lcom/meizu/widget/RecipientStateInfo$OnSipStateChangedListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mOnSipStateChangedListener:Lcom/meizu/widget/RecipientStateInfo$OnSipStateChangedListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/meizu/widget/MzContactHeaderWidget;)Lcom/meizu/widget/MzContactHeaderWidget$QueryHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mQueryHandler:Lcom/meizu/widget/MzContactHeaderWidget$QueryHandler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/meizu/widget/MzContactHeaderWidget;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mEmailQuery:Z

    return v0
.end method

.method static synthetic access$502(Lcom/meizu/widget/MzContactHeaderWidget;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mEmailQuery:Z

    return p1
.end method

.method static synthetic access$600(Lcom/meizu/widget/MzContactHeaderWidget;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mDisplayNameView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/meizu/widget/MzContactHeaderWidget;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mCountView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/meizu/widget/MzContactHeaderWidget;)Lcom/meizu/widget/RoundCornerContactBadge;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mPhotoView:Lcom/meizu/widget/RoundCornerContactBadge;

    return-object v0
.end method

.method static synthetic access$900(Lcom/meizu/widget/MzContactHeaderWidget;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mClickToCall:Z

    return v0
.end method

.method private bindFromContactUriInternal(Landroid/net/Uri;Z)V
    .locals 11
    .parameter "contactUri"
    .parameter "resetQueryHandler"

    .prologue
    const/4 v9, 0x1

    const/4 v3, 0x0

    .line 632
    iput-object p1, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mContactUri:Landroid/net/Uri;

    .line 635
    iget-object v0, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/meizu/widget/MzContactHeaderWidget$ContactQuery;->COLUMNS:[Ljava/lang/String;

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 637
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 638
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 639
    .local v3, contactId:J
    const/4 v0, 0x2

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 640
    .local v5, displayName:Ljava/lang/String;
    const/4 v0, 0x4

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 641
    .local v6, orgTag:Ljava/lang/String;
    const/4 v0, 0x5

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 642
    .local v7, photoUri:Ljava/lang/String;
    const/4 v0, 0x3

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mPhoneNumber:Ljava/lang/String;

    .line 643
    iget-object v0, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mPhoneNumber:Ljava/lang/String;

    invoke-virtual {p0, v5, v0}, Lcom/meizu/widget/MzContactHeaderWidget;->bindContactInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v4, v0}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .local v1, lookupUri:Landroid/net/Uri;
    move-object v0, p0

    move v2, v9

    .line 647
    invoke-virtual/range {v0 .. v7}, Lcom/meizu/widget/MzContactHeaderWidget;->bindPhotoInfo(Landroid/net/Uri;ZJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    iget-object v0, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mContactsList:Ljava/util/ArrayList;

    new-instance v2, Lcom/meizu/widget/MzContactHeaderWidget$ContactInfo;

    iget-object v9, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mDisplayNameView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mPhoneNumber:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v9, v10}, Lcom/meizu/widget/MzContactHeaderWidget$ContactInfo;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 656
    .end local v1           #lookupUri:Landroid/net/Uri;
    .end local v3           #contactId:J
    .end local v5           #displayName:Ljava/lang/String;
    .end local v6           #orgTag:Ljava/lang/String;
    .end local v7           #photoUri:Ljava/lang/String;
    :goto_0
    if-eqz v8, :cond_0

    .line 657
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 658
    const/4 v8, 0x0

    .line 660
    :cond_0
    return-void

    .line 652
    :cond_1
    invoke-virtual {p0, v3}, Lcom/meizu/widget/MzContactHeaderWidget;->setDisplayName(Ljava/lang/CharSequence;)V

    .line 653
    invoke-virtual {p0, v3}, Lcom/meizu/widget/MzContactHeaderWidget;->setPhoto(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private bindFromEmailInternal(Ljava/lang/String;J)V
    .locals 11
    .parameter "emailAddress"
    .parameter "contactId"

    .prologue
    .line 696
    iget-object v0, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/meizu/widget/MzContactHeaderWidget$EmailLookupQuery;->COLUMNS:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 700
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_6

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 701
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 702
    .local v10, lookupKey:Ljava/lang/String;
    const/4 v0, 0x2

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 703
    .local v5, displayName:Ljava/lang/String;
    const/4 v0, 0x4

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 704
    .local v6, orgTag:Ljava/lang/String;
    const/4 v0, 0x5

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 706
    .local v7, photoUri:Ljava/lang/String;
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    cmp-long v0, p2, v0

    if-eqz v0, :cond_2

    .line 707
    const/4 v9, 0x0

    .line 708
    .local v9, hasId:Z
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 709
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    .line 710
    const/4 v9, 0x1

    .line 711
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 712
    const/4 v0, 0x2

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 713
    const/4 v0, 0x4

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 714
    const/4 v0, 0x5

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 719
    :cond_1
    if-nez v9, :cond_2

    .line 720
    const-wide/16 p2, 0x0

    .line 724
    .end local v9           #hasId:Z
    :cond_2
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gtz v0, :cond_4

    .line 725
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 726
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p2

    .line 728
    const/4 v0, 0x3

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_4

    .line 730
    :cond_3
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 731
    const/4 v0, 0x3

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 732
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p2

    .line 733
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 734
    const/4 v0, 0x2

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 735
    const/4 v0, 0x4

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 736
    const/4 v0, 0x5

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 744
    :cond_4
    invoke-virtual {p0, v5, p1}, Lcom/meizu/widget/MzContactHeaderWidget;->bindContactInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 745
    invoke-static {p2, p3, v10}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mContactUri:Landroid/net/Uri;

    .line 746
    iget-object v1, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mContactUri:Landroid/net/Uri;

    const/4 v2, 0x1

    move-object v0, p0

    move-wide v3, p2

    invoke-virtual/range {v0 .. v7}, Lcom/meizu/widget/MzContactHeaderWidget;->bindPhotoInfo(Landroid/net/Uri;ZJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 747
    iget-object v0, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mContactsList:Ljava/util/ArrayList;

    new-instance v1, Lcom/meizu/widget/MzContactHeaderWidget$ContactInfo;

    iget-object v2, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mDisplayNameView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p2, p3, v2, p1}, Lcom/meizu/widget/MzContactHeaderWidget$ContactInfo;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 756
    .end local v5           #displayName:Ljava/lang/String;
    .end local v6           #orgTag:Ljava/lang/String;
    .end local v7           #photoUri:Ljava/lang/String;
    .end local v10           #lookupKey:Ljava/lang/String;
    :goto_0
    if-eqz v8, :cond_5

    .line 757
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 758
    const/4 v8, 0x0

    .line 760
    :cond_5
    return-void

    .line 749
    :cond_6
    invoke-virtual {p0, p1}, Lcom/meizu/widget/MzContactHeaderWidget;->setDisplayName(Ljava/lang/CharSequence;)V

    .line 750
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/meizu/widget/MzContactHeaderWidget;->setPhoto(Landroid/graphics/Bitmap;)V

    .line 751
    iget-object v0, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mPhotoView:Lcom/meizu/widget/RoundCornerContactBadge;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/meizu/widget/RoundCornerContactBadge;->assignContactFromEmail(Ljava/lang/String;Z)V

    .line 752
    iget-object v0, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mPhotoView:Lcom/meizu/widget/RoundCornerContactBadge;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/meizu/widget/RoundCornerContactBadge;->setClickToCall(Z)V

    .line 753
    iget-object v0, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mContactsList:Ljava/util/ArrayList;

    new-instance v1, Lcom/meizu/widget/MzContactHeaderWidget$ContactInfo;

    const-wide/16 v2, -0x1

    invoke-direct {v1, v2, v3, p1, p1}, Lcom/meizu/widget/MzContactHeaderWidget$ContactInfo;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private bindFromListInternal(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter "number"
    .parameter "contactName"

    .prologue
    const/4 v1, 0x3

    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 898
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 919
    :goto_0
    return-void

    .line 902
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 903
    iput-boolean v7, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mEmailQuery:Z

    .line 904
    iget-object v0, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mQueryHandler:Lcom/meizu/widget/MzContactHeaderWidget$QueryHandler;

    sget-object v2, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v2

    const-string v2, "display_name"

    aput-object v2, v4, v7

    const/4 v2, 0x2

    const-string v6, "number"

    aput-object v6, v4, v2

    move-object v2, p1

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Lcom/meizu/widget/MzContactHeaderWidget$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 909
    :cond_1
    iget-object v0, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mContactsList:Ljava/util/ArrayList;

    new-instance v1, Lcom/meizu/widget/MzContactHeaderWidget$ContactInfo;

    const-wide/16 v2, -0x1

    invoke-direct {v1, v2, v3, p2, p1}, Lcom/meizu/widget/MzContactHeaderWidget$ContactInfo;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 911
    iget-object v0, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mDisplayNameView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 912
    iget-object v0, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mDisplayNameView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 913
    .local v8, names:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 914
    iget-object v0, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mDisplayNameView:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 916
    .end local v8           #names:Ljava/lang/String;
    :cond_2
    iget-object v0, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mDisplayNameView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private bindFromPhoneNumberInternal(Ljava/lang/String;J)V
    .locals 12
    .parameter "number"
    .parameter "contactId"

    .prologue
    .line 796
    iget-object v0, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/meizu/widget/MzContactHeaderWidget$PhoneLookupQuery;->COLUMNS:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 800
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_6

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 801
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 802
    .local v10, lookupKey:Ljava/lang/String;
    const/4 v0, 0x2

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 803
    .local v5, displayName:Ljava/lang/String;
    const/4 v0, 0x4

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 804
    .local v6, orgTag:Ljava/lang/String;
    const/4 v0, 0x5

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 806
    .local v7, photoUri:Ljava/lang/String;
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    cmp-long v0, p2, v0

    if-eqz v0, :cond_2

    .line 807
    const/4 v9, 0x0

    .line 808
    .local v9, hasId:Z
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 809
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    .line 810
    const/4 v9, 0x1

    .line 811
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 812
    const/4 v0, 0x2

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 813
    const/4 v0, 0x4

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 814
    const/4 v0, 0x5

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 819
    :cond_1
    if-nez v9, :cond_2

    .line 820
    const-wide/16 p2, 0x0

    .line 824
    .end local v9           #hasId:Z
    :cond_2
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gtz v0, :cond_4

    .line 825
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 826
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p2

    .line 828
    iget-object v0, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mPhoneNumber:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_4

    .line 830
    :cond_3
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 831
    iget-object v0, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mPhoneNumber:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 832
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p2

    .line 833
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 834
    const/4 v0, 0x2

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 835
    const/4 v0, 0x4

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 836
    const/4 v0, 0x5

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 843
    :cond_4
    iget-object v0, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mPhoneNumber:Ljava/lang/String;

    invoke-virtual {p0, v5, v0}, Lcom/meizu/widget/MzContactHeaderWidget;->bindContactInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 844
    invoke-static {p2, p3, v10}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mContactUri:Landroid/net/Uri;

    .line 845
    iget-object v1, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mContactUri:Landroid/net/Uri;

    const/4 v2, 0x1

    move-object v0, p0

    move-wide v3, p2

    invoke-virtual/range {v0 .. v7}, Lcom/meizu/widget/MzContactHeaderWidget;->bindPhotoInfo(Landroid/net/Uri;ZJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 846
    iget-object v0, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mContactsList:Ljava/util/ArrayList;

    new-instance v1, Lcom/meizu/widget/MzContactHeaderWidget$ContactInfo;

    iget-object v2, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mDisplayNameView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mPhoneNumber:Ljava/lang/String;

    invoke-direct {v1, p2, p3, v2, v3}, Lcom/meizu/widget/MzContactHeaderWidget$ContactInfo;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 859
    .end local v5           #displayName:Ljava/lang/String;
    .end local v6           #orgTag:Ljava/lang/String;
    .end local v7           #photoUri:Ljava/lang/String;
    .end local v10           #lookupKey:Ljava/lang/String;
    :goto_0
    if-eqz v8, :cond_5

    .line 860
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 861
    const/4 v8, 0x0

    .line 863
    :cond_5
    return-void

    .line 848
    :cond_6
    iget-object v0, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mPhoneNumber:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/meizu/widget/MzContactHeaderWidget;->setDisplayName(Ljava/lang/CharSequence;)V

    .line 849
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/meizu/widget/MzContactHeaderWidget;->setPhoto(Landroid/graphics/Bitmap;)V

    .line 850
    iget-object v0, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mPhotoView:Lcom/meizu/widget/RoundCornerContactBadge;

    iget-object v1, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mPhoneNumber:Ljava/lang/String;

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/meizu/widget/RoundCornerContactBadge;->assignContactFromPhone(Ljava/lang/String;ZJ)V

    .line 851
    iget-boolean v0, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mClickToCall:Z

    if-eqz v0, :cond_7

    .line 852
    iget-object v0, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mPhotoView:Lcom/meizu/widget/RoundCornerContactBadge;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/meizu/widget/RoundCornerContactBadge;->setClickToCall(Z)V

    .line 856
    :goto_1
    iget-object v0, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mContactsList:Ljava/util/ArrayList;

    new-instance v1, Lcom/meizu/widget/MzContactHeaderWidget$ContactInfo;

    const-wide/16 v2, -0x1

    iget-object v4, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mPhoneNumber:Ljava/lang/String;

    iget-object v11, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mPhoneNumber:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4, v11}, Lcom/meizu/widget/MzContactHeaderWidget$ContactInfo;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 854
    :cond_7
    iget-object v0, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mPhotoView:Lcom/meizu/widget/RoundCornerContactBadge;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/meizu/widget/RoundCornerContactBadge;->setClickToCall(Z)V

    goto :goto_1
.end method

.method private clearSipInfo()V
    .locals 3

    .prologue
    const v2, 0x7fffffff

    .line 1028
    iget-object v0, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mHandler:Lcom/meizu/widget/MzContactHeaderWidget$MyHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/meizu/widget/MzContactHeaderWidget$MyHandler;->removeMessages(I)V

    .line 1029
    iget-object v0, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mFlymeView:Lcom/meizu/widget/FlymeButton;

    invoke-virtual {v0}, Lcom/meizu/widget/FlymeButton;->dismissProgressBar()V

    .line 1030
    iget-object v0, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mFlymeView:Lcom/meizu/widget/FlymeButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/meizu/widget/FlymeButton;->setVisibility(I)V

    .line 1032
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mDefaultState:Lcom/meizu/widget/RecipientStateInfo$SipState;

    .line 1033
    iget-object v0, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mRecipientState:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1034
    iget-object v0, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mOldRecipientState:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1035
    iget-object v0, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mCheckedNumber:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1036
    const/4 v0, 0x0

    iput v0, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mDefaultVersion:I

    .line 1037
    iput v2, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mSipVersion:I

    .line 1038
    iput v2, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mOldSipVersion:I

    .line 1039
    return-void
.end method

.method private onOrientationChanged(Landroid/content/res/Configuration;)V
    .locals 6
    .parameter "config"

    .prologue
    const/16 v5, 0x8

    .line 213
    iget-object v3, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mPhoneOrEmailView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    .line 214
    .local v2, text:Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mPhoneOrEmailView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    .line 215
    .local v0, Visibility:I
    const/4 v1, 0x0

    .line 217
    .local v1, borderType:Lcom/meizu/widget/RoundCornerContactBadge$BorderType;
    iget v3, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 218
    iget-object v3, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mPhoneOrEmailView1:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 219
    iget-object v3, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mPhoneOrEmailView1:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 221
    iget-object v3, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mPhoneOrEmailView2:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 222
    iget-object v3, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mPhoneOrEmailView2:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 223
    iget-object v3, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mPhoneOrEmailView2:Landroid/widget/TextView;

    iput-object v3, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mPhoneOrEmailView:Landroid/widget/TextView;

    .line 225
    sget-object v1, Lcom/meizu/widget/RoundCornerContactBadge$BorderType;->BORDER_SMS_CONTACT:Lcom/meizu/widget/RoundCornerContactBadge$BorderType;

    .line 240
    :goto_0
    iget-object v3, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mPhotoView:Lcom/meizu/widget/RoundCornerContactBadge;

    invoke-virtual {v3}, Lcom/meizu/widget/RoundCornerContactBadge;->getBorderType()Lcom/meizu/widget/RoundCornerContactBadge$BorderType;

    move-result-object v3

    if-eq v3, v1, :cond_0

    .line 241
    iget-object v3, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mPhotoView:Lcom/meizu/widget/RoundCornerContactBadge;

    invoke-virtual {v3, v1}, Lcom/meizu/widget/RoundCornerContactBadge;->setBorderType(Lcom/meizu/widget/RoundCornerContactBadge$BorderType;)V

    .line 242
    iget-object v3, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mPhotoBmp:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_2

    .line 243
    iget-object v3, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mPhotoView:Lcom/meizu/widget/RoundCornerContactBadge;

    iget-object v4, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mPhotoBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Lcom/meizu/widget/RoundCornerContactBadge;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 248
    :cond_0
    :goto_1
    return-void

    .line 227
    :cond_1
    iget-object v3, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mPhoneOrEmailView2:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    iget-object v3, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mPhoneOrEmailView2:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 230
    iget-object v3, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mPhoneOrEmailView1:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 231
    iget-object v3, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mPhoneOrEmailView1:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 232
    iget-object v3, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mPhoneOrEmailView1:Landroid/widget/TextView;

    iput-object v3, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mPhoneOrEmailView:Landroid/widget/TextView;

    .line 234
    sget-object v1, Lcom/meizu/widget/RoundCornerContactBadge$BorderType;->BORDER_SMALL_CONTACT:Lcom/meizu/widget/RoundCornerContactBadge$BorderType;

    goto :goto_0

    .line 245
    :cond_2
    iget-object v3, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mContactUri:Landroid/net/Uri;

    invoke-virtual {p0, v3}, Lcom/meizu/widget/MzContactHeaderWidget;->loadPhoto(Landroid/net/Uri;)V

    goto :goto_1
.end method

.method private resetAsyncQueryHandler()V
    .locals 2

    .prologue
    .line 941
    new-instance v0, Lcom/meizu/widget/MzContactHeaderWidget$QueryHandler;

    iget-object v1, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mContentResolver:Landroid/content/ContentResolver;

    invoke-direct {v0, p0, v1}, Lcom/meizu/widget/MzContactHeaderWidget$QueryHandler;-><init>(Lcom/meizu/widget/MzContactHeaderWidget;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mQueryHandler:Lcom/meizu/widget/MzContactHeaderWidget$QueryHandler;

    .line 942
    return-void
.end method

.method private startContactQuery(Landroid/net/Uri;Z)V
    .locals 8
    .parameter "contactUri"
    .parameter "resetQueryHandler"

    .prologue
    const/4 v5, 0x0

    .line 930
    if-eqz p2, :cond_0

    .line 931
    invoke-direct {p0}, Lcom/meizu/widget/MzContactHeaderWidget;->resetAsyncQueryHandler()V

    .line 934
    :cond_0
    iget-object v0, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mQueryHandler:Lcom/meizu/widget/MzContactHeaderWidget$QueryHandler;

    const/4 v1, 0x0

    sget-object v4, Lcom/meizu/widget/MzContactHeaderWidget$ContactQuery;->COLUMNS:[Ljava/lang/String;

    move-object v2, p1

    move-object v3, p1

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Lcom/meizu/widget/MzContactHeaderWidget$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 936
    return-void
.end method


# virtual methods
.method protected bindContactInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "displayName"
    .parameter "phoneOrEmail"

    .prologue
    const/16 v2, 0x8

    .line 948
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 949
    iget-object v0, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mDisplayNameView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 950
    iget-object v0, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mPhoneOrEmailView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 951
    iget-object v0, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mPhoneOrEmailView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 961
    :goto_0
    return-void

    .line 953
    :cond_0
    iget-object v0, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mDisplayNameView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 954
    iget-object v0, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mPhoneOrEmailView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 955
    iget-boolean v0, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mShowDetail:Z

    if-eqz v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 956
    iget-object v0, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mPhoneOrEmailView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 958
    :cond_1
    iget-object v0, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mPhoneOrEmailView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public bindFromContactLookupUri(Landroid/net/Uri;)V
    .locals 3
    .parameter "contactLookupUri"

    .prologue
    const/4 v0, 0x0

    const/16 v2, 0x8

    .line 612
    iput-object v0, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mPhoneNumber:Ljava/lang/String;

    .line 613
    iput-object v0, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mPhotoBmp:Landroid/graphics/Bitmap;

    .line 614
    iget-object v0, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mAnchorView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 615
    iget-object v0, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mCountView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 616
    iget-object v0, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mCountView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 617
    iget-object v0, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mPhoneOrEmailView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 618
    iget-object v0, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mPhoneOrEmailView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 619
    iget-object v0, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mContactsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 620
    iget-object v0, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mOriginalList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 621
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/meizu/widget/MzContactHeaderWidget;->bindFromContactUriInternal(Landroid/net/Uri;Z)V

    .line 622
    return-void
.end method

.method public bindFromContactsList(Ljava/util/List;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/widget/MzContactHeaderWidget$ContactInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/meizu/widget/MzContactHeaderWidget$ContactInfo;>;"
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 870
    iput-object v4, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mPhoneNumber:Ljava/lang/String;

    .line 871
    iput-object v4, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mContactUri:Landroid/net/Uri;

    .line 872
    iput-object v4, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mPhotoBmp:Landroid/graphics/Bitmap;

    .line 873
    iget-object v2, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mAnchorView:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 874
    iget-object v2, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mCountView:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 875
    iget-object v2, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mCountView:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 876
    iget-object v2, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mPhoneOrEmailView:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 877
    iget-object v2, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mPhoneOrEmailView:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 878
    iget-object v2, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mContactsList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 879
    iget-object v2, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mOriginalList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 880
    iget-object v2, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mPhotoView:Lcom/meizu/widget/RoundCornerContactBadge;

    invoke-virtual {v2, v5}, Lcom/meizu/widget/RoundCornerContactBadge;->setClickToCall(Z)V

    .line 881
    invoke-virtual {p0, v4}, Lcom/meizu/widget/MzContactHeaderWidget;->setDisplayName(Ljava/lang/CharSequence;)V

    .line 882
    invoke-virtual {p0, v4}, Lcom/meizu/widget/MzContactHeaderWidget;->setPhoto(Landroid/graphics/Bitmap;)V

    .line 884
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 895
    :cond_0
    :goto_0
    return-void

    .line 888
    :cond_1
    invoke-direct {p0}, Lcom/meizu/widget/MzContactHeaderWidget;->resetAsyncQueryHandler()V

    .line 889
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/widget/MzContactHeaderWidget$ContactInfo;

    .line 890
    .local v0, contact:Lcom/meizu/widget/MzContactHeaderWidget$ContactInfo;
    iget-object v2, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mOriginalList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 891
    invoke-virtual {v0}, Lcom/meizu/widget/MzContactHeaderWidget$ContactInfo;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/meizu/widget/MzContactHeaderWidget$ContactInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/meizu/widget/MzContactHeaderWidget;->bindFromListInternal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 894
    .end local v0           #contact:Lcom/meizu/widget/MzContactHeaderWidget$ContactInfo;
    :cond_2
    iget-object v2, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mCountView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mContactsList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public bindFromEmail(Ljava/lang/String;J)V
    .locals 4
    .parameter "emailAddress"
    .parameter "contactId"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 671
    iput-object v2, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mPhoneNumber:Ljava/lang/String;

    .line 672
    iput-object v2, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mContactUri:Landroid/net/Uri;

    .line 673
    iput-object v2, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mPhotoBmp:Landroid/graphics/Bitmap;

    .line 674
    iget-object v0, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mAnchorView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 675
    iget-object v0, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mCountView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 676
    iget-object v0, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mCountView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 677
    iget-object v0, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mPhoneOrEmailView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 678
    iget-object v0, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mPhoneOrEmailView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 679
    iget-object v0, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mContactsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 680
    iget-object v0, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mOriginalList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 682
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 683
    invoke-virtual {p0, v2}, Lcom/meizu/widget/MzContactHeaderWidget;->setDisplayName(Ljava/lang/CharSequence;)V

    .line 684
    invoke-virtual {p0, v2}, Lcom/meizu/widget/MzContactHeaderWidget;->setPhoto(Landroid/graphics/Bitmap;)V

    .line 693
    :goto_0
    return-void

    .line 692
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/meizu/widget/MzContactHeaderWidget;->bindFromEmailInternal(Ljava/lang/String;J)V

    goto :goto_0
.end method

.method public bindFromPhoneNumber(Ljava/lang/String;J)V
    .locals 4
    .parameter "number"
    .parameter "contactId"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 771
    iput-object p1, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mPhoneNumber:Ljava/lang/String;

    .line 772
    iput-object v2, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mContactUri:Landroid/net/Uri;

    .line 773
    iput-object v2, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mPhotoBmp:Landroid/graphics/Bitmap;

    .line 774
    iget-object v0, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mAnchorView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 775
    iget-object v0, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mPhoneOrEmailView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 776
    iget-object v0, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mPhoneOrEmailView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 777
    iget-object v0, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mCountView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 778
    iget-object v0, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mCountView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 779
    iget-object v0, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mContactsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 780
    iget-object v0, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mOriginalList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 782
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 783
    invoke-virtual {p0, v2}, Lcom/meizu/widget/MzContactHeaderWidget;->setDisplayName(Ljava/lang/CharSequence;)V

    .line 784
    invoke-virtual {p0, v2}, Lcom/meizu/widget/MzContactHeaderWidget;->setPhoto(Landroid/graphics/Bitmap;)V

    .line 793
    :goto_0
    return-void

    .line 792
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/meizu/widget/MzContactHeaderWidget;->bindFromPhoneNumberInternal(Ljava/lang/String;J)V

    goto :goto_0
.end method

.method protected bindPhotoInfo(Landroid/net/Uri;ZJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "lookupUri"
    .parameter "hasContactinfo"
    .parameter "contactId"
    .parameter "displayName"
    .parameter "orgTag"
    .parameter "photoUri"

    .prologue
    .line 968
    invoke-virtual {p0, p1}, Lcom/meizu/widget/MzContactHeaderWidget;->loadPhoto(Landroid/net/Uri;)V

    .line 969
    iget-object v1, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mPhotoView:Lcom/meizu/widget/RoundCornerContactBadge;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/meizu/widget/RoundCornerContactBadge;->setClickToCall(Z)V

    .line 970
    iget-object v1, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mPhoneNumber:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 971
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 972
    .local v0, extras:Landroid/os/Bundle;
    const-string v1, "android.telephony.HAS_CALLERINFO_FOR_MOCALL"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 973
    const-string v1, "android.telephony.PERSON_ID_FOR_MOCALL"

    invoke-virtual {v0, v1, p3, p4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 974
    const-string v1, "android.telephony.PHOTO_URI_FOR_MOCALL"

    invoke-virtual {v0, v1, p7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 975
    const-string v1, "android.telephony.NAME_FOR_MOCALL"

    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 976
    const-string v1, "android.telephony.ORGTAG_FOR_MOCALL"

    invoke-virtual {v0, v1, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 977
    iget-object v1, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mPhotoView:Lcom/meizu/widget/RoundCornerContactBadge;

    iget-object v2, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mPhoneNumber:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/meizu/widget/RoundCornerContactBadge;->assignContactFromPhone(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 978
    iget-boolean v1, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mClickToCall:Z

    if-eqz v1, :cond_0

    .line 979
    iget-object v1, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mPhotoView:Lcom/meizu/widget/RoundCornerContactBadge;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/meizu/widget/RoundCornerContactBadge;->setClickToCall(Z)V

    .line 984
    .end local v0           #extras:Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-void

    .line 981
    :cond_1
    if-eqz p1, :cond_0

    .line 982
    iget-object v1, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mPhotoView:Lcom/meizu/widget/RoundCornerContactBadge;

    invoke-virtual {v1, p1}, Lcom/meizu/widget/RoundCornerContactBadge;->assignContactUri(Landroid/net/Uri;)V

    goto :goto_0
.end method

.method public checkSipDestNumber()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 1066
    iget-object v3, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mSipDestChecker:Lcom/meizu/widget/RecipientStateInfo$SipDestChecker;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mCheckedNumber:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1067
    iget-object v3, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mContactsList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v6, :cond_0

    iget-object v3, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mRecipientState:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1068
    iget-object v3, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mRecipientState:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    iput-object v3, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mOldRecipientState:Ljava/util/HashMap;

    .line 1069
    iget v3, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mSipVersion:I

    iput v3, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mOldSipVersion:I

    .line 1072
    :cond_0
    iget-object v2, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mContactsList:Ljava/util/ArrayList;

    .line 1073
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/widget/MzContactHeaderWidget$ContactInfo;>;"
    iget-object v3, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mOriginalList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget-object v4, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mContactsList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v3, v4, :cond_1

    .line 1074
    iget-object v2, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mOriginalList:Ljava/util/ArrayList;

    .line 1076
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/widget/MzContactHeaderWidget$ContactInfo;

    .line 1077
    .local v0, contact:Lcom/meizu/widget/MzContactHeaderWidget$ContactInfo;
    iget-object v3, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mCheckedNumber:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/meizu/widget/MzContactHeaderWidget$ContactInfo;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1080
    .end local v0           #contact:Lcom/meizu/widget/MzContactHeaderWidget$ContactInfo;
    :cond_2
    iget-object v3, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mCheckedNumber:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 1081
    const v3, 0x7fffffff

    iput v3, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mSipVersion:I

    .line 1082
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/meizu/widget/MzContactHeaderWidget$2;

    invoke-direct {v4, p0}, Lcom/meizu/widget/MzContactHeaderWidget$2;-><init>(Lcom/meizu/widget/MzContactHeaderWidget;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 1093
    iget-object v3, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mFlymeView:Lcom/meizu/widget/FlymeButton;

    invoke-virtual {v3}, Lcom/meizu/widget/FlymeButton;->isProgressBarShowing()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mHandler:Lcom/meizu/widget/MzContactHeaderWidget$MyHandler;

    invoke-virtual {v3, v6}, Lcom/meizu/widget/MzContactHeaderWidget$MyHandler;->hasMessages(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1094
    iget-object v3, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mHandler:Lcom/meizu/widget/MzContactHeaderWidget$MyHandler;

    const-wide/16 v4, 0x5dc

    invoke-virtual {v3, v6, v4, v5}, Lcom/meizu/widget/MzContactHeaderWidget$MyHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1102
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/widget/MzContactHeaderWidget$ContactInfo;>;"
    :cond_3
    :goto_1
    return-void

    .line 1097
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/widget/MzContactHeaderWidget$ContactInfo;>;"
    :cond_4
    iget-object v3, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mHandler:Lcom/meizu/widget/MzContactHeaderWidget$MyHandler;

    invoke-virtual {v3, v6}, Lcom/meizu/widget/MzContactHeaderWidget$MyHandler;->removeMessages(I)V

    .line 1098
    iget-object v3, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mFlymeView:Lcom/meizu/widget/FlymeButton;

    invoke-virtual {v3}, Lcom/meizu/widget/FlymeButton;->dismissProgressBar()V

    .line 1099
    iget-object v3, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mFlymeView:Lcom/meizu/widget/FlymeButton;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/meizu/widget/FlymeButton;->setVisibility(I)V

    goto :goto_1
.end method

.method public containsEmail()Z
    .locals 3

    .prologue
    .line 553
    iget-object v2, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mContactsList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/widget/MzContactHeaderWidget$ContactInfo;

    .line 554
    .local v0, contact:Lcom/meizu/widget/MzContactHeaderWidget$ContactInfo;
    invoke-virtual {v0}, Lcom/meizu/widget/MzContactHeaderWidget$ContactInfo;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 555
    const/4 v2, 0x1

    .line 558
    .end local v0           #contact:Lcom/meizu/widget/MzContactHeaderWidget$ContactInfo;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public disablePhotoClick()V
    .locals 2

    .prologue
    .line 282
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mDisablePhotoClick:Z

    .line 283
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mClickToCall:Z

    .line 284
    iget-object v0, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mPhotoView:Lcom/meizu/widget/RoundCornerContactBadge;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/meizu/widget/RoundCornerContactBadge;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 285
    return-void
.end method

.method public enablePhotoClickToCall()V
    .locals 1

    .prologue
    .line 277
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mDisablePhotoClick:Z

    .line 278
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mClickToCall:Z

    .line 279
    return-void
.end method

.method public getAnchorView()Landroid/view/View;
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mAnchorView:Landroid/view/View;

    return-object v0
.end method

.method public getContactIdList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 589
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 590
    .local v1, contactIdList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iget-object v3, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mContactsList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/widget/MzContactHeaderWidget$ContactInfo;

    .line 591
    .local v0, contact:Lcom/meizu/widget/MzContactHeaderWidget$ContactInfo;
    invoke-virtual {v0}, Lcom/meizu/widget/MzContactHeaderWidget$ContactInfo;->getContactId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 594
    .end local v0           #contact:Lcom/meizu/widget/MzContactHeaderWidget$ContactInfo;
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 597
    .end local v1           #contactIdList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :goto_1
    return-object v1

    .restart local v1       #contactIdList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getContactsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/widget/MzContactHeaderWidget$ContactInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 581
    iget-object v0, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mContactsList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 602
    iget-object v0, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mContactsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getDisplayName()Ljava/util/List;
    .locals 4
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
    .line 540
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 541
    .local v2, namesList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mContactsList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/widget/MzContactHeaderWidget$ContactInfo;

    .line 542
    .local v0, contact:Lcom/meizu/widget/MzContactHeaderWidget$ContactInfo;
    invoke-virtual {v0}, Lcom/meizu/widget/MzContactHeaderWidget$ContactInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 545
    .end local v0           #contact:Lcom/meizu/widget/MzContactHeaderWidget$ContactInfo;
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 548
    .end local v2           #namesList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    return-object v2

    .restart local v2       #namesList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getNumbers()Ljava/util/List;
    .locals 4
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
    .line 565
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 566
    .local v2, numbersList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mContactsList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/widget/MzContactHeaderWidget$ContactInfo;

    .line 567
    .local v0, contact:Lcom/meizu/widget/MzContactHeaderWidget$ContactInfo;
    invoke-virtual {v0}, Lcom/meizu/widget/MzContactHeaderWidget$ContactInfo;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 570
    .end local v0           #contact:Lcom/meizu/widget/MzContactHeaderWidget$ContactInfo;
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 573
    .end local v2           #numbersList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    return-object v2

    .restart local v2       #numbersList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getSipDestState()Lcom/meizu/widget/RecipientStateInfo$SipState;
    .locals 1

    .prologue
    .line 1138
    iget-boolean v0, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mFlymeOn:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/meizu/widget/MzContactHeaderWidget;->getSipState()Lcom/meizu/widget/RecipientStateInfo$SipState;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/meizu/widget/RecipientStateInfo$SipState;->SIP_NO:Lcom/meizu/widget/RecipientStateInfo$SipState;

    goto :goto_0
.end method

.method public getSipState()Lcom/meizu/widget/RecipientStateInfo$SipState;
    .locals 6

    .prologue
    .line 1145
    iget-object v0, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mRecipientState:Ljava/util/HashMap;

    .line 1147
    .local v0, checkState:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/meizu/widget/RecipientStateInfo$SipState;>;"
    iget-object v4, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mContactsList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_2

    iget-object v4, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mCheckedNumber:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1148
    iget-object v4, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mOldRecipientState:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1149
    iget-object v4, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mDefaultState:Lcom/meizu/widget/RecipientStateInfo$SipState;

    if-eqz v4, :cond_0

    .line 1150
    iget-object v4, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mDefaultState:Lcom/meizu/widget/RecipientStateInfo$SipState;

    .line 1170
    :goto_0
    return-object v4

    .line 1152
    :cond_0
    sget-object v4, Lcom/meizu/widget/RecipientStateInfo$SipState;->SIP_NO:Lcom/meizu/widget/RecipientStateInfo$SipState;

    goto :goto_0

    .line 1155
    :cond_1
    iget-object v0, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mOldRecipientState:Ljava/util/HashMap;

    .line 1159
    :cond_2
    iget-object v4, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mContactsList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/widget/MzContactHeaderWidget$ContactInfo;

    .line 1160
    .local v1, contact:Lcom/meizu/widget/MzContactHeaderWidget$ContactInfo;
    invoke-virtual {v1}, Lcom/meizu/widget/MzContactHeaderWidget$ContactInfo;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/meizu/widget/RecipientStateInfo$SipState;

    .line 1161
    .local v3, state:Lcom/meizu/widget/RecipientStateInfo$SipState;
    if-nez v3, :cond_4

    iget-object v4, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mDefaultState:Lcom/meizu/widget/RecipientStateInfo$SipState;

    if-eqz v4, :cond_4

    .line 1162
    iget-object v4, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mDefaultState:Lcom/meizu/widget/RecipientStateInfo$SipState;

    goto :goto_0

    .line 1165
    :cond_4
    if-eqz v3, :cond_5

    sget-object v4, Lcom/meizu/widget/RecipientStateInfo$SipState;->SIP_YES:Lcom/meizu/widget/RecipientStateInfo$SipState;

    if-eq v3, v4, :cond_3

    .line 1166
    :cond_5
    sget-object v4, Lcom/meizu/widget/RecipientStateInfo$SipState;->SIP_NO:Lcom/meizu/widget/RecipientStateInfo$SipState;

    goto :goto_0

    .line 1170
    .end local v1           #contact:Lcom/meizu/widget/MzContactHeaderWidget$ContactInfo;
    .end local v3           #state:Lcom/meizu/widget/RecipientStateInfo$SipState;
    :cond_6
    sget-object v4, Lcom/meizu/widget/RecipientStateInfo$SipState;->SIP_YES:Lcom/meizu/widget/RecipientStateInfo$SipState;

    goto :goto_0
.end method

.method public getSipVersion()I
    .locals 2

    .prologue
    .line 1126
    iget-object v0, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mCheckedNumber:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1127
    iget v0, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mDefaultVersion:I

    .line 1130
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mSipVersion:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mSipVersion:I

    goto :goto_0
.end method

.method public isFlymeOn()Z
    .locals 1

    .prologue
    .line 1181
    iget-boolean v0, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mFlymeOn:Z

    return v0
.end method

.method public isSetSipDestChecker()Z
    .locals 1

    .prologue
    .line 1059
    iget-object v0, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mSipDestChecker:Lcom/meizu/widget/RecipientStateInfo$SipDestChecker;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected loadPhoto(Landroid/net/Uri;)V
    .locals 6
    .parameter "contactUri"

    .prologue
    const/4 v5, 0x0

    .line 987
    if-nez p1, :cond_0

    .line 988
    iget-object v3, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mPhotoView:Lcom/meizu/widget/RoundCornerContactBadge;

    invoke-virtual {v3, v5}, Lcom/meizu/widget/RoundCornerContactBadge;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1004
    :goto_0
    return-void

    .line 990
    :cond_0
    const/4 v1, 0x0

    .line 992
    .local v1, inputStream:Ljava/io/InputStream;
    :try_start_0
    iget-object v3, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v3, p1}, Landroid/provider/ContactsContract$Contacts;->openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 997
    :goto_1
    invoke-static {v1, v5}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 998
    .local v2, photo:Landroid/graphics/drawable/Drawable;
    instance-of v3, v2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_1

    .line 999
    iget-object v3, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mPhotoView:Lcom/meizu/widget/RoundCornerContactBadge;

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    .end local v2           #photo:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/meizu/widget/RoundCornerContactBadge;->setImageBitmap(Landroid/graphics/Bitmap;Z)V

    goto :goto_0

    .line 993
    :catch_0
    move-exception v0

    .line 994
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "MzContactHeaderWidget"

    const-string v4, "Error opening photo input stream"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1001
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v2       #photo:Landroid/graphics/drawable/Drawable;
    :cond_1
    iget-object v3, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mPhotoView:Lcom/meizu/widget/RoundCornerContactBadge;

    invoke-virtual {v3, v5}, Lcom/meizu/widget/RoundCornerContactBadge;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 206
    invoke-direct {p0, p1}, Lcom/meizu/widget/MzContactHeaderWidget;->onOrientationChanged(Landroid/content/res/Configuration;)V

    .line 207
    return-void
.end method

.method protected onMeasure(II)V
    .locals 9
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v8, 0x3f80

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 252
    invoke-virtual {p0}, Lcom/meizu/widget/MzContactHeaderWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 253
    iget-object v4, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mDisplayNameView:Landroid/widget/TextView;

    invoke-virtual {v4, v6, v6}, Landroid/widget/TextView;->measure(II)V

    .line 254
    iget-object v4, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mPhoneOrEmailView:Landroid/widget/TextView;

    invoke-virtual {v4, v6, v6}, Landroid/widget/TextView;->measure(II)V

    .line 255
    iget-object v4, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mDisplayNameView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v4

    iget-object v5, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mPhoneOrEmailView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v5

    add-int v3, v4, v5

    .line 257
    .local v3, width:I
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 258
    iget-object v4, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mDisplayNameView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 259
    .local v2, parent:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    sub-int v0, v4, v5

    .line 261
    .local v0, layoutWidth:I
    iget-object v4, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mDisplayNameView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 262
    .local v1, lp:Landroid/widget/LinearLayout$LayoutParams;
    if-ge v3, v0, :cond_0

    iget v4, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    cmpl-float v4, v4, v8

    if-nez v4, :cond_0

    .line 263
    iput v7, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 264
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 267
    :cond_0
    if-le v3, v0, :cond_1

    iget v4, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    cmpl-float v4, v4, v7

    if-nez v4, :cond_1

    .line 268
    iput v8, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 269
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 274
    .end local v0           #layoutWidth:I
    .end local v1           #lp:Landroid/widget/LinearLayout$LayoutParams;
    .end local v2           #parent:Landroid/view/View;
    .end local v3           #width:I
    :cond_1
    :goto_0
    return-void

    .line 272
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    goto :goto_0
.end method

.method public setContactUri(Landroid/net/Uri;)V
    .locals 1
    .parameter "uri"

    .prologue
    .line 477
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/meizu/widget/MzContactHeaderWidget;->setContactUri(Landroid/net/Uri;Z)V

    .line 478
    return-void
.end method

.method public setContactUri(Landroid/net/Uri;Z)V
    .locals 1
    .parameter "uri"
    .parameter "sendToPhoto"

    .prologue
    .line 484
    iput-object p1, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mContactUri:Landroid/net/Uri;

    .line 485
    if-eqz p2, :cond_0

    .line 486
    iget-object v0, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mPhotoView:Lcom/meizu/widget/RoundCornerContactBadge;

    invoke-virtual {v0, p1}, Lcom/meizu/widget/RoundCornerContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 488
    :cond_0
    return-void
.end method

.method public setCountText(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "countText"

    .prologue
    .line 504
    iget-object v0, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mCountView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 506
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mShowDetail:Z

    if-eqz v0, :cond_0

    .line 507
    iget-object v0, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mCountView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 511
    :goto_0
    return-void

    .line 509
    :cond_0
    iget-object v0, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mCountView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setDefaultState(Lcom/meizu/widget/RecipientStateInfo$SipState;I)V
    .locals 0
    .parameter "state"
    .parameter "sipVersion"

    .prologue
    .line 1108
    iput-object p1, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mDefaultState:Lcom/meizu/widget/RecipientStateInfo$SipState;

    .line 1109
    iput p2, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mDefaultVersion:I

    .line 1110
    return-void
.end method

.method public setDisplayName(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "displayName"

    .prologue
    .line 532
    iget-object v0, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mDisplayNameView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 533
    return-void
.end method

.method public setFlymeButtonDescription(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "descriptionText"

    .prologue
    .line 470
    iget-object v0, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mFlymeView:Lcom/meizu/widget/FlymeButton;

    invoke-virtual {v0, p1}, Lcom/meizu/widget/FlymeButton;->setDescription(Ljava/lang/CharSequence;)V

    .line 471
    return-void
.end method

.method public setFlymeState(Z)V
    .locals 0
    .parameter "flymeOn"

    .prologue
    .line 1177
    iput-boolean p1, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mFlymeOn:Z

    .line 1178
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 289
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 291
    iget-boolean v0, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mDisablePhotoClick:Z

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mPhotoView:Lcom/meizu/widget/RoundCornerContactBadge;

    invoke-virtual {v0, p1}, Lcom/meizu/widget/RoundCornerContactBadge;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 294
    :cond_0
    return-void
.end method

.method public setOnSipStateChangedListener(Lcom/meizu/widget/RecipientStateInfo$OnSipStateChangedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 1185
    iput-object p1, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mOnSipStateChangedListener:Lcom/meizu/widget/RecipientStateInfo$OnSipStateChangedListener;

    .line 1186
    return-void
.end method

.method public setPhoneNumber(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "phone"

    .prologue
    .line 518
    iget-object v0, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mPhoneOrEmailView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 520
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mShowDetail:Z

    if-eqz v0, :cond_0

    .line 521
    iget-object v0, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mPhoneOrEmailView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 525
    :goto_0
    return-void

    .line 523
    :cond_0
    iget-object v0, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mPhoneOrEmailView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setPhoto(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bitmap"

    .prologue
    .line 495
    iput-object p1, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mPhotoBmp:Landroid/graphics/Bitmap;

    .line 496
    iget-object v0, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mPhotoView:Lcom/meizu/widget/RoundCornerContactBadge;

    invoke-virtual {v0, p1}, Lcom/meizu/widget/RoundCornerContactBadge;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 497
    return-void
.end method

.method public setSipDestChecker(Lcom/meizu/widget/RecipientStateInfo$SipDestChecker;)V
    .locals 2
    .parameter "checker"

    .prologue
    .line 1045
    iput-object p1, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mSipDestChecker:Lcom/meizu/widget/RecipientStateInfo$SipDestChecker;

    .line 1047
    if-nez p1, :cond_0

    .line 1048
    iget-object v0, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mCheckedNumber:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1049
    iget-object v0, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mHandler:Lcom/meizu/widget/MzContactHeaderWidget$MyHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/meizu/widget/MzContactHeaderWidget$MyHandler;->removeMessages(I)V

    .line 1050
    iget-object v0, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mFlymeView:Lcom/meizu/widget/FlymeButton;

    invoke-virtual {v0}, Lcom/meizu/widget/FlymeButton;->dismissProgressBar()V

    .line 1051
    iget-object v0, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mFlymeView:Lcom/meizu/widget/FlymeButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/meizu/widget/FlymeButton;->setVisibility(I)V

    .line 1053
    :cond_0
    return-void
.end method

.method public setSipDestState(Ljava/lang/String;Lcom/meizu/widget/RecipientStateInfo$SipState;I)V
    .locals 4
    .parameter "number"
    .parameter "state"
    .parameter "sipVersion"

    .prologue
    const/4 v3, 0x2

    .line 1116
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1120
    :goto_0
    return-void

    .line 1119
    :cond_0
    iget-object v0, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mHandler:Lcom/meizu/widget/MzContactHeaderWidget$MyHandler;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v3, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public showDetail(Z)V
    .locals 4
    .parameter "showDetail"

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 459
    iput-boolean p1, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mShowDetail:Z

    .line 460
    iget-object v3, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mCountView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mCountView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 462
    iget-object v0, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mPhoneOrEmailView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mPhoneOrEmailView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    if-eqz p1, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 464
    return-void

    :cond_0
    move v0, v2

    .line 460
    goto :goto_0

    :cond_1
    move v1, v2

    .line 462
    goto :goto_1
.end method

.method public wipeClean()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v0, 0x0

    .line 1011
    invoke-direct {p0}, Lcom/meizu/widget/MzContactHeaderWidget;->resetAsyncQueryHandler()V

    .line 1012
    invoke-virtual {p0, v0}, Lcom/meizu/widget/MzContactHeaderWidget;->setDisplayName(Ljava/lang/CharSequence;)V

    .line 1013
    invoke-virtual {p0, v0}, Lcom/meizu/widget/MzContactHeaderWidget;->setPhoto(Landroid/graphics/Bitmap;)V

    .line 1014
    iput-object v0, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mPhotoBmp:Landroid/graphics/Bitmap;

    .line 1015
    iput-object v0, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mContactUri:Landroid/net/Uri;

    .line 1016
    iput-object v0, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mPhoneNumber:Ljava/lang/String;

    .line 1017
    iget-object v0, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mAnchorView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1018
    iget-object v0, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mCountView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1019
    iget-object v0, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mCountView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1020
    iget-object v0, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mPhoneOrEmailView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1021
    iget-object v0, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mPhoneOrEmailView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1022
    iget-object v0, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mContactsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1023
    iget-object v0, p0, Lcom/meizu/widget/MzContactHeaderWidget;->mOriginalList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1024
    invoke-direct {p0}, Lcom/meizu/widget/MzContactHeaderWidget;->clearSipInfo()V

    .line 1025
    return-void
.end method
