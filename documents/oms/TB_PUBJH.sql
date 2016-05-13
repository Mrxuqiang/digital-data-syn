/*
================================================================================
��ṹ����:TB_PUBJH
��ṹ����:�������ʱ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PUBJH;
drop index AK_TB_PUBJH;
drop table TB_PUBJH;
create table TB_PUBJH  (
   PUBJH_ID             INTEGER                         not null,  /*��������ID         */
   PUBJH001             INTEGER                         not null,  /*����ID             */
   PUBJH002             INTEGER                         not null,  /*Ʒ��ID         */
   PUBJH003             VARCHAR2(40)                    not null,  /*չλID           */
   PUBJH004             VARCHAR2(30)                    not null,  /*��ͬID             */
   PUBJH005             INTEGER,                                   /*Ӫҵִ��ID         */ 
   PUBJH006             INTEGER,                                   /*˰��Ǽ�ID         */
   PUBJH007             INTEGER,                                   /*��Ȩ��         */ 
   PUBJH008             INTEGER,                                   /*���֤         */  
   PUBJH009             INTEGER,                                   /*�ʼ챨��         */   
   PUBJH010             INTEGER,                                   /*��Ʒ˵����         */   
   PUBJH011             INTEGER,                                   /*��Ʒ�ϸ�֤         */   
   PUBJH012             INTEGER,                                   /*3C             */   
   PUBJH013             INTEGER,                                   /*���ص�         */   
   PUBJH014             INTEGER,                                   /*������ʾ��         */   
   PUBJH015             INTEGER,                                   /*����֤��         */   
   PUBJH016             INTEGER,                                   /*��֯��������֤         */   
   PUBJH017             INTEGER,                                   /*����ID         */   
   PUBJH018             INTEGER,                                   /*����ID         */ 
   PUBJH019             INTEGER,                                   /*����ID         */ 
   PUBJH020             INTEGER,                                   /*����ID         */ 
   PUBJH021             INTEGER,                                   /*����ID         */          
   CREATE_USER          VARCHAR2(12),                              /*������Ա           */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����       */                               
   CREATE_DATE          DATE,                                      /*��������           */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա           */
   MODI_DATE            DATE,                                      /*�޸�����           */
   FLAG                 NUMBER,                                 /*����״̬           */
   constraint PK_TB_PUBJH primary key (PUBJH_ID)
);
create unique index AK_TB_PUBJH on TB_PUBJH (PUBJH001,PUBJH002);
create sequence SEQ_TB_PUBJH minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBJH to public;
grant index  on TB_PUBJH to public;
grant update on TB_PUBJH to public; 
grant delete on TB_PUBJH to public;  
grant insert on TB_PUBJH to public; 
grant select on SEQ_TB_PUBJH to public;   