.class public Lmeizu_jcifs/dcerpc/msrpc/srvsvc$TimeOfDayInfo;
.super Lmeizu_jcifs/dcerpc/ndr/NdrObject;
.source "srvsvc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmeizu_jcifs/dcerpc/msrpc/srvsvc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TimeOfDayInfo"
.end annotation


# instance fields
.field public day:I

.field public elapsedt:I

.field public hours:I

.field public hunds:I

.field public mins:I

.field public month:I

.field public msecs:I

.field public secs:I

.field public timezone:I

.field public tinterval:I

.field public weekday:I

.field public year:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 502
    invoke-direct {p0}, Lmeizu_jcifs/dcerpc/ndr/NdrObject;-><init>()V

    return-void
.end method


# virtual methods
.method public decode(Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;)V
    .locals 1
    .parameter "_src"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmeizu_jcifs/dcerpc/ndr/NdrException;
        }
    .end annotation

    .prologue
    .line 534
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 535
    invoke-virtual {p1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v0

    iput v0, p0, Lmeizu_jcifs/dcerpc/msrpc/srvsvc$TimeOfDayInfo;->elapsedt:I

    .line 536
    invoke-virtual {p1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v0

    iput v0, p0, Lmeizu_jcifs/dcerpc/msrpc/srvsvc$TimeOfDayInfo;->msecs:I

    .line 537
    invoke-virtual {p1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v0

    iput v0, p0, Lmeizu_jcifs/dcerpc/msrpc/srvsvc$TimeOfDayInfo;->hours:I

    .line 538
    invoke-virtual {p1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v0

    iput v0, p0, Lmeizu_jcifs/dcerpc/msrpc/srvsvc$TimeOfDayInfo;->mins:I

    .line 539
    invoke-virtual {p1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v0

    iput v0, p0, Lmeizu_jcifs/dcerpc/msrpc/srvsvc$TimeOfDayInfo;->secs:I

    .line 540
    invoke-virtual {p1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v0

    iput v0, p0, Lmeizu_jcifs/dcerpc/msrpc/srvsvc$TimeOfDayInfo;->hunds:I

    .line 541
    invoke-virtual {p1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v0

    iput v0, p0, Lmeizu_jcifs/dcerpc/msrpc/srvsvc$TimeOfDayInfo;->timezone:I

    .line 542
    invoke-virtual {p1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v0

    iput v0, p0, Lmeizu_jcifs/dcerpc/msrpc/srvsvc$TimeOfDayInfo;->tinterval:I

    .line 543
    invoke-virtual {p1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v0

    iput v0, p0, Lmeizu_jcifs/dcerpc/msrpc/srvsvc$TimeOfDayInfo;->day:I

    .line 544
    invoke-virtual {p1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v0

    iput v0, p0, Lmeizu_jcifs/dcerpc/msrpc/srvsvc$TimeOfDayInfo;->month:I

    .line 545
    invoke-virtual {p1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v0

    iput v0, p0, Lmeizu_jcifs/dcerpc/msrpc/srvsvc$TimeOfDayInfo;->year:I

    .line 546
    invoke-virtual {p1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v0

    iput v0, p0, Lmeizu_jcifs/dcerpc/msrpc/srvsvc$TimeOfDayInfo;->weekday:I

    .line 548
    return-void
.end method

.method public encode(Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;)V
    .locals 1
    .parameter "_dst"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmeizu_jcifs/dcerpc/ndr/NdrException;
        }
    .end annotation

    .prologue
    .line 518
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 519
    iget v0, p0, Lmeizu_jcifs/dcerpc/msrpc/srvsvc$TimeOfDayInfo;->elapsedt:I

    invoke-virtual {p1, v0}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 520
    iget v0, p0, Lmeizu_jcifs/dcerpc/msrpc/srvsvc$TimeOfDayInfo;->msecs:I

    invoke-virtual {p1, v0}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 521
    iget v0, p0, Lmeizu_jcifs/dcerpc/msrpc/srvsvc$TimeOfDayInfo;->hours:I

    invoke-virtual {p1, v0}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 522
    iget v0, p0, Lmeizu_jcifs/dcerpc/msrpc/srvsvc$TimeOfDayInfo;->mins:I

    invoke-virtual {p1, v0}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 523
    iget v0, p0, Lmeizu_jcifs/dcerpc/msrpc/srvsvc$TimeOfDayInfo;->secs:I

    invoke-virtual {p1, v0}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 524
    iget v0, p0, Lmeizu_jcifs/dcerpc/msrpc/srvsvc$TimeOfDayInfo;->hunds:I

    invoke-virtual {p1, v0}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 525
    iget v0, p0, Lmeizu_jcifs/dcerpc/msrpc/srvsvc$TimeOfDayInfo;->timezone:I

    invoke-virtual {p1, v0}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 526
    iget v0, p0, Lmeizu_jcifs/dcerpc/msrpc/srvsvc$TimeOfDayInfo;->tinterval:I

    invoke-virtual {p1, v0}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 527
    iget v0, p0, Lmeizu_jcifs/dcerpc/msrpc/srvsvc$TimeOfDayInfo;->day:I

    invoke-virtual {p1, v0}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 528
    iget v0, p0, Lmeizu_jcifs/dcerpc/msrpc/srvsvc$TimeOfDayInfo;->month:I

    invoke-virtual {p1, v0}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 529
    iget v0, p0, Lmeizu_jcifs/dcerpc/msrpc/srvsvc$TimeOfDayInfo;->year:I

    invoke-virtual {p1, v0}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 530
    iget v0, p0, Lmeizu_jcifs/dcerpc/msrpc/srvsvc$TimeOfDayInfo;->weekday:I

    invoke-virtual {p1, v0}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 532
    return-void
.end method
