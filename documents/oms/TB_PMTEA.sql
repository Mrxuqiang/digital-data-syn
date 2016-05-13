/*
================================================================================
��ṹ����:TB_PMTEA
��ṹ����:�����ۿ۴���������
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PMTEA;
drop index AK_TB_PMTEA;
drop table TB_PMTEA;
create table TB_PMTEA  (
   PMTEA_ID             INTEGER                         not null,  /*�����ۿ۵�ID      */
   PMTEA001             INTEGER                         not null,  /*����ID            */
   PMTEA002             VARCHAR2(30)                    not null,  /*��������          */
   PMTEA003             DATE                            not null,  /*��������          */
   PMTEA004             INTEGER                         not null,  /*����Ӫ����֯      */
   PMTEA005             INTEGER                         not null,  /*������ID        */
   PMTEA006             INTEGER                         not null,  /*������ԱID        */
   PMTEA007             INTEGER                         not null,  /*��������ID        */
   PMTEA008             VARCHAR2(255),                             /*��������          */
   PMTEA009             VARCHAR2(1),                               /*�Ƿ��ܻ���        */
   PMTEA010             VARCHAR2(1),                               /*�����ܷ�ͬʱ�����ۿ�  */
   PMTEA011             VARCHAR2(2),                               /*�ۿ۷�ʽ01.��һ�ۿ�02.�ֶ��ۿ�03.�����ۿ�04.�ֶ������ۿ� 05.�ֶ������ۼ��ۿ� 06.���ۿ�         */
   PMTEA012             VARCHAR2(2),                               /*�����������      */
   PMTEA013             NUMBER(12,2),                              /*�������          */
   PMTEA014             VARCHAR2(1),                               /*β��μӴ���    */
   PMTEA015             VARCHAR2(2),                               /*��̯��ʽ          */
   PMTEA016             VARCHAR2(2),                               /*��̯���          */
   PMTEA017             INTEGER,                                   /*¼����ID          */
   PMTEA018             DATE,                                      /*¼������          */
   PMTEA019             INTEGER,                                   /*�����ID          */
   PMTEA020             DATE,                                      /*�������          */
   PMTEA021             VARCHAR2(1)                     not null,  /*���״̬          */
   PMTEA022             VARCHAR2(1),                               /*�Ƿ�ǩ��          */
   PMTEA023             VARCHAR2(30),                              /*ǩ�˵���          */
   PMTEA024             VARCHAR2(1),                               /*ǩ����            */
   PMTEA025             VARCHAR2(2)                     not null,  /*��������          */
   PMTEA026             VARCHAR2(1),                               /*ȫ��������      */
   PMTEA027             VARCHAR2(1),                               /*�����������    */
   PMTEA028             VARCHAR2(255),                             /*��ע          */
   PMTEA029             VARCHAR2(1),                               /*��������          */
   PMTEA030             VARCHAR2(1),                               /*��̯���          */
   PMTEA031             NUMBER(12,2),                               /*����������          */
   PMTEA032             NUMBER(12,2),                               /*��˾�е�����          */
   CREATE_USER          VARCHAR2(12),                              /*������Ա          */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����      */                               
   CREATE_DATE          DATE,                                      /*��������          */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա          */
   MODI_DATE            DATE,                                      /*�޸�����          */
   FLAG                 NUMBER(1),                                 /*����״̬          */
   constraint PK_TB_PMTEA primary key (PMTEA_ID)
);
create unique index AK_TB_PMTEA on TB_PMTEA (PMTEA002);
create sequence SEQ_TB_PMTEA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTEA to public;
grant index  on TB_PMTEA to public;
grant update on TB_PMTEA to public; 
grant delete on TB_PMTEA to public;  
grant insert on TB_PMTEA to public; 
grant select on SEQ_TB_PMTEA to public;   