.class Lcom/meizu/widget/MzContactHeaderWidget$2;
.super Ljava/lang/Object;
.source "MzContactHeaderWidget.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/widget/MzContactHeaderWidget;->checkSipDestNumber()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/widget/MzContactHeaderWidget;


# direct methods
.method constructor <init>(Lcom/meizu/widget/MzContactHeaderWidget;)V
    .locals 0
    .parameter

    .prologue
    .line 1082
    iput-object p1, p0, Lcom/meizu/widget/MzContactHeaderWidget$2;->this$0:Lcom/meizu/widget/MzContactHeaderWidget;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1085
    iget-object v1, p0, Lcom/meizu/widget/MzContactHeaderWidget$2;->this$0:Lcom/meizu/widget/MzContactHeaderWidget;

    #getter for: Lcom/meizu/widget/MzContactHeaderWidget;->mSipDestChecker:Lcom/meizu/widget/RecipientStateInfo$SipDestChecker;
    invoke-static {v1}, Lcom/meizu/widget/MzContactHeaderWidget;->access$1000(Lcom/meizu/widget/MzContactHeaderWidget;)Lcom/meizu/widget/RecipientStateInfo$SipDestChecker;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1086
    iget-object v1, p0, Lcom/meizu/widget/MzContactHeaderWidget$2;->this$0:Lcom/meizu/widget/MzContactHeaderWidget;

    #getter for: Lcom/meizu/widget/MzContactHeaderWidget;->mCheckedNumber:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/meizu/widget/MzContactHeaderWidget;->access$1100(Lcom/meizu/widget/MzContactHeaderWidget;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/widget/MzContactHeaderWidget$2;->this$0:Lcom/meizu/widget/MzContactHeaderWidget;

    #getter for: Lcom/meizu/widget/MzContactHeaderWidget;->mCheckedNumber:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/meizu/widget/MzContactHeaderWidget;->access$1100(Lcom/meizu/widget/MzContactHeaderWidget;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 1088
    .local v0, numbers:[Ljava/lang/String;
    iget-object v1, p0, Lcom/meizu/widget/MzContactHeaderWidget$2;->this$0:Lcom/meizu/widget/MzContactHeaderWidget;

    #getter for: Lcom/meizu/widget/MzContactHeaderWidget;->mSipDestChecker:Lcom/meizu/widget/RecipientStateInfo$SipDestChecker;
    invoke-static {v1}, Lcom/meizu/widget/MzContactHeaderWidget;->access$1000(Lcom/meizu/widget/MzContactHeaderWidget;)Lcom/meizu/widget/RecipientStateInfo$SipDestChecker;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/meizu/widget/RecipientStateInfo$SipDestChecker;->checkSipDestAddrIsAvailable([Ljava/lang/String;)V

    .line 1090
    .end local v0           #numbers:[Ljava/lang/String;
    :cond_0
    return-void
.end method
