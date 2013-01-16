.class public final enum Lcom/meizu/widget/RecipientStateInfo$SipState;
.super Ljava/lang/Enum;
.source "RecipientStateInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/widget/RecipientStateInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SipState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/meizu/widget/RecipientStateInfo$SipState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/meizu/widget/RecipientStateInfo$SipState;

.field public static final enum SIP_CHECKING:Lcom/meizu/widget/RecipientStateInfo$SipState;

.field public static final enum SIP_NO:Lcom/meizu/widget/RecipientStateInfo$SipState;

.field public static final enum SIP_UNCHECK:Lcom/meizu/widget/RecipientStateInfo$SipState;

.field public static final enum SIP_YES:Lcom/meizu/widget/RecipientStateInfo$SipState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 20
    new-instance v0, Lcom/meizu/widget/RecipientStateInfo$SipState;

    const-string v1, "SIP_NO"

    invoke-direct {v0, v1, v2}, Lcom/meizu/widget/RecipientStateInfo$SipState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/widget/RecipientStateInfo$SipState;->SIP_NO:Lcom/meizu/widget/RecipientStateInfo$SipState;

    .line 21
    new-instance v0, Lcom/meizu/widget/RecipientStateInfo$SipState;

    const-string v1, "SIP_YES"

    invoke-direct {v0, v1, v3}, Lcom/meizu/widget/RecipientStateInfo$SipState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/widget/RecipientStateInfo$SipState;->SIP_YES:Lcom/meizu/widget/RecipientStateInfo$SipState;

    .line 22
    new-instance v0, Lcom/meizu/widget/RecipientStateInfo$SipState;

    const-string v1, "SIP_CHECKING"

    invoke-direct {v0, v1, v4}, Lcom/meizu/widget/RecipientStateInfo$SipState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/widget/RecipientStateInfo$SipState;->SIP_CHECKING:Lcom/meizu/widget/RecipientStateInfo$SipState;

    .line 23
    new-instance v0, Lcom/meizu/widget/RecipientStateInfo$SipState;

    const-string v1, "SIP_UNCHECK"

    invoke-direct {v0, v1, v5}, Lcom/meizu/widget/RecipientStateInfo$SipState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/widget/RecipientStateInfo$SipState;->SIP_UNCHECK:Lcom/meizu/widget/RecipientStateInfo$SipState;

    .line 19
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/meizu/widget/RecipientStateInfo$SipState;

    sget-object v1, Lcom/meizu/widget/RecipientStateInfo$SipState;->SIP_NO:Lcom/meizu/widget/RecipientStateInfo$SipState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/meizu/widget/RecipientStateInfo$SipState;->SIP_YES:Lcom/meizu/widget/RecipientStateInfo$SipState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/meizu/widget/RecipientStateInfo$SipState;->SIP_CHECKING:Lcom/meizu/widget/RecipientStateInfo$SipState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/meizu/widget/RecipientStateInfo$SipState;->SIP_UNCHECK:Lcom/meizu/widget/RecipientStateInfo$SipState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/meizu/widget/RecipientStateInfo$SipState;->$VALUES:[Lcom/meizu/widget/RecipientStateInfo$SipState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/meizu/widget/RecipientStateInfo$SipState;
    .locals 1
    .parameter "name"

    .prologue
    .line 19
    const-class v0, Lcom/meizu/widget/RecipientStateInfo$SipState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/meizu/widget/RecipientStateInfo$SipState;

    return-object v0
.end method

.method public static values()[Lcom/meizu/widget/RecipientStateInfo$SipState;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/meizu/widget/RecipientStateInfo$SipState;->$VALUES:[Lcom/meizu/widget/RecipientStateInfo$SipState;

    invoke-virtual {v0}, [Lcom/meizu/widget/RecipientStateInfo$SipState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/meizu/widget/RecipientStateInfo$SipState;

    return-object v0
.end method
