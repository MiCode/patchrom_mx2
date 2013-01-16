.class Landroid/net/sip/SipManager$SipServiceBinderListener;
.super Ljava/lang/Object;
.source "SipManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/sip/SipManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SipServiceBinderListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/sip/SipManager;

.field private token:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/net/sip/SipManager;Landroid/os/IBinder;)V
    .locals 0
    .parameter
    .parameter "token"

    .prologue
    .line 985
    iput-object p1, p0, Landroid/net/sip/SipManager$SipServiceBinderListener;->this$0:Landroid/net/sip/SipManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 986
    iput-object p2, p0, Landroid/net/sip/SipManager$SipServiceBinderListener;->token:Landroid/os/IBinder;

    .line 987
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .prologue
    .line 990
    iget-object v0, p0, Landroid/net/sip/SipManager$SipServiceBinderListener;->token:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 991
    iget-object v0, p0, Landroid/net/sip/SipManager$SipServiceBinderListener;->this$0:Landroid/net/sip/SipManager;

    const/4 v1, 0x0

    #setter for: Landroid/net/sip/SipManager;->mSipService:Landroid/net/sip/ISipService;
    invoke-static {v0, v1}, Landroid/net/sip/SipManager;->access$002(Landroid/net/sip/SipManager;Landroid/net/sip/ISipService;)Landroid/net/sip/ISipService;

    .line 993
    iget-object v0, p0, Landroid/net/sip/SipManager$SipServiceBinderListener;->this$0:Landroid/net/sip/SipManager;

    #calls: Landroid/net/sip/SipManager;->createSipService()V
    invoke-static {v0}, Landroid/net/sip/SipManager;->access$100(Landroid/net/sip/SipManager;)V

    .line 994
    return-void
.end method
