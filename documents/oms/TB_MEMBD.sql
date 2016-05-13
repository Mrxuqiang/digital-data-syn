/*
================================================================================
��ṹ����:TB_MEMBD
��ṹ����:��Ա����������
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_MEMBD;
drop index AK_TB_MEMBD;
drop table TB_MEMBD;
create table TB_MEMBD  (
   MEMBD_ID             INTEGER                         not null,  /*��Ա������ID       */
   MEMBD001             INTEGER                         not null,  /*����ID             */
   MEMBD002             VARCHAR2(30)                    not null,  /*��������           */
   MEMBD003             DATE                            not null,  /*��������           */
   MEMBD004             INTEGER                         not null,  /*����Ӫ����֯ID     */
   MEMBD005             INTEGER                         not null,  /*��������ID         */
   MEMBD006             INTEGER                         not null,  /*������ԱID         */
   MEMBD008             INTEGER                         not null,  /*��ԱID             */
   MEMBD009             INTEGER                         not null,  /*����ID             */
   MEMBD010             INTEGER                         not null,  /*��������ID         */
   MEMBD011             NUMBER(30)                      not null,  /*�»�Ա����         */
   MEMBD012             DATE                            not null,  /*��Ч����           */
   MEMBD013             DATE                            not null,  /*��Чֹ��           */
   MEMBD007             DATE                            not null,  /*��������           */
   MEMBD014             VARCHAR2(255),                             /*��ע               */
   MEMBD015             INTEGER,                                   /*¼����ID           */
   MEMBD016             DATE,                                      /*¼������           */
   MEMBD017             INTEGER,                                   /*�����ID           */
   MEMBD018             DATE,                                      /*�������           */
   MEMBD019             VARCHAR2(1)                     not null,  /*���״̬           */
   MEMBD020             VARCHAR2(1),                               /*�Ƿ�ǩ��           */
   MEMBD021             VARCHAR2(30),                              /*ǩ�˵���           */
   MEMBD022             VARCHAR2(1),                               /*ǩ����           */
   CREATE_USER          VARCHAR2(12),                              /*������Ա           */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����       */                               
   CREATE_DATE          DATE,                                      /*��������           */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա           */
   MODI_DATE            DATE,                                      /*�޸�����           */
   FLAG                 NUMBER(1),                                 /*����״̬           */
   constraint PK_TB_MEMBD primary key (MEMBD_ID)
);
create unique index AK_TB_MEMBD on TB_MEMBD (MEMBD002,MEMBD004);
create sequence SEQ_TB_MEMBD minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_MEMBD to public;
grant index  on TB_MEMBD to public;
grant update on TB_MEMBD to public; 
grant delete on TB_MEMBD to public;  
grant insert on TB_MEMBD to public; 
grant select on SEQ_TB_MEMBD to public;   