.class Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;
.super Ljava/lang/Object;
.source "TabHostPlus.java"

# interfaces
.implements Lcom/meizu/widget/TabHostPlus$ContentStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/widget/TabHostPlus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IntentContentStrategy"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/widget/TabHostPlus$IntentContentStrategy$DisplayNext;,
        Lcom/meizu/widget/TabHostPlus$IntentContentStrategy$FlpperHandler;
    }
.end annotation


# instance fields
.field private final FLIP_MSG:I

.field private context:Landroid/content/Context;

.field private forward:I

.field private mHandler:Lcom/meizu/widget/TabHostPlus$IntentContentStrategy$FlpperHandler;

.field private mIntent:Landroid/content/Intent;

.field private mIntentList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private mLastDelTag:Ljava/lang/String;

.field private mLaunchedView:Landroid/view/View;

.field private final mTag:Ljava/lang/String;

.field private mTagList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mViewFlipper:Landroid/widget/ViewFlipper;

.field final synthetic this$0:Lcom/meizu/widget/TabHostPlus;


# direct methods
.method private constructor <init>(Lcom/meizu/widget/TabHostPlus;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter "tag"
    .parameter "intent"

    .prologue
    .line 901
    iput-object p1, p0, Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;->this$0:Lcom/meizu/widget/TabHostPlus;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 890
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;->mIntentList:Ljava/util/ArrayList;

    .line 891
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;->mTagList:Ljava/util/ArrayList;

    .line 897
    const/4 v0, -0x1

    iput v0, p0, Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;->forward:I

    .line 898
    const/4 v0, 0x1

    iput v0, p0, Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;->FLIP_MSG:I

    .line 902
    iput-object p2, p0, Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;->mTag:Ljava/lang/String;

    .line 903
    iput-object p3, p0, Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;->mIntent:Landroid/content/Intent;

    .line 904
    iget-object v0, p0, Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;->mTagList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 905
    iget-object v0, p0, Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;->mIntentList:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 906
    invoke-virtual {p1}, Lcom/meizu/widget/TabHostPlus;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;->context:Landroid/content/Context;

    .line 907
    new-instance v0, Lcom/meizu/widget/TabHostPlus$IntentContentStrategy$FlpperHandler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/meizu/widget/TabHostPlus$IntentContentStrategy$FlpperHandler;-><init>(Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;->mHandler:Lcom/meizu/widget/TabHostPlus$IntentContentStrategy$FlpperHandler;

    .line 908
    return-void
.end method

.method synthetic constructor <init>(Lcom/meizu/widget/TabHostPlus;Ljava/lang/String;Landroid/content/Intent;Lcom/meizu/widget/TabHostPlus$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 887
    invoke-direct {p0, p1, p2, p3}, Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;-><init>(Lcom/meizu/widget/TabHostPlus;Ljava/lang/String;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 887
    iget v0, p0, Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;->forward:I

    return v0
.end method

.method static synthetic access$1702(Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 887
    iput p1, p0, Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;->forward:I

    return p1
.end method

.method static synthetic access$1800(Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 887
    iget-object v0, p0, Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;->mIntentList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;)Landroid/widget/ViewFlipper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 887
    iget-object v0, p0, Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;->mViewFlipper:Landroid/widget/ViewFlipper;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;)Lcom/meizu/widget/TabHostPlus$IntentContentStrategy$FlpperHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 887
    iget-object v0, p0, Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;->mHandler:Lcom/meizu/widget/TabHostPlus$IntentContentStrategy$FlpperHandler;

    return-object v0
.end method


# virtual methods
.method public MoveToTop()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1022
    iget-object v3, p0, Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;->mIntentList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1023
    .local v1, size:I
    if-le v1, v6, :cond_1

    .line 1024
    iget-object v3, p0, Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;->mIntentList:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    iput-object v3, p0, Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;->mIntent:Landroid/content/Intent;

    .line 1025
    iget-object v3, p0, Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;->mIntentList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1026
    iget-object v3, p0, Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;->mIntentList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;->mIntent:Landroid/content/Intent;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1027
    iput v5, p0, Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;->forward:I

    .line 1028
    add-int/lit8 v0, v1, -0x2

    .local v0, i:I
    :goto_0
    if-lez v0, :cond_0

    .line 1029
    iget-object v3, p0, Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;->mViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v3, v0}, Landroid/widget/ViewFlipper;->removeViewAt(I)V

    .line 1030
    iget-object v3, p0, Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;->mTagList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1031
    .local v2, tag:Ljava/lang/String;
    iget-object v3, p0, Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;->this$0:Lcom/meizu/widget/TabHostPlus;

    iget-object v3, v3, Lcom/meizu/widget/TabHostPlus;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    invoke-virtual {v3, v2, v6}, Landroid/app/LocalActivityManager;->destroyActivity(Ljava/lang/String;Z)Landroid/view/Window;

    .line 1028
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1033
    .end local v2           #tag:Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;->mTagList:Ljava/util/ArrayList;

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;->mLastDelTag:Ljava/lang/String;

    .line 1034
    iget-object v3, p0, Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;->mTagList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1035
    iget-object v3, p0, Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;->mTagList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;->mTag:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1037
    .end local v0           #i:I
    :cond_1
    return-void
.end method

.method public changeTab()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const-wide/16 v5, 0x0

    .line 1040
    iget-object v3, p0, Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;->mIntentList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1041
    .local v1, size:I
    if-le v1, v7, :cond_1

    .line 1042
    iget-object v3, p0, Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;->mIntentList:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    iput-object v3, p0, Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;->mIntent:Landroid/content/Intent;

    .line 1043
    iget-object v3, p0, Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;->mIntentList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1044
    iget-object v3, p0, Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;->mIntentList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;->mIntent:Landroid/content/Intent;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1045
    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-lez v0, :cond_0

    .line 1046
    iget-object v3, p0, Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;->mViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v3, v0}, Landroid/widget/ViewFlipper;->removeViewAt(I)V

    .line 1047
    iget-object v3, p0, Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;->mTagList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1048
    .local v2, tag:Ljava/lang/String;
    iget-object v3, p0, Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;->this$0:Lcom/meizu/widget/TabHostPlus;

    iget-object v3, v3, Lcom/meizu/widget/TabHostPlus;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    invoke-virtual {v3, v2, v7}, Landroid/app/LocalActivityManager;->destroyActivity(Ljava/lang/String;Z)Landroid/view/Window;

    .line 1045
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1050
    .end local v2           #tag:Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;->mTagList:Ljava/util/ArrayList;

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;->mLastDelTag:Ljava/lang/String;

    .line 1051
    iget-object v3, p0, Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;->mTagList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1052
    iget-object v3, p0, Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;->mTagList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;->mTag:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1055
    .end local v0           #i:I
    :cond_1
    const/4 v3, -0x1

    iput v3, p0, Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;->forward:I

    .line 1056
    iget-object v3, p0, Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;->this$0:Lcom/meizu/widget/TabHostPlus;

    #getter for: Lcom/meizu/widget/TabHostPlus;->anim_left_in:Landroid/view/animation/Animation;
    invoke-static {v3}, Lcom/meizu/widget/TabHostPlus;->access$1200(Lcom/meizu/widget/TabHostPlus;)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v3, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1057
    iget-object v3, p0, Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;->this$0:Lcom/meizu/widget/TabHostPlus;

    #getter for: Lcom/meizu/widget/TabHostPlus;->anim_left_out:Landroid/view/animation/Animation;
    invoke-static {v3}, Lcom/meizu/widget/TabHostPlus;->access$1300(Lcom/meizu/widget/TabHostPlus;)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v3, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1058
    iget-object v3, p0, Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;->this$0:Lcom/meizu/widget/TabHostPlus;

    #getter for: Lcom/meizu/widget/TabHostPlus;->anim_right_in:Landroid/view/animation/Animation;
    invoke-static {v3}, Lcom/meizu/widget/TabHostPlus;->access$1400(Lcom/meizu/widget/TabHostPlus;)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v3, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1059
    iget-object v3, p0, Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;->this$0:Lcom/meizu/widget/TabHostPlus;

    #getter for: Lcom/meizu/widget/TabHostPlus;->anim_right_out:Landroid/view/animation/Animation;
    invoke-static {v3}, Lcom/meizu/widget/TabHostPlus;->access$1500(Lcom/meizu/widget/TabHostPlus;)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v3, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1060
    return-void
.end method

.method public destroyLastActivity()V
    .locals 3

    .prologue
    .line 1000
    iget-object v0, p0, Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;->mLastDelTag:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;->forward:I

    if-eqz v0, :cond_0

    .line 1001
    iget-object v0, p0, Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;->this$0:Lcom/meizu/widget/TabHostPlus;

    iget-object v0, v0, Lcom/meizu/widget/TabHostPlus;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    iget-object v1, p0, Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;->mLastDelTag:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/LocalActivityManager;->destroyActivity(Ljava/lang/String;Z)Landroid/view/Window;

    .line 1002
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;->mLastDelTag:Ljava/lang/String;

    .line 1004
    :cond_0
    return-void
.end method

.method public getContentView()Landroid/view/View;
    .locals 12

    .prologue
    const/4 v4, 0x0

    const/high16 v11, 0x4

    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, -0x1

    .line 911
    iget-object v5, p0, Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;->mViewFlipper:Landroid/widget/ViewFlipper;

    if-nez v5, :cond_3

    .line 912
    new-instance v5, Landroid/widget/ViewFlipper;

    iget-object v6, p0, Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;->context:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/ViewFlipper;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;->mViewFlipper:Landroid/widget/ViewFlipper;

    .line 913
    iget-object v5, p0, Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;->mViewFlipper:Landroid/widget/ViewFlipper;

    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v6, v8, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6}, Landroid/widget/ViewFlipper;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 916
    iget-object v5, p0, Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;->mViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v5, v9}, Landroid/widget/ViewFlipper;->setAnimationCacheEnabled(Z)V

    .line 917
    iget-object v5, p0, Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;->this$0:Lcom/meizu/widget/TabHostPlus;

    iget-object v5, v5, Lcom/meizu/widget/TabHostPlus;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    if-nez v5, :cond_0

    .line 918
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Did you forget to call \'public void setup(LocalActivityManager activityGroup)\'?"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 920
    :cond_0
    iget-object v5, p0, Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;->this$0:Lcom/meizu/widget/TabHostPlus;

    iget-object v5, v5, Lcom/meizu/widget/TabHostPlus;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    iget-object v6, p0, Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;->mTag:Ljava/lang/String;

    iget-object v7, p0, Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;->mIntent:Landroid/content/Intent;

    invoke-virtual {v5, v6, v7}, Landroid/app/LocalActivityManager;->startActivity(Ljava/lang/String;Landroid/content/Intent;)Landroid/view/Window;

    move-result-object v3

    .line 922
    .local v3, w:Landroid/view/Window;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    .line 923
    .local v4, wd:Landroid/view/View;
    :cond_1
    iget-object v5, p0, Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;->mViewFlipper:Landroid/widget/ViewFlipper;

    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v6, v8, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v4, v6}, Landroid/widget/ViewFlipper;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 926
    if-eqz v4, :cond_2

    .line 927
    invoke-virtual {v4, v10}, Landroid/view/View;->setVisibility(I)V

    .line 928
    invoke-virtual {v4, v9}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 929
    check-cast v4, Landroid/view/ViewGroup;

    .end local v4           #wd:Landroid/view/View;
    invoke-virtual {v4, v11}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 948
    .end local v3           #w:Landroid/view/Window;
    :cond_2
    :goto_0
    iget-object v5, p0, Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;->mViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v5, v10}, Landroid/widget/ViewFlipper;->setVisibility(I)V

    .line 949
    iget-object v5, p0, Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;->mViewFlipper:Landroid/widget/ViewFlipper;

    return-object v5

    .line 932
    :cond_3
    iget v5, p0, Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;->forward:I

    if-ge v5, v9, :cond_2

    .line 933
    iget-object v5, p0, Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;->mIntentList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 934
    .local v1, size:I
    iget-object v5, p0, Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;->mIntentList:Ljava/util/ArrayList;

    add-int/lit8 v6, v1, -0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 935
    .local v0, intent:Landroid/content/Intent;
    iget-object v5, p0, Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;->mTagList:Ljava/util/ArrayList;

    add-int/lit8 v6, v1, -0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 936
    .local v2, tag:Ljava/lang/String;
    iget-object v5, p0, Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;->this$0:Lcom/meizu/widget/TabHostPlus;

    iget-object v5, v5, Lcom/meizu/widget/TabHostPlus;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    if-nez v5, :cond_4

    .line 937
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Did you forget to call \'public void setup(LocalActivityManager activityGroup)\'?"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 939
    :cond_4
    iget-object v5, p0, Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;->this$0:Lcom/meizu/widget/TabHostPlus;

    iget-object v5, v5, Lcom/meizu/widget/TabHostPlus;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    invoke-virtual {v5, v2, v0}, Landroid/app/LocalActivityManager;->startActivity(Ljava/lang/String;Landroid/content/Intent;)Landroid/view/Window;

    move-result-object v3

    .line 940
    .restart local v3       #w:Landroid/view/Window;
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    .line 941
    .restart local v4       #wd:Landroid/view/View;
    :cond_5
    if-eqz v4, :cond_2

    .line 942
    invoke-virtual {v4, v10}, Landroid/view/View;->setVisibility(I)V

    .line 943
    invoke-virtual {v4, v9}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 944
    check-cast v4, Landroid/view/ViewGroup;

    .end local v4           #wd:Landroid/view/View;
    invoke-virtual {v4, v11}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    goto :goto_0
