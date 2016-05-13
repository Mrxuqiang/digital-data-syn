/*
================================================================================
��ṹ����:TB_BILMF
��ṹ����:��ͬ�ʱ�������������
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_BILMF;
drop index AK_TB_BILMF;
drop table TB_BILMF;
create table TB_BILMF  (
   BILMF_ID             INTEGER                         not null,  /*��ͬ�ʱ�������������ID     */
   BILMF001             INTEGER                         not null,  /*����ID               */
   BILMF002             VARCHAR2(30)                    not null,  /*�������             */
   BILMF003             DATE                            not null,  /*��������             */
   BILMF004             INTEGER                         not null,  /*Ӫ����֯ID           */
   BILMF005             VARCHAR2(255),                             /*��ע                 */
   BILMF006             INTEGER,                                   /*¼����ID             */
   BILMF007             DATE,                                      /*¼������             */
   BILMF008             INTEGER,                                   /*�����ID             */
   BILMF009             DATE,                                      /*�������             */
   BILMF010             VARCHAR2(1)                     not null,  /*���״̬             */
   CREATE_USER          VARCHAR2(12),                              /*������Ա             */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����         */                               
   CREATE_DATE          DATE,                                      /*��������             */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա             */
   MODI_DATE            DATE,                                      /*�޸�����             */
   FLAG                 NUMBER,                                 /*����״̬             */
   constraint PK_TB_BILMF primary key (BILMF_ID)
);
create unique index AK_TB_BILMF on TB_BILMF (BILMF001,BILMF002);
create sequence SEQ_TB_BILMF minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_BILMF to public;
grant index  on TB_BILMF to public;
grant update on TB_BILMF to public; 
grant delete on TB_BILMF to public;  
grant insert on TB_BILMF to public; 
grant select on SEQ_TB_BILMF to public;   