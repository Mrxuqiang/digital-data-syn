/*
20140815 add by gaoxl for �̻�Ƿ�ѱ�
*/
/*
================================================================================
��ṹ����:TB_PUBGK
��ṹ����:������ϸ��
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PUBGK;
drop index AK_TB_PUBGK;
drop table TB_PUBGK;
create table TB_PUBGK  (
   PUBGK_ID             INTEGER                         not null,  /*������ϸID         */
   PUBGK001             VARCHAR2(8)                     not null,  /*���ô���           */
   PUBGK002             VARCHAR2(30)                    not null,  /*��������           */
   PUBGK003             INTEGER                         not null,  /*���÷���ID         */
   PUBGK004             INTEGER,                                   /*��ƿ�ĿID         */
   PUBGK005             VARCHAR2(1)                     not null,  /*�ʿ�����           */
   PUBGK006             VARCHAR2(1)                     not null,  /*Ȩ������           */
   PUBGK007             INTEGER,                                   /*�տ������춯��ID   */
   PUBGK008             INTEGER,                                   /*�˿������춯��ID   */
   PUBGK009             VARCHAR2(1),                               /*�Ƿ񿪷�Ʊ         */
   PUBGK010             VARCHAR2(2)                     not null,  /*��������           */
   PUBGK011             VARCHAR2(1)                     not null,  /*�����Ӧ��         */  
   PUBGK012             VARCHAR2(1)                     not null,  /*�Ƿ�̶��˿�       */    
   PUBGK013             INTEGER,                                   /*Ӧ�յ���           */ add by ouwx 2012/02/21
   PUBGK014             VARCHAR(2),                                /*�ֿ�˳��           */ 20130125 add by shizhan
   PUBGK015             VARCHAR(2),                                /*Ƿ�ѱ���Ŀ         */ 
   CREATE_USER          VARCHAR2(12),                              /*������Ա           */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����       */ 
   CREATE_DATE          DATE,                                      /*��������           */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա           */
   MODI_DATE            DATE,                                      /*�޸�����           */
   FLAG                 NUMBER,                                 /*����״̬           */
   constraint PK_TB_PUBGK primary key (PUBGK_ID)
);
create unique index AK_TB_PUBGK on TB_PUBGK (PUBGK001);
create sequence SEQ_TB_PUBGK minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBGK to public;
grant index  on TB_PUBGK to public;
grant update on TB_PUBGK to public; 
grant delete on TB_PUBGK to public;  
grant insert on TB_PUBGK to public; 
grant select on SEQ_TB_PUBGK to public;   