.end method

.method public isStartFlipper()Z
    .locals 2

    .prologue
    .line 1007
    iget v0, p0, Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;->forward:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1008
    const/4 v0, 0x1

    .line 1010
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTabTop()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 1014
    iget-object v2, p0, Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;->mIntentList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1015
    .local v0, size:I
    if-ne v0, v1, :cond_0

    .line 1018
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onBackPressed()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 987
    iget-object v1, p0, Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;->mIntentList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 988
    .local v0, size:I
    if-le v0, v2, :cond_0

    .line 989
    iget-object v1, p0, Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;->mIntentList:Ljava/util/ArrayList;

    add-int/lit8 v4, v0, -0x2

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    iput-object v1, p0, Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;->mIntent:Landroid/content/Intent;

    .line 990
    iget-object v1, p0, Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;->mIntentList:Ljava/util/ArrayList;

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 992
    iget-object v1, p0, Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;->mTagList:Ljava/util/ArrayList;

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;->mLastDelTag:Ljava/lang/String;

    .line 993
    iput v3, p0, Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;->forward:I

    move v1, v2

    .line 996
    :goto_0
    return v1

    :cond_0
    move v1, v3

    goto :goto_0
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 984
    return-void
.end method

.method public performIntent(Landroid/content/Intent;)V
    .locals 8
    .parameter "intent"

    .prologue
    const/4 v7, 0x1

    const/4 v6, -0x1

    .line 959
    iput-object p1, p0, Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;->mIntent:Landroid/content/Intent;

    .line 960
    iget-object v4, p0, Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;->mIntentList:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 961
    iget-object v4, p0, Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;->mIntentList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 962
    .local v0, size:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;->mTag:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v0, -0x1

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 963
    .local v1, tag:Ljava/lang/String;
    iget-object v4, p0, Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;->mTagList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 964
    iput v7, p0, Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;->forward:I

    .line 966
    iget-object v4, p0, Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;->this$0:Lcom/meizu/widget/TabHostPlus;

    iget-object v4, v4, Lcom/meizu/widget/TabHostPlus;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    if-nez v4, :cond_0

    .line 967
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Did you forget to call \'public void setup(LocalActivityManager activityGroup)\'?"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 969
    :cond_0
    iget-object v4, p0, Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;->this$0:Lcom/meizu/widget/TabHostPlus;

    iget-object v4, v4, Lcom/meizu/widget/TabHostPlus;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    iget-object v5, p0, Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;->mIntent:Landroid/content/Intent;

    invoke-virtual {v4, v1, v5}, Landroid/app/LocalActivityManager;->startActivity(Ljava/lang/String;Landroid/content/Intent;)Landroid/view/Window;

    move-result-object v2

    .line 971
    .local v2, w:Landroid/view/Window;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    .line 972
    .local v3, wd:Landroid/view/View;
    :goto_0
    iget-object v4, p0, Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;->mViewFlipper:Landroid/widget/ViewFlipper;

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v5, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v3, v5}, Landroid/widget/ViewFlipper;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 975
    if-eqz v3, :cond_1

    .line 976
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 977
    invoke-virtual {v3, v7}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 978
    check-cast v3, Landroid/view/ViewGroup;

    .end local v3           #wd:Landroid/view/View;
    const/high16 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 981
    :cond_1
    return-void

    .line 971
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public startFlipper()V
    .locals 5

    .prologue
    const-wide/16 v3, 0xfa

    const/4 v2, 0x0

    .line 1063
    iget v0, p0, Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;->forward:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1064
    iget-object v0, p0, Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;->this$0:Lcom/meizu/widget/TabHostPlus;

    #getter for: Lcom/meizu/widget/TabHostPlus;->anim_left_in:Landroid/view/animation/Animation;
    invoke-static {v0}, Lcom/meizu/widget/TabHostPlus;->access$1200(Lcom/meizu/widget/TabHostPlus;)Landroid/view/animation/Animation;

    move-result-object v0

    new-instance v1, Lcom/meizu/widget/TabHostPlus$IntentContentStrategy$DisplayNext;

    invoke-direct {v1, p0, v2}, Lcom/meizu/widget/TabHostPlus$IntentContentStrategy$DisplayNext;-><init>(Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;Lcom/meizu/widget/TabHostPlus$1;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1065
    iget-object v0, p0, Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;->this$0:Lcom/meizu/widget/TabHostPlus;

    #getter for: Lcom/meizu/widget/TabHostPlus;->anim_left_out:Landroid/view/animation/Animation;
    invoke-static {v0}, Lcom/meizu/widget/TabHostPlus;->access$1300(Lcom/meizu/widget/TabHostPlus;)Landroid/view/animation/Animation;

    move-result-object v0

    new-instance v1, Lcom/meizu/widget/TabHostPlus$IntentContentStrategy$DisplayNext;

    invoke-direct {v1, p0, v2}, Lcom/meizu/widget/TabHostPlus$IntentContentStrategy$DisplayNext;-><init>(Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;Lcom/meizu/widget/TabHostPlus$1;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1066
    iget-object v0, p0, Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;->this$0:Lcom/meizu/widget/TabHostPlus;

    #getter for: Lcom/meizu/widget/TabHostPlus;->anim_left_in:Landroid/view/animation/Animation;
    invoke-static {v0}, Lcom/meizu/widget/TabHostPlus;->access$1200(Lcom/meizu/widget/TabHostPlus;)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1067
    iget-object v0, p0, Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;->this$0:Lcom/meizu/widget/TabHostPlus;

    #getter for: Lcom/meizu/widget/TabHostPlus;->anim_left_out:Landroid/view/animation/Animation;
    invoke-static {v0}, Lcom/meizu/widget/TabHostPlus;->access$1300(Lcom/meizu/widget/TabHostPlus;)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1068
    iget-object v0, p0, Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;->mViewFlipper:Landroid/widget/ViewFlipper;

    iget-object v1, p0, Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;->this$0:Lcom/meizu/widget/TabHostPlus;

    #getter for: Lcom/meizu/widget/TabHostPlus;->anim_left_in:Landroid/view/animation/Animation;
    invoke-static {v1}, Lcom/meizu/widget/TabHostPlus;->access$1200(Lcom/meizu/widget/TabHostPlus;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 1069
    iget-object v0, p0, Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;->mViewFlipper:Landroid/widget/ViewFlipper;

    iget-object v1, p0, Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;->this$0:Lcom/meizu/widget/TabHostPlus;

    #getter for: Lcom/meizu/widget/TabHostPlus;->anim_left_out:Landroid/view/animation/Animation;
    invoke-static {v1}, Lcom/meizu/widget/TabHostPlus;->access$1300(Lcom/meizu/widget/TabHostPlus;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 1070
    iget-object v0, p0, Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;->mViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->startFlipping()V

    .line 1071
    iget-object v0, p0, Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;->mViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->showNext()V

    .line 1082
    :cond_0
    :goto_0
    return-void

    .line 1072
    :cond_1
    iget v0, p0, Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;->forward:I

    if-nez v0, :cond_0

    .line 1073
    iget-object v0, p0, Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;->this$0:Lcom/meizu/widget/TabHostPlus;

    #getter for: Lcom/meizu/widget/TabHostPlus;->anim_right_in:Landroid/view/animation/Animation;
    invoke-static {v0}, Lcom/meizu/widget/TabHostPlus;->access$1400(Lcom/meizu/widget/TabHostPlus;)Landroid/view/animation/Animation;

    move-result-object v0

    new-instance v1, Lcom/meizu/widget/TabHostPlus$IntentContentStrategy$DisplayNext;

    invoke-direct {v1, p0, v2}, Lcom/meizu/widget/TabHostPlus$IntentContentStrategy$DisplayNext;-><init>(Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;Lcom/meizu/widget/TabHostPlus$1;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1074
    iget-object v0, p0, Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;->this$0:Lcom/meizu/widget/TabHostPlus;

    #getter for: Lcom/meizu/widget/TabHostPlus;->anim_right_out:Landroid/view/animation/Animation;
    invoke-static {v0}, Lcom/meizu/widget/TabHostPlus;->access$1500(Lcom/meizu/widget/TabHostPlus;)Landroid/view/animation/Animation;

    move-result-object v0

    new-instance v1, Lcom/meizu/widget/TabHostPlus$IntentContentStrategy$DisplayNext;

    invoke-direct {v1, p0, v2}, Lcom/meizu/widget/TabHostPlus$IntentContentStrategy$DisplayNext;-><init>(Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;Lcom/meizu/widget/TabHostPlus$1;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1075
    iget-object v0, p0, Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;->this$0:Lcom/meizu/widget/TabHostPlus;

    #getter for: Lcom/meizu/widget/TabHostPlus;->anim_right_in:Landroid/view/animation/Animation;
    invoke-static {v0}, Lcom/meizu/widget/TabHostPlus;->access$1400(Lcom/meizu/widget/TabHostPlus;)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1076
    iget-object v0, p0, Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;->this$0:Lcom/meizu/widget/TabHostPlus;

    #getter for: Lcom/meizu/widget/TabHostPlus;->anim_right_out:Landroid/view/animation/Animation;
    invoke-static {v0}, Lcom/meizu/widget/TabHostPlus;->access$1500(Lcom/meizu/widget/TabHostPlus;)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1077
    iget-object v0, p0, Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;->mViewFlipper:Landroid/widget/ViewFlipper;

    iget-object v1, p0, Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;->this$0:Lcom/meizu/widget/TabHostPlus;

    #getter for: Lcom/meizu/widget/TabHostPlus;->anim_right_in:Landroid/view/animation/Animation;
    invoke-static {v1}, Lcom/meizu/widget/TabHostPlus;->access$1400(Lcom/meizu/widget/TabHostPlus;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 1078
    iget-object v0, p0, Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;->mViewFlipper:Landroid/widget/ViewFlipper;

    iget-object v1, p0, Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;->this$0:Lcom/meizu/widget/TabHostPlus;

    #getter for: Lcom/meizu/widget/TabHostPlus;->anim_right_out:Landroid/view/animation/Animation;
    invoke-static {v1}, Lcom/meizu/widget/TabHostPlus;->access$1500(Lcom/meizu/widget/TabHostPlus;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 1079
    iget-object v0, p0, Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;->mViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->startFlipping()V

    .line 1080
    iget-object v0, p0, Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;->mViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->showPrevious()V

    goto :goto_0
.end method

.method public tabClosed()V
    .locals 2

    .prologue
    .line 953
    iget-object v0, p0, Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;->mViewFlipper:Landroid/widget/ViewFlipper;

    if-eqz v0, :cond_0

    .line 954
    iget-object v0, p0, Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;->mViewFlipper:Landroid/widget/ViewFlipper;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setVisibility(I)V

    .line 956
    :cond_0
    return-void
.end method
