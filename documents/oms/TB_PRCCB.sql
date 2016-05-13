/*
================================================================================
��ṹ����:TB_PRCCB
��ṹ����:�۸���Ե�����׼�ۼ��ӱ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PRCCB;
drop index AK_TB_PRCCB;
drop table TB_PRCCB;
create table TB_PRCCB  (
   PRCCB_ID             INTEGER                         not null,  /*�۸���Ե�����׼�ۼ�ID*/
   PRCCB001             INTEGER                         not null,  /*�۸���Ե�����ͷID*/
   PRCCB002             INTEGER                         not null,  /*��ƷID            */
   PRCCB003             VARCHAR2(1)                     not null,  /*���ۼ۲ο���׼    */ -- update by wd �����ֶ�
   PRCCB004             NUMBER(12,2)                    not null,  /*���ۼ۲ο���      */ -- ԭ��׼�ۼ�
   PRCCB005             NUMBER(5,3)                     not null,  /*���ۼ۸�������    */ -- ��׼�ۼ۸�������
   PRCCB006             NUMBER(12,2)                    not null,  /*���ۼ�            */ -- ��׼�ۼ�
   PRCCB007             VARCHAR2(1)                     not null,  /*��ͼ۲ο���׼    */ -- update by wd �����ֶ�
   PRCCB008             NUMBER(12,2)                    not null,  /*��ͼ۲ο���      */ -- ԭ����ۼ�
   PRCCB009             NUMBER(5,3)                     not null,  /*��ͼ۸�������    */ -- ����ۼ۸�������
   PRCCB010             NUMBER(12,2)                    not null,  /*��ͼ�            */ -- ����ۼ�
   PRCCB011             VARCHAR2(1),                               /*����POS�ֶ��޸�   */ -- update by wd �����ֶ�
   PRCCB012             VARCHAR2(1),                               /*��Ч��            */
   PRCCB013             INTEGER                                    /*ԭ�����ۼ�ID      */
   PRCCB014             NUMBER(12,2),                              /*ԭ��Ʒ��ͼ�        */
   PRCCB015             NUMBER(12,2)                    not null,  /*ԭ����ۿ�          */
   PRCCB016             NUMBER(12,2)                    not null,  /*ԭ��Ʒ����ۿ�      */
   PRCCB017             NUMBER(12,2),                              /*��Ʒ��ͼ�        */
   PRCCB018             NUMBER(12,2)                    not null,  /*����ۿ�          */
   PRCCB019             NUMBER(12,2)                    not null,  /*��Ʒ����ۿ�      */
   CREATE_USER          VARCHAR2(12),                              /*������Ա          */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����      */                               
   CREATE_DATE          DATE,                                      /*��������          */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա          */
   MODI_DATE            DATE,                                      /*�޸�����          */
   FLAG                 NUMBER(1),                                 /*����״̬          */
   constraint PK_TB_PRCCB primary key (PRCCB_ID)
);
create unique index AK_TB_PRCCB on TB_PRCCB (PRCCB001,PRCCB002);
create sequence SEQ_TB_PRCCB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PRCCB to public;
grant index  on TB_PRCCB to public;
grant update on TB_PRCCB to public; 
grant delete on TB_PRCCB to public;  
grant insert on TB_PRCCB to public; 
grant select on SEQ_TB_PRCCB to public;   