.class public Lcom/meizu/widget/MzContactHeaderWidget$ContactInfo;
.super Ljava/lang/Object;
.source "MzContactHeaderWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/widget/MzContactHeaderWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContactInfo"
.end annotation


# instance fields
.field private mAddress:Ljava/lang/String;

.field private mContactId:J

.field private mDisplayName:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "contactId"
    .parameter "displayName"
    .parameter "address"

    .prologue
    .line 1259
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1260
    iput-wide p1, p0, Lcom/meizu/widget/MzContactHeaderWidget$ContactInfo;->mContactId:J

    .line 1261
    iput-object p3, p0, Lcom/meizu/widget/MzContactHeaderWidget$ContactInfo;->mDisplayName:Ljava/lang/String;

    .line 1262
    iput-object p4, p0, Lcom/meizu/widget/MzContactHeaderWidget$ContactInfo;->mAddress:Ljava/lang/String;

    .line 1263
    return-void
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1274
    iget-object v0, p0, Lcom/meizu/widget/MzContactHeaderWidget$ContactInfo;->mAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getContactId()J
    .locals 2

    .prologue
    .line 1266
    iget-wide v0, p0, Lcom/meizu/widget/MzContactHeaderWidget$ContactInfo;->mContactId:J

    return-wide v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1270
    iget-object v0, p0, Lcom/meizu/widget/MzContactHeaderWidget$ContactInfo;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method
