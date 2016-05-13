
/*
================================================================================
��ṹ����:TB_PUBDC
��ṹ����:Ӫ����֯��ҵʵ���
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PUBDC;
drop index AK_TB_PUBDC;
drop table TB_PUBDC;
create table TB_PUBDC  (
   PUBDC_ID             INTEGER                         not null,  /*Ӫ����֯��ҵʵ���ID */
   PUBDC001             INTEGER                         not null,  /*Ӫ����֯           */
   PUBDC002             VARCHAR2(30)                    not null,  /*SAP��˾����         */
   PUBDC003             VARCHAR2(30)                    not null,  /*SAP��ҵʵ��         */
   PUBDC004             VARCHAR2(30)                            ,  /*���ⷽ����*/
   PUBDC005             VARCHAR2(60)                            ,  /*���ⷽע���ַ	*/
   PUBDC006             VARCHAR2(30)                            ,  /*���ⷽ����������	 */
   PUBDC007             VARCHAR2(30)                            ,  /*���ⷽ�˻�����			  */
   PUBDC008             VARCHAR2(30)                            ,  /*���ⷽ���������� */
   PUBDC009             VARCHAR2(30)                            ,  /*���ⷽ�������˺�					  */
   PUBDC010             VARCHAR2(30)                            ,  /*���ⷽ��ϵ������ */
   PUBDC011             VARCHAR2(60)                            ,  /*���ⷽ��ϵ��ַ */
   PUBDC012             VARCHAR2(30)                            ,  /*�̳�����             */
   PUBDC013             VARCHAR2(30)                            ,  /*���ⷽ��ϵ�绰  */ 
   PUBDC014             VARCHAR2(30)                            ,  /*�����������˻����� */ 
   PUBDC015             VARCHAR2(30)                            ,  /*��������������������                               */ 
   PUBDC016             VARCHAR2(30)                            ,  /*�����������������˻�     */ 
   PUBDC017             VARCHAR2(60)                            ,  /*������������ϵ��ַ       */
   PUBDC018             VARCHAR2(30)                            ,  /*�̳��칫�ܻ�       */
   PUBDC019             VARCHAR2(30)                             ,  /*Ԥ�㵥λ����        */   
   PUBDC020             INTEGER,                                   /*��ͬ����         */
   PUBDC026             VARCHAR2(100)                             ,  /*���ⷽ��չλ        */   
   PUBDC027             VARCHAR2(100)                             ,  /*�̳����        */   
   PUBDC023             INTEGER,                                   /*����Ӫ�����ID         */
   PUBDC024             INTEGER,                                   /*����Ӫ����Ż�(��)         */
   PUBDC028             INTEGER                                 ,  /* ����Ӫ����Ż�(��)  */
   PUBDC025             INTEGER,                                   /*��Ż����(�ӣ�          */ 
   PUBDC029             INTEGER                                 ,  /* ��Ż���𣨼��� */
   PUBDC030             NUMBER(16,2)                            ,  /* �����ֱ���(%)    */
   PUBDC032             INTEGER                                 ,  /* ��Żݹ���ѣ��ӣ�  */
   PUBDC033             INTEGER                                 ,  /* ��Żݹ���ѣ����� */
   PUBDC031             NUMBER(16,2)                            ,  /* �����Ѳ�ֱ���(%)      */
   CREATE_USER          VARCHAR2(12),                              /*������Ա           */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����       */                               
   CREATE_DATE          DATE,                                      /*��������           */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա           */
   MODI_DATE            DATE,                                      /*�޸�����           */
   FLAG                 NUMBER,                                    /*����״̬           */
   constraint PK_TB_PUBDC primary key (PUBDC_ID)
);
create unique index AK_TB_PUBDC on TB_PUBDC (PUBDC001,PUBDC002,PUBDC003);
create sequence SEQ_TB_PUBDC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBDC to public;
grant index  on TB_PUBDC to public;
grant update on TB_PUBDC to public; 
grant delete on TB_PUBDC to public;  
grant insert on TB_PUBDC to public; 
grant select on SEQ_TB_PUBDC to public;   
